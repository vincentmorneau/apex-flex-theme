function render_template_documentation (
    p_region in apex_plugin.t_region
    , p_plugin in apex_plugin.t_plugin
    , p_is_printer_friendly in boolean )
return apex_plugin.t_region_render_result
as
    subtype plugin_attr is varchar2(32767);

    -- Variables
    l_result apex_plugin.t_region_render_result;
    l_html varchar2(32767);

    -- Component attributes
    l_component_type         plugin_attr := p_region.attribute_01;
    l_documentation_type     plugin_attr := p_region.attribute_02;
    l_component_id           plugin_attr := p_region.attribute_03;
    l_displayed_info         plugin_attr := p_region.attribute_04;
    l_template_option_group  plugin_attr := p_region.attribute_05;
    l_template_option_single plugin_attr := p_region.attribute_06;
    l_include_globals        plugin_attr := p_region.attribute_07;

    -- cursors
    -- c_template_option_groups
    cursor  c_template_option_groups is
    select  ato.display_name
            , ato.help_text
    from    apex_appl_template_opt_groups atog
    join    apex_appl_template_options ato
    on      ato.application_id  = atog.application_id
    and     ato.theme_number    = atog.theme_number
    and     ato.group_id        = atog.template_opt_group_id
    where   atog.application_id = :APP_ID
    and     atog.template_types = l_component_type
    and     atog.name           = l_template_option_group;

    -- c_template_option_single
    cursor  c_template_option_single is
    select  ato.display_name
            , ato.help_text
    from    apex_appl_template_options ato
    where   ato.application_id        = :APP_ID
    -- and     ato.virtual_template_type = l_component_type -- VMORNEAU is it necessary?
    and     ato.name                  = l_template_option_single;

    -- c_button_all_template_options
    cursor  c_button_all_template_options is
    select  atog.display_name group_name
            , ato.display_name
            , ato.help_text
    from    apex_application_page_buttons apb
    join    apex_appl_template_options ato
    on      ato.application_id               = apb.application_id
    and     ato.button_template_id           = apb.button_template_id
    left join apex_appl_template_opt_groups atog
    on      atog.application_id       = ato.application_id
    and     atog.theme_number         = ato.theme_number
    and     atog.template_opt_group_id= ato.group_id
    where   apb.application_id               = :APP_ID
    and     apb.page_id                      = :APP_PAGE_ID
    and     ltrim(apb.button_static_id, '#') = ltrim(l_component_id, '#')
    union
    select  atog.display_name group_name
            , ato.display_name
            , ato.help_text
    from    apex_appl_template_options ato
    left join apex_appl_template_opt_groups atog
    on      atog.application_id       = ato.application_id
    and     atog.theme_number         = ato.theme_number
    and     atog.template_opt_group_id= ato.group_id
    where   ato.application_id        = :APP_ID
    and     ato.virtual_template_type = l_component_type
    and     l_include_globals         = 'Y';

    -- c_button_attributes
    cursor  c_button_attributes is
    select  apb.*
    from    apex_application_page_buttons apb
    where   apb.application_id               = :APP_ID
    and     apb.page_id                      = :APP_PAGE_ID
    and     ltrim(apb.button_static_id, '#') = ltrim(l_component_id, '#');

    -- c_region_all_template_options
    cursor  c_region_all_template_options is
    select  atog.display_name group_name
            , ato.display_name
            , ato.help_text
    from    apex_application_page_regions apr
    join    apex_appl_template_options ato
    on      ato.application_id        = apr.application_id
    and     ato.region_template_id    = apr.template_id
    left join apex_appl_template_opt_groups atog
    on      atog.application_id       = ato.application_id
    and     atog.theme_number         = ato.theme_number
    and     atog.template_opt_group_id= ato.group_id
    where   apr.application_id        = :APP_ID
    and     apr.page_id               = :APP_PAGE_ID
    and     ltrim(apr.static_id, '#') = ltrim(l_component_id, '#')
    union
    select  atog.display_name group_name
            , ato.display_name
            , ato.help_text
    from    apex_appl_template_options ato
    left join apex_appl_template_opt_groups atog
    on      atog.application_id       = ato.application_id
    and     atog.theme_number         = ato.theme_number
    and     atog.template_opt_group_id= ato.group_id
    where   ato.application_id        = :APP_ID
    and     ato.virtual_template_type = l_component_type
    and     l_include_globals         = 'Y';

    -- c_region_attributes
    cursor  c_region_attributes is
    select  apr.*
    from    apex_application_page_regions apr
    where   apr.application_id        = :APP_ID
    and     apr.page_id               = :APP_PAGE_ID
    and     ltrim(apr.static_id, '#') = ltrim(l_component_id, '#');

    -- helper functions
    function open_table (
        p_th1 in varchar2
        , p_th2 in varchar2
        , p_th3 in varchar2 default '-1'
    ) return varchar2 is
    begin
        return '<table class="table table-striped table-sm">'
            || '<thead class="thead-inverse">'
            || '<tr>'
            || '<th class="text-nowrap">' || p_th1 || '</th>'
            || '<th class="text-nowrap">' || p_th2 || '</th>'
            || case when p_th3 = '-1' then null else '<th class="text-nowrap">' || p_th3 || '</th>' end
            || '</tr>'
            || '</thead>'
            || '<tbody>';
    end open_table;

    function set_table_content (
        p_td1 in varchar2
        , p_td2 in varchar2
        , p_td3 in varchar2 default '-1'
        , p_value_required in boolean default false
    ) return varchar2 is
    begin
        if p_value_required and p_td2 is null then
            return null;
        else
            return '<tr>'
                || '<td>' || p_td1 || '</td>'
                || '<td>' || p_td2 || '</td>'
                || case when p_td3 = '-1' then null else '<td>' || p_td3 || '</td>' end
                || '</tr>';
        end if;
    end set_table_content;

    function close_table
    return varchar2 is
    begin
        return '</tbody>'
            || '</table>';
    end close_table;
