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

    -- c_list_all_template_options
    cursor  c_list_all_template_options is
    select  atog.display_name group_name
            , ato.display_name
            , ato.help_text
    from    apex_application_page_regions apr
    join    apex_application_temp_list atl
    on      atl.application_id         = apr.application_id
    and     atl.list_template_id       = apr.list_template_override_id
    join    apex_appl_template_options ato
    on      ato.application_id         = apr.application_id
    and     ato.list_template_id       = apr.template_id
    left join apex_appl_template_opt_groups atog
    on      atog.application_id        = ato.application_id
    and     atog.theme_number          = ato.theme_number
    and     atog.template_opt_group_id = ato.group_id
    where   apr.application_id         = :APP_ID
    and     apr.page_id                = :APP_PAGE_ID
    and     ltrim(apr.static_id, '#')  = ltrim(l_component_id, '#')
    union
    select  atog.display_name group_name
            , ato.display_name
            , ato.help_text
    from    apex_appl_template_options ato
    left join apex_appl_template_opt_groups atog
    on      atog.application_id        = ato.application_id
    and     atog.theme_number          = ato.theme_number
    and     atog.template_opt_group_id = ato.group_id
    where   ato.application_id         = :APP_ID
    and     ato.virtual_template_type  = l_component_type
    and     l_include_globals          = 'Y';

    -- c_list_attributes
    cursor  c_list_attributes is
    select  atl.*
    from    apex_application_page_regions apr
    join    apex_application_temp_list atl
    on      atl.application_id         = apr.application_id
    and     atl.list_template_id       = apr.list_template_override_id
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

    function print_row (
        p_td1 in varchar2
        , p_td2 in varchar2
        , p_td3 in varchar2 default '-1'
        , p_td2_required in boolean default true
    ) return varchar2 is
    begin
        if p_td2_required and p_td2 is null then
            return null;
        else
            return '<tr>'
                || '<td>' || p_td1 || '</td>'
                || '<td>' || p_td2 || '</td>'
                || case when p_td3 = '-1' then null else '<td>' || p_td3 || '</td>' end
                || '</tr>';
        end if;
    end print_row;

    function close_table
    return varchar2 is
    begin
        return '</tbody>'
            || '</table>';
    end close_table;

    function print_grid_attributes (
        p_new_grid in varchar2
        , p_new_grid_row in varchar2
        , p_new_grid_column in varchar2
        , p_grid_column in varchar2
        , p_grid_column_span in varchar2
        , p_grid_column_css_classes in varchar2
        , p_grid_column_attributes in varchar2
    )
    return varchar2 is
    begin
        return print_row (
            p_td1 => 'New Grid'
            , p_td2 => p_new_grid
        ) || print_row (
            p_td1 => 'New Grid Row'
            , p_td2 => p_new_grid_row
        ) || print_row (
            p_td1 => 'New Grid Column'
            , p_td2 => p_new_grid_column
        ) || print_row (
            p_td1 => 'Grid Column'
            , p_td2 => p_grid_column
        ) || print_row (
            p_td1 => 'Grid Column Span'
            , p_td2 => p_grid_column_span
        ) || print_row (
            p_td1 => 'Grid Column CSS Classes'
            , p_td2 => p_grid_column_css_classes
        ) || print_row (
            p_td1 => 'Grid Column Attributes'
            , p_td2 => p_grid_column_attributes
        );
    end;
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
                l_html := l_html || print_row (
                    p_td1 => i.display_name
                    , p_td2 => i.help_text
                    , p_td2_required => false
                );
            end loop;

            l_html := l_html || close_table;
        when 'SINGLE' then
            l_html := l_html || open_table (
                p_th1 => 'Template Option'
                , p_th2 => 'Comment'
            );

            for i in c_template_option_single loop
                l_html := l_html || print_row (
                    p_td1 => i.display_name
                    , p_td2 => i.help_text
                    , p_td2_required => false
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
                                l_html := l_html || print_row (
                                    p_td1 => i.group_name
                                    , p_td2 => i.display_name
                                    , p_td3 => i.help_text
                                    , p_td2_required => false
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%GRID_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Grid Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_button_attributes loop
                                l_html := l_html || print_grid_attributes (
                                    p_new_grid                  => i.new_grid
                                    , p_new_grid_row            => i.new_grid_row
                                    , p_new_grid_column         => i.new_grid_column
                                    , p_grid_column             => i.grid_column
                                    , p_grid_column_span        => i.grid_column_span
                                    , p_grid_column_css_classes => i.grid_column_css_classes
                                    , p_grid_column_attributes  => i.grid_column_attributes
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Custom Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_button_attributes loop
                                l_html := l_html || print_row (
                                    p_td1 => 'Template'
                                    , p_td2 => i.button_template
                                ) || print_row (
                                    p_td1 => 'Image Name'
                                    , p_td2 => i.image_name
                                ) || print_row (
                                    p_td1 => 'Alignment'
                                    , p_td2 => i.alignment
                                ) || print_row (
                                    p_td1 => 'Image Attributes'
                                    , p_td2 => i.image_attributes
                                ) || print_row (
                                    p_td1 => 'Button CSS Classes'
                                    , p_td2 => i.button_css_classes
                                ) || print_row (
                                    p_td1 => 'Icon CSS Classses'
                                    , p_td2 => i.icon_css_classes
                                ) || print_row (
                                    p_td1 => 'Button Attributes'
                                    , p_td2 => i.button_attributes
                                ) || print_row (
                                    p_td1 => 'Pre Element Text'
                                    , p_td2 => i.pre_element_text
                                ) || print_row (
                                    p_td1 => 'Post Element Text'
                                    , p_td2 => i.post_element_text
                                );
                            end loop;

                            l_html := l_html || close_table;
                    end case;
                when 'BREADCRUMB' then
                    null;
                when 'LABEL' then
                    null;
                when 'LIST' then
                    case
                        when l_displayed_info like '%ALL_TEMPLATE_OPTIONS%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Group'
                                , p_th2 => 'Template Option'
                                , p_th3 => 'Comment'
                            );

                            for i in c_list_all_template_options loop
                                l_html := l_html || print_row (
                                    p_td1 => i.group_name
                                    , p_td2 => i.display_name
                                    , p_td3 => i.help_text
                                    , p_td2_required => false
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%GRID_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Grid Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || print_grid_attributes (
                                    p_new_grid                  => i.new_grid
                                    , p_new_grid_row            => i.new_grid_row
                                    , p_new_grid_column         => i.new_grid_column
                                    , p_grid_column             => i.grid_column
                                    , p_grid_column_span        => i.grid_column_span
                                    , p_grid_column_css_classes => i.grid_column_css_classes
                                    , p_grid_column_attributes  => i.grid_column_attributes
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Custom Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_list_attributes loop
                                l_html := l_html || print_row (
                                    p_td1 => 'A01 Label'
                                    , p_td2 => i.a01_label
                                ) || print_row (
                                    p_td1 => 'A02 Label'
                                    , p_td2 => i.a02_label
                                ) || print_row (
                                    p_td1 => 'A03 Label'
                                    , p_td2 => i.a03_label
                                ) || print_row (
                                    p_td1 => 'A04 Label'
                                    , p_td2 => i.a04_label
                                ) || print_row (
                                    p_td1 => 'A05 Label'
                                    , p_td2 => i.a05_label
                                ) || print_row (
                                    p_td1 => 'A06 Label'
                                    , p_td2 => i.a06_label
                                ) || print_row (
                                    p_td1 => 'A07 Label'
                                    , p_td2 => i.a07_label
                                ) || print_row (
                                    p_td1 => 'A08 Label'
                                    , p_td2 => i.a08_label
                                ) || print_row (
                                    p_td1 => 'A09 Label'
                                    , p_td2 => i.a09_label
                                ) || print_row (
                                    p_td1 => 'A10 Label'
                                    , p_td2 => i.a10_label
                                );
                            end loop;

                            l_html := l_html || close_table;
                    end case;
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
                                l_html := l_html || print_row (
                                    p_td1 => i.group_name
                                    , p_td2 => i.display_name
                                    , p_td3 => i.help_text
                                    , p_td2_required => false
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%GRID_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Grid Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || print_grid_attributes (
                                    p_new_grid                  => i.new_grid
                                    , p_new_grid_row            => i.new_grid_row
                                    , p_new_grid_column         => i.new_grid_column
                                    , p_grid_column             => i.grid_column
                                    , p_grid_column_span        => i.grid_column_span
                                    , p_grid_column_css_classes => i.grid_column_css_classes
                                    , p_grid_column_attributes  => i.grid_column_attributes
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Custom Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || print_row (
                                    p_td1 => 'Template'
                                    , p_td2 => i.template
                                ) || print_row (
                                    p_td1 => 'Display Region Selector'
                                    , p_td2 => i.display_region_selector
                                ) || print_row (
                                    p_td1 => 'Region CSS Classes'
                                    , p_td2 => i.region_css_classes
                                ) || print_row (
                                    p_td1 => 'Icon CSS Classes'
                                    , p_td2 => i.icon_css_classes
                                ) || print_row (
                                    p_td1 => 'Region Sub CSS Classes'
                                    , p_td2 => i.region_sub_css_classes
                                ) || print_row (
                                    p_td1 => 'Region Attributes Substitution'
                                    , p_td2 => i.region_attributes_substitution
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
                                l_html := l_html || print_row (
                                    p_td1 => i.group_name
                                    , p_td2 => i.display_name
                                    , p_td3 => i.help_text
                                    , p_td2_required => false
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%GRID_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Grid Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || print_grid_attributes (
                                    p_new_grid                  => i.new_grid
                                    , p_new_grid_row            => i.new_grid_row
                                    , p_new_grid_column         => i.new_grid_column
                                    , p_grid_column             => i.grid_column
                                    , p_grid_column_span        => i.grid_column_span
                                    , p_grid_column_css_classes => i.grid_column_css_classes
                                    , p_grid_column_attributes  => i.grid_column_attributes
                                );
                            end loop;

                            l_html := l_html || close_table;
                        when l_displayed_info like '%CUSTOM_ATTRIBUTES%' then
                            l_html := l_html || open_table (
                                p_th1 => 'Custom Attribute'
                                , p_th2 => 'Value'
                            );

                            for i in c_region_attributes loop
                                l_html := l_html || print_row (
                                    p_td1 => 'Template'
                                    , p_td2 => i.report_template
                                ) || print_row (
                                    p_td1 => 'Report column headings'
                                    , p_td2 => i.report_column_headings
                                ) || print_row (
                                    p_td1 => 'Maximum rows to query'
                                    , p_td2 => i.maximum_rows_to_query
                                ) || print_row (
                                    p_td1 => 'Pagination scheme'
                                    , p_td2 => i.pagination_scheme
                                ) || print_row (
                                    p_td1 => 'Pagination display position'
                                    , p_td2 => i.pagination_display_position
                                ) || print_row (
                                    p_td1 => 'Number of rows item'
                                    , p_td2 => i.number_of_rows_item
                                ) || print_row (
                                    p_td1 => 'Maximum row count'
                                    , p_td2 => i.maximum_row_count
                                ) || print_row (
                                    p_td1 => 'Report null values as'
                                    , p_td2 => i.report_null_values_as
                                ) || print_row (
                                    p_td1 => 'Breaks'
                                    , p_td2 => i.breaks
                                ) || print_row (
                                    p_td1 => 'Strip HTML'
                                    , p_td2 => i.strip_html
                                ) || print_row (
                                    p_td1 => 'Max dynamic report cols'
                                    , p_td2 => i.max_dynamic_report_cols
                                ) || print_row (
                                    p_td1 => 'Fixed header'
                                    , p_td2 => i.fixed_header
                                ) || print_row (
                                    p_td1 => 'Fixed header max height'
                                    , p_td2 => i.fixed_header_max_height
                                ) || print_row (
                                    p_td1 => 'Enable csv output'
                                    , p_td2 => i.enable_csv_output
                                ) || print_row (
                                    p_td1 => 'Repeat heading break format'
                                    , p_td2 => i.repeat_heading_break_format
                                );
                            end loop;

                            l_html := l_html || close_table;
                    end case;
            end case;
    end case;

    htp.prn(l_html);

    return l_result;
end render_template_documentation;
