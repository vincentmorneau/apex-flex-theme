function render_application_settings (
    p_region in apex_plugin.t_region
    ,p_plugin in apex_plugin.t_plugin
    ,p_is_printer_friendly in boolean )
return apex_plugin.t_region_render_result
as
    subtype plugin_attr is varchar2(32767);

    -- variables
    l_result apex_plugin.t_region_render_result;
    l_html varchar2(32767);

    -- attributes
    l_tooltip plugin_attr := p_plugin.attribute_01;
    l_popover plugin_attr := p_plugin.attribute_02;
begin
    -- handling debug and read only
    if apex_application.g_debug then
        apex_plugin_util.debug_region (
            p_plugin => p_plugin
            , p_region => p_region
            , p_is_printer_friendly => p_is_printer_friendly
        );
    end if;

    -- build html element
    l_html := '<script type="text/javascript">var appSettings = {"tooltip"::tooltip,"popover"::popover};</script>';

    -- replace values
    l_html := replace(l_html, ':tooltip', l_tooltip);
    l_html := replace(l_html, ':popover', l_popover);

    -- print element
    htp.prn(l_html);

    return l_result;
end render_application_settings;