begin
    -- debug information will be included
    if apex_application.g_debug then
        apex_plugin_util.debug_region (
            p_plugin => p_plugin,
            p_region => p_region,
            p_is_printer_friendly => p_is_printer_friendly);
    end if;

    case l_documentation_type
        when 'GROUP' then
            l_html := l_html || open_table (
                p_th1 => 'Template Option (<code>' || l_template_option_group || '</code>)'
                , p_th2 => 'Comment'
            );

            for i in c_template_option_groups loop
                l_html := l_html || set_table_content (
                    p_td1 => i.display_name
                    , p_td2 => i.help_text
                );
            end loop;

            l_html := l_html || close_table;
        when 'SINGLE' then
            l_html := l_html || open_table (
                p_th1 => 'Template Option'
                , p_th2 => 'Comment'
            );

            for i in c_template_option_single loop
                l_html := l_html || set_table_content (
                    p_td1 => i.display_name
                    , p_td2 => i.help_text
                );
            end loop;

            l_html := l_html || close_table;
        when 'COMPONENT' then
            case l_component_type
                when 'BUTTON' then
                    case
                        when l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Group'
                                , p_th2 => 'Template Option'
                                , p_th3 => 'Comment'
                            );

                            for i in c_button_all_template_options loop
                                l_html := l_html || set_table_content (
                                    p_td1 => i.group_name
                                    , p_td2 => i.display_name
                                    , p_td3 => i.help_text
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%GRID_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Grid Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_button_attributes loop
                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid'
                                    , p_td2 => i.new_grid
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid Row'
                                    , p_td2 => i.new_grid_row
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid Column'
                                    , p_td2 => i.new_grid_column
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column'
                                    , p_td2 => i.grid_column
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column Span'
                                    , p_td2 => i.grid_column_span
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column CSS Classes'
                                    , p_td2 => i.grid_column_css_classes
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column Attributes'
                                    , p_td2 => i.grid_column_attributes
                                    , p_value_required => true
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Custom Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_button_attributes loop
                                l_html := l_html || set_table_content (
                                    p_td1 => 'Template'
                                    , p_td2 => i.button_template
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Image Name'
                                    , p_td2 => i.image_name
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Alignment'
                                    , p_td2 => i.alignment
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Image Attributes'
                                    , p_td2 => i.image_attributes
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Button CSS Classes'
                                    , p_td2 => i.button_css_classes
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Icon CSS Classses'
                                    , p_td2 => i.icon_css_classes
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Button Attributes'
                                    , p_td2 => i.button_attributes
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Pre Element Text'
                                    , p_td2 => i.pre_element_text
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Post Element Text'
                                    , p_td2 => i.post_element_text
                                    , p_value_required => true
                                );
                            end loop;

                            l_html := l_html || close_table;
                    end case;
                when 'BREADCRUMB' then
                    null;
                when 'LABEL' then
                    null;
                when 'LIST' then
                    null;
                when 'PAGE' then
                    null;
                when 'REGION' then
                    case
                        when l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Group'
                                , p_th2 => 'Template Option'
                                , p_th3 => 'Comment'
                            );

                            for i in c_region_all_template_options loop
                                l_html := l_html || set_table_content (
                                    p_td1 => i.group_name
                                    , p_td2 => i.display_name
                                    , p_td3 => i.help_text
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%GRID_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Grid Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid'
                                    , p_td2 => i.new_grid
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid Row'
                                    , p_td2 => i.new_grid_row
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid Column'
                                    , p_td2 => i.new_grid_column
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column'
                                    , p_td2 => i.grid_column
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column Span'
                                    , p_td2 => i.grid_column_span
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column CSS Classes'
                                    , p_td2 => i.grid_column_css_classes
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column Attributes'
                                    , p_td2 => i.grid_column_attributes
                                    , p_value_required => true
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Custom Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || set_table_content (
                                    p_td1 => 'Template'
                                    , p_td2 => i.template
                                    , p_value_required => true
                                );
                                l_html := l_html || set_table_content (
                                    p_td1 => 'Display Region Selector'
                                    , p_td2 => i.display_region_selector
                                    , p_value_required => true
                                );
                                l_html := l_html || set_table_content (
                                    p_td1 => 'Region CSS Classes'
                                    , p_td2 => i.region_css_classes
                                    , p_value_required => true
                                );
                                l_html := l_html || set_table_content (
                                    p_td1 => 'Icon CSS Classes'
                                    , p_td2 => i.icon_css_classes
                                    , p_value_required => true
                                );
                                l_html := l_html || set_table_content (
                                    p_td1 => 'Region Sub CSS Classes'
                                    , p_td2 => i.region_sub_css_classes
                                    , p_value_required => true
                                );
                                l_html := l_html || set_table_content (
                                    p_td1 => 'Region Attributes Substitution'
                                    , p_td2 => i.region_attributes_substitution
                                    , p_value_required => true
                                );
                            end loop;

                            l_html := l_html || close_table;
                    end case;
                when 'REPORT' then
                    case
                        when l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Group'
                                , p_th2 => 'Template Option'
                                , p_th3 => 'Comment'
                            );

                            for i in c_region_all_template_options loop
                                l_html := l_html || set_table_content (
                                    p_td1 => i.group_name
                                    , p_td2 => i.display_name
                                    , p_td3 => i.help_text
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%GRID_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Grid Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid'
                                    , p_td2 => i.new_grid
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid Row'
                                    , p_td2 => i.new_grid_row
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'New Grid Column'
                                    , p_td2 => i.new_grid_column
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column'
                                    , p_td2 => i.grid_column
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column Span'
                                    , p_td2 => i.grid_column_span
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column CSS Classes'
                                    , p_td2 => i.grid_column_css_classes
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Grid Column Attributes'
                                    , p_td2 => i.grid_column_attributes
                                    , p_value_required => true
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Custom Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || set_table_content (
                                    p_td1 => 'Template'
                                    , p_td2 => i.report_template
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Report column headings'
                                    , p_td2 => i.report_column_headings
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Maximum rows to query'
                                    , p_td2 => i.maximum_rows_to_query
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Pagination scheme'
                                    , p_td2 => i.pagination_scheme
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Pagination display position'
                                    , p_td2 => i.pagination_display_position
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Number of rows item'
                                    , p_td2 => i.number_of_rows_item
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Maximum row count'
                                    , p_td2 => i.maximum_row_count
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Report null values as'
                                    , p_td2 => i.report_null_values_as
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Breaks'
                                    , p_td2 => i.breaks
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Strip HTML'
                                    , p_td2 => i.strip_html
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Max dynamic report cols'
                                    , p_td2 => i.max_dynamic_report_cols
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Fixed header'
                                    , p_td2 => i.fixed_header
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Fixed header max height'
                                    , p_td2 => i.fixed_header_max_height
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Enable csv output'
                                    , p_td2 => i.enable_csv_output
                                    , p_value_required => true
                                );

                                l_html := l_html || set_table_content (
                                    p_td1 => 'Repeat heading break format'
                                    , p_td2 => i.repeat_heading_break_format
                                    , p_value_required => true
                                );
                            end loop;

                            l_html := l_html || close_table;
                    end case;
            end case;
    end case;

    htp.prn(l_html);

    return l_result;
end render_template_documentation;
