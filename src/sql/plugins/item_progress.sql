function render_ab_progress (
    p_item in apex_plugin.t_page_item
    , p_plugin in apex_plugin.t_plugin
    , p_value in varchar2
    , p_is_readonly in boolean
    , p_is_printer_friendly in boolean )
return apex_plugin.t_page_item_render_result
is
    subtype plugin_attr is varchar2(32767);

    -- variables
    l_result apex_plugin.t_page_item_render_result;
    l_html varchar2(32767);

    -- attributes
    l_style plugin_attr := p_item.attribute_01;
    l_striped plugin_attr := p_item.attribute_02;
    l_animated plugin_attr := p_item.attribute_03;
begin
    -- handling debug and read only
    if apex_application.g_debug then
        apex_plugin_util.debug_page_item (
            p_plugin => p_plugin
            , p_page_item => p_item
            , p_value => p_value
            , p_is_readonly => p_is_readonly
            , p_is_printer_friendly => p_is_printer_friendly
        );
    end if;

    -- translating Y/N attribute
    if l_striped = 'Y' then
        l_striped := 'progress-striped';
    else
        l_striped := null;
    end if;

    -- translating Y/N attribute
    if l_animated = 'Y' then
        l_animated := 'progress-animated';
    else
        l_animated := null;
    end if;

    -- build html element
    l_html := '<progress id=":id" name=":name" class="progress :style :striped :animated" value=":value" max="100">:value%</progress>';

    -- replace values
    l_html := replace(l_html, ':id', p_item.name);
    l_html := replace(l_html, ':name', apex_plugin.get_input_name_for_page_item(false));
    l_html := replace(l_html, ':style', l_style);
    l_html := replace(l_html, ':striped', l_striped);
    l_html := replace(l_html, ':animated', l_animated);
    l_html := replace(l_html, ':value', p_value);

    -- print element
    htp.prn(l_html);

    return l_result;
end render_ab_progress;
