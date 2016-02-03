declare
  l_workspace_id apex_workspaces.workspace_id%type;
  l_application_id apex_applications.application_id%type := 73792;
begin
    select workspace_id
    into l_workspace_id
    from apex_workspaces
    where workspace = 'APEX_VMORNEAU';

    -- Hardcoded DEV Workspace
    wwv_flow_api.set_security_group_id(p_security_group_id => l_workspace_id);
    -- Hardcoded Application ID
    wwv_flow.g_flow_id := l_application_id;

    wwv_flow_api.create_template_option(
    p_theme_id=>102
    ,p_name=>'PRIMARY2'
    ,p_display_name=>'Primary2'
    ,p_display_sequence=>1
    ,p_css_classes=>'btn-primary2'
    ,p_group_id=>wwv_flow_api.id(21625697731164856632)
    ,p_template_types=>'BUTTON'
    ,p_help_text=>'Provides extra visual weight and identifies the primary action in a set of buttons.'
    );
exception when no_data_found then
    null;
end;
