set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>50654249616769752
,p_default_application_id=>73792
,p_default_owner=>'APEX_VMORNEAU'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 73792 - Bootstrap 4 Theme
--
-- Application Export:
--   Application:     73792
--   Name:            Bootstrap 4 Theme
--   Date and Time:   20:35 Monday February 1, 2016
--   Exported By:     VINCENT.MORNEAU@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     12
--     Regions:                 83
--     Buttons:                 22
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--       Items:                  1
--       Processes:              2
--       Build Options:          1
--     Navigation:
--       Lists:                  8
--       Breadcrumbs:            1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 2
--         Region:               5
--         Label:                3
--         List:                 4
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               1
--         Report:               3
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,73792)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_VMORNEAU')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Bootstrap 4 Theme')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'73792')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt=>'2EF51444DD573C61805687582DBA41A50C9B6F3E0E729BBA5361E6D3771F386B'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(18663152450585564498)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Bootstrap 4 Theme'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'0.1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_substitution_string_01=>'PATH'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160201203542'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>482
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(18663723279314051716)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18663723761466051724)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Option 1'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18663724056224051724)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Option 2'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18663724352764051725)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Option 3'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_api.id(18663724056224051724)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(18664321263163040772)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23489396642417289623)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Getting Started'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18664321466123040773)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Layout'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'PLSQL_EXPRESSION'
,p_list_item_current_for_pages=>':APP_PAGE_ID between 100 and 199'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18664321751253040776)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Content'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'PLSQL_EXPRESSION'
,p_list_item_current_for_pages=>':APP_PAGE_ID between 200 and 299'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18664322079907040776)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Components'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'PLSQL_EXPRESSION'
,p_list_item_current_for_pages=>':APP_PAGE_ID between 300 and 399'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23983395004855847638)
,p_name=>'Layout'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983395416183847639)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Overview'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983395850527847639)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Grid'
,p_list_item_link_target=>'f?p=&APP_ID.:105:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983396291276847640)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Media object'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983396686451847640)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Responsive utilities'
,p_list_item_link_target=>'f?p=&APP_ID.:115:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23983421889342854522)
,p_name=>'Getting started'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983422092443854523)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Introduction'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983422494824854524)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Download'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983422887265854524)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Browsers & devices'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983423222037854524)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Options'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983423677312854525)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Flexbox'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983932350227921772)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Build tools'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983932762672921772)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Best practices'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.:'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23983425056898856211)
,p_name=>'Content'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983425231316856212)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Reboot'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983425624794856212)
,p_list_item_display_sequence=>205
,p_list_item_link_text=>'Typography'
,p_list_item_link_target=>'f?p=&APP_ID.:205:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983426063168856213)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Code'
,p_list_item_link_target=>'f?p=&APP_ID.:210:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983426454579856213)
,p_list_item_display_sequence=>215
,p_list_item_link_text=>'Images'
,p_list_item_link_target=>'f?p=&APP_ID.:215:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983426820294856214)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Tables'
,p_list_item_link_target=>'f?p=&APP_ID.:220:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983857000474909849)
,p_list_item_display_sequence=>225
,p_list_item_link_text=>'Figures'
,p_list_item_link_target=>'f?p=&APP_ID.:225:&SESSION.:'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23983537517278860030)
,p_name=>'Components'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983537797785860031)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Buttons'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983538148689860031)
,p_list_item_display_sequence=>305
,p_list_item_link_text=>'Button group'
,p_list_item_link_target=>'f?p=&APP_ID.:305:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983538512628860032)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Button dropdown'
,p_list_item_link_target=>'f?p=&APP_ID.:310:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983538932687860032)
,p_list_item_display_sequence=>315
,p_list_item_link_text=>'Forms'
,p_list_item_link_target=>'f?p=&APP_ID.:315:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983539356594860032)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'Input group'
,p_list_item_link_target=>'f?p=&APP_ID.:320:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983845788799900462)
,p_list_item_display_sequence=>325
,p_list_item_link_text=>'Dropdowns'
,p_list_item_link_target=>'f?p=&APP_ID.:325:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983846100716900463)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'Jumbotron'
,p_list_item_link_target=>'f?p=&APP_ID.:330:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983846503921900463)
,p_list_item_display_sequence=>335
,p_list_item_link_text=>'Label'
,p_list_item_link_target=>'f?p=&APP_ID.:335:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983846954158900464)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Alerts'
,p_list_item_link_target=>'f?p=&APP_ID.:340:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983847375178900464)
,p_list_item_display_sequence=>345
,p_list_item_link_text=>'Card'
,p_list_item_link_target=>'f?p=&APP_ID.:345:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983847790584900465)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Navs'
,p_list_item_link_target=>'f?p=&APP_ID.:350:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983848178791900465)
,p_list_item_display_sequence=>355
,p_list_item_link_text=>'Navbar'
,p_list_item_link_target=>'f?p=&APP_ID.:355:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983848585619900466)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Breadcrumb'
,p_list_item_link_target=>'f?p=&APP_ID.:360:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983848977570900466)
,p_list_item_display_sequence=>365
,p_list_item_link_text=>'Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:365:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983849371847900467)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Progress'
,p_list_item_link_target=>'f?p=&APP_ID.:370:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983849763373900467)
,p_list_item_display_sequence=>372
,p_list_item_link_text=>'List group'
,p_list_item_link_target=>'f?p=&APP_ID.:372:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983850154641900470)
,p_list_item_display_sequence=>374
,p_list_item_link_text=>'Modal'
,p_list_item_link_target=>'f?p=&APP_ID.:374:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983850562301900471)
,p_list_item_display_sequence=>376
,p_list_item_link_text=>'Scrollspy'
,p_list_item_link_target=>'f?p=&APP_ID.:376:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983850952526900471)
,p_list_item_display_sequence=>378
,p_list_item_link_text=>'Tooltips'
,p_list_item_link_target=>'f?p=&APP_ID.:378:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983851342163900472)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'Popovers'
,p_list_item_link_target=>'f?p=&APP_ID.:380:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983851704584900472)
,p_list_item_display_sequence=>382
,p_list_item_link_text=>'Collapse'
,p_list_item_link_target=>'f?p=&APP_ID.:382:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983852139762900478)
,p_list_item_display_sequence=>384
,p_list_item_link_text=>'Carousel'
,p_list_item_link_target=>'f?p=&APP_ID.:384:&SESSION.:'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23983852569459900479)
,p_list_item_display_sequence=>386
,p_list_item_link_text=>'Utilities'
,p_list_item_link_target=>'f?p=&APP_ID.:386:&SESSION.:'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(24128692995346500629)
,p_name=>'Footer Links'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24128693199895500630)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Github'
,p_list_item_link_target=>'https://github.com/vincentmorneau'
,p_list_item_icon=>'fa-github'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24128693506780500630)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Twitter'
,p_list_item_link_target=>'https://twitter.com/vincentmorneau'
,p_list_item_icon=>'fa-twitter'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24128693992144500631)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Blog'
,p_list_item_link_target=>'http://vmorneau.me/'
,p_list_item_icon=>'fa-globe'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(24236980523314424955)
,p_name=>'Media List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24236980758979424956)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Media heading'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-android'
,p_list_item_icon_alt_attribute=>'Test'
,p_list_text_01=>'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24236981195980424957)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Nested media heading'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-angellist'
,p_parent_list_item_id=>wwv_flow_api.id(24236980758979424956)
,p_list_text_01=>'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24236981544587424957)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Nested media heading'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-anchor'
,p_parent_list_item_id=>wwv_flow_api.id(24236981195980424957)
,p_list_text_01=>'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24236981980498424958)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Media heading'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-automobile'
,p_list_text_01=>'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18503053490566201640)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18503053563146201640)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18663141356015564468)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(21592058867553451464)
,p_process_sequence=>-999
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_app_images_dev'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_cookie owa_cookie.cookie;',
'begin',
'    l_cookie := owa_cookie.get(''oos-apex-frontend-boost-app-images'');',
'    if l_cookie.vals.count > 0 then',
'        :G_APP_IMAGES := l_cookie.vals(1);',
'    else',
'        :G_APP_IMAGES := :APP_IMAGES;',
'    end if;',
'end;'))
,p_required_patch=>wwv_flow_api.id(23429897160371117909)
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(23430012783699130492)
,p_process_sequence=>-999
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_app_images_prod'
,p_process_sql_clob=>':G_APP_IMAGES := :APP_IMAGES;'
,p_required_patch=>-wwv_flow_api.id(23429897160371117909)
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(21592058595646448647)
,p_name=>'G_APP_IMAGES'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(18663153564646564503)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(13552126408703123857)
,p_theme_id=>102
,p_name=>'Modal'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<head>',
'    <title>#TITLE#</title>',
'    ',
'    <!-- Meta -->',
'    <meta charset="utf-8">',
'    <meta name="author" content="Vincent Morneau">',
'    <meta name="description" content="APEX Theme Boilerplate">',
'    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>',
'    ',
'    <!-- Mandatory APEX CSS Stuff -->',
'    #HEAD#',
'    #APEX_CSS#',
'    ',
'    <!-- Your CSS -->',
'    #THEME_CSS#',
'    #THEME_STYLE_CSS#',
'    #TEMPLATE_CSS#',
'    #APPLICATION_CSS#',
'    ',
'    <!-- Additionnal CSS (that needs a good reason to use) -->',
'    #PAGE_CSS#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<div class="modal #PAGE_CSS_CLASSES#">',
'    <div class="modal-content">',
'        #SUCCESS_MESSAGE#',
'        #NOTIFICATION_MESSAGE#',
'        #BODY#',
'    </div>',
'    <div class="modal-footer">',
'        #REGION_POSITION_08#',
'    </div>',
'</div>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX JS Stuff -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your JS -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal JS (that needs a good reason to use) -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Stuff -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div>#MESSAGE#</div>'
,p_notification_message=>'<div>#MESSAGE#</div>'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'    #ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'    #COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'    #CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(13552126829282123864)
,p_page_template_id=>wwv_flow_api.id(13552126408703123857)
,p_name=>'Modal Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(13552127774043124085)
,p_theme_id=>102
,p_name=>'Standard'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'    <head>',
'        <title>#TITLE#</title>',
'        ',
'        <!-- Meta -->',
'        <meta charset="utf-8">',
'        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">',
'        <meta http-equiv="x-ua-compatible" content="ie=edge">',
'        <meta name="author" content="Vincent Morneau">',
'        <meta name="description" content="Bootstrap 4 APEX Theme">',
'',
'        <!-- Mandatory APEX CSS -->',
'        #HEAD#',
'        #APEX_CSS#',
'',
'        <!-- Your CSS -->',
'        #THEME_CSS#',
'        #THEME_STYLE_CSS#',
'        #TEMPLATE_CSS#',
'        #APPLICATION_CSS#',
'',
'        <!-- Additionnal CSS -->',
'        #PAGE_CSS#',
'    </head>',
'    <body id="#PAGE_STATIC_ID#" class="#PAGE_CSS_CLASSES#" #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_OPEN#',
'',
'<!-- Item Container -->',
'#REGION_POSITION_01#',
'',
'<!-- Header -->',
'<nav class="navbar navbar-dark bg-inverse">',
'    <button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#collapsingNavbar">&#9776;</button>',
'    <div class="collapse navbar-toggleable-xs" id="collapsingNavbar">',
'    <a class="navbar-brand" href="#HOME_LINK#">#LOGO#</a>',
'    #NAVIGATION_BAR#',
'  </div>',
'</nav>',
'',
'#TOP_GLOBAL_NAVIGATION_LIST#',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'',
'<!-- Main Content -->',
'<div class="main-container">',
'    <!-- Header -->',
'    #REGION_POSITION_02#',
'    <!-- Breadcrumbs -->',
'    #REGION_POSITION_03#',
'    <!-- Messages -->',
'    #GLOBAL_NOTIFICATION#',
'    #SUCCESS_MESSAGE#',
'    #NOTIFICATION_MESSAGE#',
'    ',
'    #BODY#    ',
'</div>',
'',
'<!-- Footer -->',
'<footer class="bg-faded">',
'    #REGION_POSITION_08#',
'</footer>',
'',
'#FORM_CLOSE#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- Mandatory APEX Javascript -->',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'',
'<!-- Your Javascript -->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'    ',
'<!-- Additionnal Javascript -->',
'#PAGE_JAVASCRIPT#',
'',
'<!-- Generated Code -->',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div>#MESSAGE#</div>'
,p_notification_message=>'<div>#MESSAGE#</div>'
,p_theme_class_id=>8
,p_default_template_options=>'ab-navbar-fixed-top'
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="container">#ROWS#</div>'
,p_grid_row_template=>'<div class="row">#COLUMNS#</div>'
,p_grid_column_template=>'<div class="col-xs-12 col-md-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(13552128194304124086)
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_name=>'Item Container'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(13552130213406124087)
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23440357921675057755)
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23440368410337057757)
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(13552300091472216698)
,p_template_name=>'Standard'
,p_template=>'<button type="button" id="#BUTTON_ID#" class="btn #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#><i class="#ICON_CSS_CLASSES#"></i>#LABEL#</button>'
,p_theme_class_id=>6
,p_theme_id=>102
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(13552122302985116178)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ab-region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="ab-region-title">#TITLE#</div>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#EDIT#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#EXPAND#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE2#</div>',
'    </div>',
'    <div class="region-body">#BODY#</div>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#CLOSE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#COPY#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#DELETE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CHANGE#</div>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'title-h3'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23440519442971713102)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ab-region jumbotron jumbotron-fluid #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="container">',
'        <div class="ab-region-title">#TITLE#</div>',
'        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'            <div class="btn-group" role="group" aria-label="Button Group">#EDIT#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#EXPAND#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#CREATE#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#CREATE2#</div>',
'        </div>',
'        <div class="region-body">#BODY#</div>',
'        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'            <div class="btn-group" role="group" aria-label="Button Group">#CLOSE#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#COPY#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#DELETE#</div>',
'            <div class="btn-group" role="group" aria-label="Button Group">#CHANGE#</div>',
'        </div>',
'    </div>',
'</div>'))
,p_page_plug_template_name=>'Jumbotron'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'title-h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(24059933965978325173)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="#REGION_STATIC_ID#" class="ab-footer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#EDIT#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#EXPAND#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CREATE2#</div>',
'    </div>',
'    <div class="region-body">#BODY#</div>',
'    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar">',
'        <div class="btn-group" role="group" aria-label="Button Group">#CLOSE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#COPY#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#DELETE#</div>',
'        <div class="btn-group" role="group" aria-label="Button Group">#CHANGE#</div>',
'    </div>',
'</footer>'))
,p_page_plug_template_name=>'Footer'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'title-h3'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(24202268772490861045)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#"><code class="#REGION_CSS_CLASSES#">',
'#BODY#',
'</code></pre>'))
,p_page_plug_template_name=>'Code'
,p_theme_id=>102
,p_theme_class_id=>21
,p_preset_template_options=>'language-markup'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(24203478387538954820)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="card card-block #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'    <div class="ab-region-title">#TITLE#</div>',
'    <blockquote class="card-blockquote">',
'        #BODY#',
'    </blockquote>',
'</div>'))
,p_page_plug_template_name=>'Card'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>102
,p_theme_class_id=>21
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11655412505130867307)
,p_list_template_current=>'<li class="nav-item active"><a class="nav-link" href="#LINK#">#TEXT#<span class="sr-only">(current)</span></a></li>'
,p_list_template_noncurrent=>'<li class="nav-item"><a class="nav-link" href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Navbar'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul id="#LIST_ID#" class="nav navbar-nav #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11675635619991185939)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_list_template_name=>'Media'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div id="#LIST_ID#" class="media-list #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</div>'
,p_sub_list_item_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_sub_list_item_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'    </div>',
'</div>'))
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'        <li class="hidden-bullet"></li>',
'    </div>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'        <li class="hidden-bullet"></li>',
'    </div>',
'</div>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'        <li class="hidden-bullet"></li>',
'    </div>',
'</div>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="media">',
'    <div class="media-left">',
'        <a href="#LINK#">',
'            <i class="media-object fa-2x fa-fw #ICON_CSS_CLASSES#" alt="#LIST_LABEL#"></i>',
'        </a>',
'    </div>',
'    <div class="media-body">',
'        <h4 class="media-heading">#TEXT#</h4>',
'        #A01#',
'        <li class="hidden-bullet"></li>',
'    </div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(13552191103003150175)
,p_list_template_current=>'<li class="nav-item active"><a href="#LINK#" class="active"><i class="#ICON_CSS_CLASSES#"></i>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="nav-item"><a href="#LINK#"><i class="#ICON_CSS_CLASSES#"></i>#TEXT#</a></li>'
,p_list_template_name=>'Standard'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>' <ul id="#LIST_ID#" class="nav #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21625926247228069129)
,p_list_template_current=>'<a class="dropdown-item" href="#LINK#">#TEXT#</a>'
,p_list_template_noncurrent=>'<a class="dropdown-item" href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Single Button Dropdown'
,p_theme_id=>102
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#LIST_ID#" class="btn-group">',
'    <button type="button" class="btn #COMPONENT_CSS_CLASSES# dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">#REGION_TITLE#</button>',
'    <div class="dropdown-menu">'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(13552141119189127708)
,p_row_template_name=>'Standard - Column'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div>',
'<table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'<table id="report-#REGION_STATIC_ID#" class="table #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>',
'    '))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'<tfoot>',
'    <div class="report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'</tfoot>',
'</table>    ',
'<table class="report-pagination report-pagination-bottom" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="pagination-text">#TEXT#</span>'
,p_next_page_template=>'<a class="pagination-next" href="#LINK#">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a class="pagination-previous" href="#LINK#">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a class="pagination-next-set" href="#LINK#">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a class="pagination-previous-set" href="#LINK#">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>102
,p_theme_class_id=>7
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(13552141119189127708)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(13552167309376140850)
,p_row_template_name=>'Standard - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="#COMPONENT_CSS_CLASSES#">',
'    #1##2##3##4##5#',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>102
,p_theme_class_id=>7
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(21640155195235038826)
,p_row_template_name=>'Media'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="media #COMPONENT_CSS_CLASSES#">',
'    <a class="media-left" href="#MEDIA_LINK#">',
'        <img class="media-object" src="#MEDIA_IMG_SOURCE#">',
'    </a>',
'    <div class="media-body">',
'        <h4 class="media-heading">#MEDIA_TITLE#</h4>',
'        #MEDIA_DESCRIPTION#',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="media-list">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>102
,p_theme_class_id=>7
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(13552189433666145531)
,p_template_name=>'Standard'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="#ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>102
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21666197619017591379)
,p_template_name=>'Blockquote'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="hidden-xs-up">'
,p_template_body2=>'</label>'
,p_before_item=>'<blockquote class="blockquote #COMPONENT_CSS_CLASSES#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer class="blockquote-footer">#CURRENT_ITEM_HELP_TEXT#</footer>',
'</blockquote>'))
,p_before_element=>'<p class="m-b-0">'
,p_after_element=>'</p>'
,p_theme_id=>102
,p_theme_class_id=>5
,p_default_template_options=>'hide-blockquote-footer'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21666767277169746701)
,p_template_name=>'Image'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ab-image #COMPONENT_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>102
,p_theme_class_id=>5
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(13552303088456225354)
,p_name=>'Standard'
,p_before_first=>'<div class="#COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'#NAME#'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_after_last=>'</div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>102
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(13552304218748229372)
,p_page_name=>'Popup - Standard'
,p_theme_id=>102
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(13552266426206240627)
,p_cal_template_name=>'Standard'
,p_day_of_week_format=>'<th>#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="">',
' <tr>',
'   <td align="center" style="font-weight:bold;">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="1" cellpadding="1" cellspacing="1" summary="0">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div>#DD#</div><br />'
,p_day_open_format=>'<td valign="top">'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" bgcolor="#d3d3d3">'
,p_weekend_title_format=>'<div>#DD#</div>'
,p_weekend_open_format=>'<td valign="top">'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div>#DD#</div>'
,p_nonday_open_format=>'<td valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_theme_id=>102
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(13552050620237054546)
,p_theme_id=>102
,p_theme_name=>'Bootstrap 4'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(13552127774043124085)
,p_default_dialog_template=>wwv_flow_api.id(13552126408703123857)
,p_default_button_template=>wwv_flow_api.id(13552300091472216698)
,p_default_region_template=>wwv_flow_api.id(13552122302985116178)
,p_default_chart_template=>wwv_flow_api.id(13552122302985116178)
,p_default_form_template=>wwv_flow_api.id(13552122302985116178)
,p_default_reportr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_tabform_template=>wwv_flow_api.id(13552122302985116178)
,p_default_wizard_template=>wwv_flow_api.id(13552122302985116178)
,p_default_menur_template=>wwv_flow_api.id(13552122302985116178)
,p_default_listr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_irr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_report_template=>wwv_flow_api.id(13552141119189127708)
,p_default_label_template=>wwv_flow_api.id(13552189433666145531)
,p_default_menu_template=>wwv_flow_api.id(13552303088456225354)
,p_default_calendar_template=>wwv_flow_api.id(13552266426206240627)
,p_default_list_template=>wwv_flow_api.id(13552191103003150175)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_dialogr_template=>wwv_flow_api.id(13552122302985116178)
,p_default_option_label=>wwv_flow_api.id(13552189433666145531)
,p_default_required_label=>wwv_flow_api.id(13552189433666145531)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(102),'')
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'&G_APP_IMAGES.lib/tether/dist/js/tether#MIN#.js',
'&G_APP_IMAGES.lib/bootstrap/js/bootstrap#MIN#.js',
'&G_APP_IMAGES.js/app#MIN#.js'))
,p_css_file_urls=>'&G_APP_IMAGES.css/app#MIN#.css'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(11710808157153927160)
,p_theme_id=>102
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_help_text=>'Media vertical alignment'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(17640545233011826311)
,p_theme_id=>101
,p_name=>'COLLAPSIBLE_BEHAVIOR'
,p_display_name=>'Collapsible Behavior'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(17714439356643191071)
,p_theme_id=>101
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(17790722589604997177)
,p_theme_id=>101
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18073587003429791715)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18505968316939313297)
,p_theme_id=>101
,p_name=>'SECTION_HEADER_SIZE'
,p_display_name=>'Section Header Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18509157237770362781)
,p_theme_id=>101
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18509175657685364541)
,p_theme_id=>101
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18509177747826370675)
,p_theme_id=>101
,p_name=>'WAVE_COLOR'
,p_display_name=>'Wave Color'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'None'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19200573364472576795)
,p_theme_id=>101
,p_name=>'SHADOW'
,p_display_name=>'Shadow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19212710598405076768)
,p_theme_id=>101
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19212711377712081418)
,p_theme_id=>101
,p_name=>'BACKGROUND_MODIFIER'
,p_display_name=>'Background Modifier'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(19212732087856092841)
,p_theme_id=>101
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21625697731164856632)
,p_theme_id=>102
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21625758199483748056)
,p_theme_id=>102
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640024097869932393)
,p_theme_id=>102
,p_name=>'HIDE_CONTENT_DOWN_FROM'
,p_display_name=>'Hide Content Down From'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'The "Hide Content Down From" template option hides the element when the viewport is at the given breakpoint or smaller. For example, choosing "Medium" hides an element on extra-small, small, and medium viewports.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640024792861937988)
,p_theme_id=>102
,p_name=>'HIDE_CONTENT_UP_TO'
,p_display_name=>'Hide Content Up To'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'The "Hide Content Up To" template option hides the element when the viewport is at the given breakpoint or wider. For example, choosing "Medium" hides an element on medium, large, and extra-large viewports.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640111269589797934)
,p_theme_id=>102
,p_name=>'PRINT_UTILITIES'
,p_display_name=>'Print Utilities'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Use these for toggling content for print.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21666050145955709488)
,p_theme_id=>102
,p_name=>'HEADING_SIZE'
,p_display_name=>'Heading Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21666849568988941560)
,p_theme_id=>102
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24059115783141614200)
,p_theme_id=>102
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Nasily set the background of an element to any contextual class. Anchor components will darken on hover, just like the text classes.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24059131998901617081)
,p_theme_id=>102
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Convey meaning through color with a handful of emphasis utility classes. These may also be applied to links and will darken on hover just like our default link styles.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24128555486626837813)
,p_theme_id=>102
,p_name=>'TEXT_ALIGNMENT'
,p_display_name=>'Text Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24129625400640113232)
,p_theme_id=>102
,p_name=>'TEXT_TRANSFORM'
,p_display_name=>'Text Transform'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Transform text in components with text capitalization classes.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24202269104436861053)
,p_theme_id=>102
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625719983708694492)
,p_theme_id=>102
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'btn-primary'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
,p_help_text=>'Provides extra visual weight and identifies the primary action in a set of buttons.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625720610311698986)
,p_theme_id=>102
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'btn-success'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625721104857702584)
,p_theme_id=>102
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'btn-info'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625722390622708850)
,p_theme_id=>102
,p_name=>'LINK'
,p_display_name=>'Link'
,p_display_sequence=>1
,p_css_classes=>'btn-link'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625725313197730703)
,p_theme_id=>102
,p_name=>'PRIMARY_OUTLINE'
,p_display_name=>'Primary Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-primary-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625725891619738640)
,p_theme_id=>102
,p_name=>'SECONDARY_OUTLINE'
,p_display_name=>'Secondary Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-secondary-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625726725607743946)
,p_theme_id=>102
,p_name=>'WARNING_OUTLINE'
,p_display_name=>'Warning Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-warning-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625727641740745075)
,p_theme_id=>102
,p_name=>'DANGER_OUTLINE'
,p_display_name=>'Danger Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-danger-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625728619490862983)
,p_theme_id=>102
,p_name=>'SECONDARY'
,p_display_name=>'Secondary'
,p_display_sequence=>1
,p_css_classes=>'btn-secondary'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625729565526870441)
,p_theme_id=>102
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'btn-warning'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625729879538873669)
,p_theme_id=>102
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'btn-danger'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625751624982906980)
,p_theme_id=>102
,p_name=>'SUCCESS_OUTLINE'
,p_display_name=>'Success Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-success-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625752550344909027)
,p_theme_id=>102
,p_name=>'INFO_OUTLINE'
,p_display_name=>'Info Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-info-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625759477913763290)
,p_theme_id=>102
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'btn-lg'
,p_group_id=>wwv_flow_api.id(21625758199483748056)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625759757428765096)
,p_theme_id=>102
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'btn-sm'
,p_group_id=>wwv_flow_api.id(21625758199483748056)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625773598184788498)
,p_theme_id=>102
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>1
,p_css_classes=>'btn-block'
,p_template_types=>'BUTTON'
,p_help_text=>'Create block level buttons—those that span the full width of a parent'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625836112864099334)
,p_theme_id=>102
,p_name=>'FIXED_HEADER'
,p_display_name=>'Fixed Header'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_css_classes=>'ab-navbar-fixed-top'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640112739818804832)
,p_theme_id=>102
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>2
,p_css_classes=>'hidden-sm-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640113299861805977)
,p_theme_id=>102
,p_name=>'MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>3
,p_css_classes=>'hidden-md-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640113812122807741)
,p_theme_id=>102
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>4
,p_css_classes=>'hidden-lg-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640119408359968948)
,p_theme_id=>102
,p_name=>'XS'
,p_display_name=>'X-Small'
,p_display_sequence=>1
,p_css_classes=>'hidden-xs-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640121325350979905)
,p_theme_id=>102
,p_name=>'XLARGE'
,p_display_name=>'X-Large'
,p_display_sequence=>5
,p_css_classes=>'hidden-xl-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640122675546989037)
,p_theme_id=>102
,p_name=>'X-SMALL'
,p_display_name=>'X-Small'
,p_display_sequence=>1
,p_css_classes=>'hidden-xs-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640135397168002790)
,p_theme_id=>102
,p_name=>'HIDDEN-MD-UP'
,p_display_name=>'Medium'
,p_display_sequence=>3
,p_css_classes=>'hidden-md-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640136286041008367)
,p_theme_id=>102
,p_name=>'HIDDEN-LG-UP'
,p_display_name=>'Large'
,p_display_sequence=>4
,p_css_classes=>'hidden-lg-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640136550714010098)
,p_theme_id=>102
,p_name=>'HIDDEN-XL-UP'
,p_display_name=>'X-Large'
,p_display_sequence=>5
,p_css_classes=>'hidden-xl-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640137091290013228)
,p_theme_id=>102
,p_name=>'VISIBLE-PRINT-BLOCK'
,p_display_name=>'Visible Print Block'
,p_display_sequence=>1
,p_css_classes=>'visible-print-block'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640137692683015022)
,p_theme_id=>102
,p_name=>'VISIBLE-PRINT-INLINE'
,p_display_name=>'Visible Print Inline'
,p_display_sequence=>2
,p_css_classes=>'visible-print-inline'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640141858219834672)
,p_theme_id=>102
,p_name=>'HIDDEN-SM-UP'
,p_display_name=>'Small'
,p_display_sequence=>2
,p_css_classes=>'hidden-sm-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640148564556017807)
,p_theme_id=>102
,p_name=>'VISIBLE-PRINT-INLINE-BLOCK'
,p_display_name=>'Visible Inline Block'
,p_display_sequence=>3
,p_css_classes=>'visible-print-inline-block'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640153484008019352)
,p_theme_id=>102
,p_name=>'HIDDEN-PRINT'
,p_display_name=>'Hidden'
,p_display_sequence=>4
,p_css_classes=>'hidden-print'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666041001108550098)
,p_theme_id=>102
,p_name=>'H1'
,p_display_name=>'H1'
,p_display_sequence=>1
,p_css_classes=>'title-h1'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666042407878558530)
,p_theme_id=>102
,p_name=>'H6'
,p_display_name=>'H6'
,p_display_sequence=>6
,p_css_classes=>'title-h6'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666071554068718145)
,p_theme_id=>102
,p_name=>'H2'
,p_display_name=>'H2'
,p_display_sequence=>2
,p_css_classes=>'title-h2'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666072048037719568)
,p_theme_id=>102
,p_name=>'H3'
,p_display_name=>'H3'
,p_display_sequence=>3
,p_css_classes=>'title-h3'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666072581706722086)
,p_theme_id=>102
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>4
,p_css_classes=>'title-h4'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666073176443723498)
,p_theme_id=>102
,p_name=>'H5'
,p_display_name=>'H5'
,p_display_sequence=>5
,p_css_classes=>'title-h5'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666095879490732266)
,p_theme_id=>102
,p_name=>'LEAD_TEXT'
,p_display_name=>'Lead Text'
,p_display_sequence=>2
,p_css_classes=>'region-lead'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666282125105664607)
,p_theme_id=>102
,p_name=>'HIDE_BLOCKQUOTE_FOOTER'
,p_display_name=>'Hide Blockquote Footer'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666197619017591379)
,p_css_classes=>'hide-blockquote-footer'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666356972662859423)
,p_theme_id=>102
,p_name=>'REVERSED_RIGHT_ALIGNED'
,p_display_name=>'Reversed (Right Aligned)'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666197619017591379)
,p_css_classes=>'blockquote-reverse'
,p_template_types=>'FIELD'
,p_help_text=>'Add this for a blockquote with right-aligned content.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666840404398767217)
,p_theme_id=>102
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-image-fluid'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666843144947779255)
,p_theme_id=>102
,p_name=>'ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-img-rounded'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666843434561782613)
,p_theme_id=>102
,p_name=>'CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-img-circle'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666870540953951179)
,p_theme_id=>102
,p_name=>'THUMBNAIL'
,p_display_name=>'Thumbnail'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-img-thumbnail'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23984310613062130330)
,p_theme_id=>102
,p_name=>'REGION_HEADING_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_css_classes=>'ab-region-title-hidden'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059139373492013660)
,p_theme_id=>102
,p_name=>'REGION_TEXT_PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'text-primary'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059140822186020128)
,p_theme_id=>102
,p_name=>'REGION_TEXT_INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'text-info'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059141266729022189)
,p_theme_id=>102
,p_name=>'REGION_TEXT_WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'text-warning'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059141923465023750)
,p_theme_id=>102
,p_name=>'REGION_TEXT_DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'text-danger'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059164367752622390)
,p_theme_id=>102
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'bg-primary'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059165404281624143)
,p_theme_id=>102
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'bg-success'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166042593626850)
,p_theme_id=>102
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'bg-info'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166361121627983)
,p_theme_id=>102
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'bg-warning'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166788431628913)
,p_theme_id=>102
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'bg-danger'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059167566968629938)
,p_theme_id=>102
,p_name=>'INVERSE'
,p_display_name=>'Inverse'
,p_display_sequence=>1
,p_css_classes=>'bg-inverse'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059173144624632820)
,p_theme_id=>102
,p_name=>'MUTED'
,p_display_name=>'Muted'
,p_display_sequence=>1
,p_css_classes=>'text-muted'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059191752019643216)
,p_theme_id=>102
,p_name=>'REGION_TEXT_SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'text-success'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059521481597336821)
,p_theme_id=>102
,p_name=>'MASTER_JUMBOTRON'
,p_display_name=>'Master Jumbotron'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23440519442971713102)
,p_css_classes=>'master-jumbotron'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128544476563473535)
,p_theme_id=>102
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'text-xs-left'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128570676742476205)
,p_theme_id=>102
,p_name=>'TEXT_XS_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'text-xs-center'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128599573734478423)
,p_theme_id=>102
,p_name=>'TEXT_XS_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>3
,p_css_classes=>'text-xs-right'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129332538610683267)
,p_theme_id=>102
,p_name=>'TEXT_XS_JUSTIFY'
,p_display_name=>'Justified'
,p_display_sequence=>1
,p_css_classes=>'text-justify'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129820066815118660)
,p_theme_id=>102
,p_name=>'TEXT_LOWERCASE'
,p_display_name=>'Lowercase'
,p_display_sequence=>1
,p_css_classes=>'text-lowercase'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129821301439121649)
,p_theme_id=>102
,p_name=>'TEXT_UPPERCASE'
,p_display_name=>'Uppercase'
,p_display_sequence=>1
,p_css_classes=>'text-uppercase'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129822219309124426)
,p_theme_id=>102
,p_name=>'TEXT_CAPITALIZE'
,p_display_name=>'Capitalize'
,p_display_sequence=>1
,p_css_classes=>'text-capitalize'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24201296342862684778)
,p_theme_id=>102
,p_name=>'CONTAINER_FLUID'
,p_display_name=>'Container Fluid'
,p_display_sequence=>1
,p_css_classes=>'ab-container-fluid'
,p_template_types=>'PAGE'
,p_help_text=>'Use .this for a full width container, spanning the entire width of the viewport.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202269591009861054)
,p_theme_id=>102
,p_name=>'CSS'
,p_display_name=>'CSS'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-css'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202269912945861054)
,p_theme_id=>102
,p_name=>'HTML'
,p_display_name=>'HTML'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-markup'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202270332163861055)
,p_theme_id=>102
,p_name=>'JAVASCRIPT'
,p_display_name=>'JavaScript'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-javascript'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202270765332861055)
,p_theme_id=>102
,p_name=>'SCSS'
,p_display_name=>'SCSS'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-scss'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202271139436861055)
,p_theme_id=>102
,p_name=>'SQL'
,p_display_name=>'SQL'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-sql'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(23429897160371117909)
,p_build_option_name=>'DEV_ONLY'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(18663152450585564498)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/me_vmorneau_template_documentation
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(23497853128915578247)
,p_plugin_type=>'REGION TYPE'
,p_name=>'ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_display_name=>'APEX Theme Documentation'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','ME.VMORNEAU.TEMPLATE.DOCUMENTATION'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render_template_documentation (',
'    p_region in apex_plugin.t_region',
'    , p_plugin in apex_plugin.t_plugin',
'    , p_is_printer_friendly in boolean )',
'return apex_plugin.t_region_render_result',
'as',
'    subtype plugin_attr is varchar2(32767);',
'',
'    -- Variables',
'    l_result apex_plugin.t_region_render_result;',
'    l_html varchar2(32767);',
'',
'    -- Component attributes',
'    l_component_type         plugin_attr := p_region.attribute_01;',
'    l_documentation_type     plugin_attr := p_region.attribute_02;',
'    l_component_id           plugin_attr := p_region.attribute_03;',
'    l_displayed_info         plugin_attr := p_region.attribute_04;',
'    l_template_option_group  plugin_attr := p_region.attribute_05;',
'    l_template_option_single plugin_attr := p_region.attribute_06;',
'    l_include_globals        plugin_attr := p_region.attribute_07;',
'',
'    -- cursors',
'    -- c_template_option_groups',
'    cursor  c_template_option_groups is',
'    select  ato.display_name',
'            , ato.help_text',
'    from    apex_appl_template_opt_groups atog',
'    join    apex_appl_template_options ato',
'    on      ato.application_id  = atog.application_id',
'    and     ato.theme_number    = atog.theme_number',
'    and     ato.group_id        = atog.template_opt_group_id',
'    where   atog.application_id = :APP_ID',
'    and     atog.template_types = l_component_type',
'    and     atog.name           = l_template_option_group;',
'',
'    -- c_template_option_single',
'    cursor  c_template_option_single is',
'    select  ato.display_name',
'            , ato.help_text',
'    from    apex_appl_template_options ato',
'    where   ato.application_id        = :APP_ID',
'    -- and     ato.virtual_template_type = l_component_type -- VMORNEAU is it necessary?',
'    and     ato.name                  = l_template_option_single;',
'',
'    -- c_button_all_template_options',
'    cursor  c_button_all_template_options is',
'    select  atog.display_name group_name',
'            , ato.display_name',
'            , ato.help_text',
'    from    apex_application_page_buttons apb',
'    join    apex_appl_template_options ato',
'    on      ato.application_id               = apb.application_id',
'    and     ato.button_template_id           = apb.button_template_id',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id       = ato.application_id',
'    and     atog.theme_number         = ato.theme_number',
'    and     atog.template_opt_group_id= ato.group_id',
'    where   apb.application_id               = :APP_ID',
'    and     apb.page_id                      = :APP_PAGE_ID',
'    and     ltrim(apb.button_static_id, ''#'') = ltrim(l_component_id, ''#'')',
'    union',
'    select  atog.display_name group_name',
'            , ato.display_name',
'            , ato.help_text',
'    from    apex_appl_template_options ato',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id       = ato.application_id',
'    and     atog.theme_number         = ato.theme_number',
'    and     atog.template_opt_group_id= ato.group_id',
'    where   ato.application_id        = :APP_ID',
'    and     ato.virtual_template_type = l_component_type',
'    and     l_include_globals         = ''Y'';',
'',
'    -- c_button_attributes',
'    cursor  c_button_attributes is',
'    select  apb.*',
'    from    apex_application_page_buttons apb',
'    where   apb.application_id               = :APP_ID',
'    and     apb.page_id                      = :APP_PAGE_ID',
'    and     ltrim(apb.button_static_id, ''#'') = ltrim(l_component_id, ''#'');',
'',
'    -- c_region_all_template_options',
'    cursor  c_region_all_template_options is',
'    select  atog.display_name group_name',
'            , ato.display_name',
'            , ato.help_text',
'    from    apex_application_page_regions apr',
'    join    apex_appl_template_options ato',
'    on      ato.application_id        = apr.application_id',
'    and     ato.region_template_id    = apr.template_id',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id       = ato.application_id',
'    and     atog.theme_number         = ato.theme_number',
'    and     atog.template_opt_group_id= ato.group_id',
'    where   apr.application_id        = :APP_ID',
'    and     apr.page_id               = :APP_PAGE_ID',
'    and     ltrim(apr.static_id, ''#'') = ltrim(l_component_id, ''#'')',
'    union',
'    select  atog.display_name group_name',
'            , ato.display_name',
'            , ato.help_text',
'    from    apex_appl_template_options ato',
'    left join apex_appl_template_opt_groups atog',
'    on      atog.application_id       = ato.application_id',
'    and     atog.theme_number         = ato.theme_number',
'    and     atog.template_opt_group_id= ato.group_id',
'    where   ato.application_id        = :APP_ID',
'    and     ato.virtual_template_type = l_component_type',
'    and     l_include_globals         = ''Y'';',
'',
'    -- c_region_attributes',
'    cursor  c_region_attributes is',
'    select  apr.*',
'    from    apex_application_page_regions apr',
'    where   apr.application_id        = :APP_ID',
'    and     apr.page_id               = :APP_PAGE_ID',
'    and     ltrim(apr.static_id, ''#'') = ltrim(l_component_id, ''#'');',
'',
'    -- helper functions',
'    function open_table (',
'        p_th1 in varchar2',
'        , p_th2 in varchar2',
'        , p_th3 in varchar2 default ''-1''',
'    ) return varchar2 is',
'    begin',
'        return ''<table class="table table-striped table-sm">''',
'            || ''<thead class="thead-inverse">''',
'            || ''<tr>''',
'            || ''<th class="text-nowrap">'' || p_th1 || ''</th>''',
'            || ''<th class="text-nowrap">'' || p_th2 || ''</th>''',
'            || case when p_th3 = ''-1'' then null else ''<th class="text-nowrap">'' || p_th3 || ''</th>'' end',
'            || ''</tr>''',
'            || ''</thead>''',
'            || ''<tbody>'';',
'    end open_table;',
'',
'    function set_table_content (',
'        p_td1 in varchar2',
'        , p_td2 in varchar2',
'        , p_td3 in varchar2 default ''-1''',
'        , p_value_required in boolean default false',
'    ) return varchar2 is',
'    begin',
'        if p_value_required and p_td2 is null then',
'            return null;',
'        else',
'            return ''<tr>''',
'                || ''<td>'' || p_td1 || ''</td>''',
'                || ''<td>'' || p_td2 || ''</td>''',
'                || case when p_td3 = ''-1'' then null else ''<td>'' || p_td3 || ''</td>'' end',
'                || ''</tr>'';',
'        end if;',
'    end set_table_content;',
'',
'    function close_table',
'    return varchar2 is',
'    begin',
'        return ''</tbody>''',
'            || ''</table>'';',
'    end close_table;',
'begin',
'    -- debug information will be included',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_region (',
'            p_plugin => p_plugin,',
'            p_region => p_region,',
'            p_is_printer_friendly => p_is_printer_friendly);',
'    end if;',
'',
'    case l_documentation_type',
'        when ''GROUP'' then',
'            l_html := l_html || open_table (',
'                p_th1 => ''Template Option (<code>'' || l_template_option_group || ''</code>)''',
'                , p_th2 => ''Comment''',
'            );',
'',
'            for i in c_template_option_groups loop',
'                l_html := l_html || set_table_content (',
'                    p_td1 => i.display_name',
'                    , p_td2 => i.help_text',
'                );',
'            end loop;',
'',
'            l_html := l_html || close_table;',
'        when ''SINGLE'' then',
'            l_html := l_html || open_table (',
'                p_th1 => ''Template Option''',
'                , p_th2 => ''Comment''',
'            );',
'',
'            for i in c_template_option_single loop',
'                l_html := l_html || set_table_content (',
'                    p_td1 => i.display_name',
'                    , p_td2 => i.help_text',
'                );',
'            end loop;',
'',
'            l_html := l_html || close_table;',
'        when ''COMPONENT'' then',
'            case l_component_type',
'                when ''BUTTON'' then',
'                    case',
'                        when l_displayed_info like ''%ALL_TEMPLATE_OPTIONS%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Group''',
'                                , p_th2 => ''Template Option''',
'                                , p_th3 => ''Comment''',
'                            );',
'',
'                            for i in c_button_all_template_options loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => i.group_name',
'                                    , p_td2 => i.display_name',
'                                    , p_td3 => i.help_text',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                        when l_displayed_info like ''%GRID_ATTRIBUTES%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Grid Attribute''',
'                                , p_th2 => ''Value''',
'                            );',
'',
'                            for i in c_button_attributes loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid''',
'                                    , p_td2 => i.new_grid',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid Row''',
'                                    , p_td2 => i.new_grid_row',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid Column''',
'                                    , p_td2 => i.new_grid_column',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column''',
'                                    , p_td2 => i.grid_column',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column Span''',
'                                    , p_td2 => i.grid_column_span',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column CSS Classes''',
'                                    , p_td2 => i.grid_column_css_classes',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column Attributes''',
'                                    , p_td2 => i.grid_column_attributes',
'                                    , p_value_required => true',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                        when l_displayed_info like ''%CUSTOM_ATTRIBUTES%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Custom Attribute''',
'                                , p_th2 => ''Value''',
'                            );',
'',
'                            for i in c_button_attributes loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Template''',
'                                    , p_td2 => i.button_template',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Image Name''',
'                                    , p_td2 => i.image_name',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Alignment''',
'                                    , p_td2 => i.alignment',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Image Attributes''',
'                                    , p_td2 => i.image_attributes',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Button CSS Classes''',
'                                    , p_td2 => i.button_css_classes',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Icon CSS Classses''',
'                                    , p_td2 => i.icon_css_classes',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Button Attributes''',
'                                    , p_td2 => i.button_attributes',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Pre Element Text''',
'                                    , p_td2 => i.pre_element_text',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Post Element Text''',
'                                    , p_td2 => i.post_element_text',
'                                    , p_value_required => true',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                    end case;',
'                when ''BREADCRUMB'' then',
'                    null;',
'                when ''LABEL'' then',
'                    null;',
'                when ''LIST'' then',
'                    null;',
'                when ''PAGE'' then',
'                    null;',
'                when ''REGION'' then',
'                    case',
'                        when l_displayed_info like ''%ALL_TEMPLATE_OPTIONS%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Group''',
'                                , p_th2 => ''Template Option''',
'                                , p_th3 => ''Comment''',
'                            );',
'',
'                            for i in c_region_all_template_options loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => i.group_name',
'                                    , p_td2 => i.display_name',
'                                    , p_td3 => i.help_text',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                        when l_displayed_info like ''%GRID_ATTRIBUTES%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Grid Attribute''',
'                                , p_th2 => ''Value''',
'                            );',
'',
'                            for i in c_region_attributes loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid''',
'                                    , p_td2 => i.new_grid',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid Row''',
'                                    , p_td2 => i.new_grid_row',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid Column''',
'                                    , p_td2 => i.new_grid_column',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column''',
'                                    , p_td2 => i.grid_column',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column Span''',
'                                    , p_td2 => i.grid_column_span',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column CSS Classes''',
'                                    , p_td2 => i.grid_column_css_classes',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column Attributes''',
'                                    , p_td2 => i.grid_column_attributes',
'                                    , p_value_required => true',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                        when l_displayed_info like ''%CUSTOM_ATTRIBUTES%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Custom Attribute''',
'                                , p_th2 => ''Value''',
'                            );',
'',
'                            for i in c_region_attributes loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Template''',
'                                    , p_td2 => i.template',
'                                    , p_value_required => true',
'                                );',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Display Region Selector''',
'                                    , p_td2 => i.display_region_selector',
'                                    , p_value_required => true',
'                                );',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Region CSS Classes''',
'                                    , p_td2 => i.region_css_classes',
'                                    , p_value_required => true',
'                                );',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Icon CSS Classes''',
'                                    , p_td2 => i.icon_css_classes',
'                                    , p_value_required => true',
'                                );',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Region Sub CSS Classes''',
'                                    , p_td2 => i.region_sub_css_classes',
'                                    , p_value_required => true',
'                                );',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Region Attributes Substitution''',
'                                    , p_td2 => i.region_attributes_substitution',
'                                    , p_value_required => true',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                    end case;',
'                when ''REPORT'' then',
'                    case',
'                        when l_displayed_info like ''%ALL_TEMPLATE_OPTIONS%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Group''',
'                                , p_th2 => ''Template Option''',
'                                , p_th3 => ''Comment''',
'                            );',
'',
'                            for i in c_region_all_template_options loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => i.group_name',
'                                    , p_td2 => i.display_name',
'                                    , p_td3 => i.help_text',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                        when l_displayed_info like ''%GRID_ATTRIBUTES%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Grid Attribute''',
'                                , p_th2 => ''Value''',
'                            );',
'',
'                            for i in c_region_attributes loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid''',
'                                    , p_td2 => i.new_grid',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid Row''',
'                                    , p_td2 => i.new_grid_row',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''New Grid Column''',
'                                    , p_td2 => i.new_grid_column',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column''',
'                                    , p_td2 => i.grid_column',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column Span''',
'                                    , p_td2 => i.grid_column_span',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column CSS Classes''',
'                                    , p_td2 => i.grid_column_css_classes',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Grid Column Attributes''',
'                                    , p_td2 => i.grid_column_attributes',
'                                    , p_value_required => true',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                        when l_displayed_info like ''%CUSTOM_ATTRIBUTES%'' then',
'                            l_html := l_html || open_table (',
'                                p_th1 => ''Custom Attribute''',
'                                , p_th2 => ''Value''',
'                            );',
'',
'                            for i in c_region_attributes loop',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Template''',
'                                    , p_td2 => i.report_template',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Report column headings''',
'                                    , p_td2 => i.report_column_headings',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Maximum rows to query''',
'                                    , p_td2 => i.maximum_rows_to_query',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Pagination scheme''',
'                                    , p_td2 => i.pagination_scheme',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Pagination display position''',
'                                    , p_td2 => i.pagination_display_position',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Number of rows item''',
'                                    , p_td2 => i.number_of_rows_item',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Maximum row count''',
'                                    , p_td2 => i.maximum_row_count',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Report null values as''',
'                                    , p_td2 => i.report_null_values_as',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Breaks''',
'                                    , p_td2 => i.breaks',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Strip HTML''',
'                                    , p_td2 => i.strip_html',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Max dynamic report cols''',
'                                    , p_td2 => i.max_dynamic_report_cols',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Fixed header''',
'                                    , p_td2 => i.fixed_header',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Fixed header max height''',
'                                    , p_td2 => i.fixed_header_max_height',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Enable csv output''',
'                                    , p_td2 => i.enable_csv_output',
'                                    , p_value_required => true',
'                                );',
'',
'                                l_html := l_html || set_table_content (',
'                                    p_td1 => ''Repeat heading break format''',
'                                    , p_td2 => i.repeat_heading_break_format',
'                                    , p_value_required => true',
'                                );',
'                            end loop;',
'',
'                            l_html := l_html || close_table;',
'                    end case;',
'            end case;',
'    end case;',
'',
'    htp.prn(l_html);',
'',
'    return l_result;',
'end render_template_documentation;',
''))
,p_render_function=>'render_template_documentation'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(23497876084433961183)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Component Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'REGION'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497923872883965003)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>10
,p_display_value=>'Breadcrumb'
,p_return_value=>'BREADCRUMB'
);
end;
/
begin
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497902109662590821)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>20
,p_display_value=>'Button'
,p_return_value=>'BUTTON'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497902669927591877)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>30
,p_display_value=>'Label'
,p_return_value=>'LABEL'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497903430447593396)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>40
,p_display_value=>'List'
,p_return_value=>'LIST'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497904084360594275)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>50
,p_display_value=>'Page'
,p_return_value=>'PAGE'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497904876944595863)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>60
,p_display_value=>'Region'
,p_return_value=>'REGION'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(23497905472795597049)
,p_plugin_attribute_id=>wwv_flow_api.id(23497876084433961183)
,p_display_sequence=>70
,p_display_value=>'Report'
,p_return_value=>'REPORT'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032433508109914740)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Documentation Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'COMPONENT'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032436437687917659)
,p_plugin_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_display_sequence=>10
,p_display_value=>'By Component'
,p_return_value=>'COMPONENT'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032468962305919846)
,p_plugin_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_display_sequence=>20
,p_display_value=>'By Template Option Group'
,p_return_value=>'GROUP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032471507551922417)
,p_plugin_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_display_sequence=>30
,p_display_value=>'By Single Template Option'
,p_return_value=>'SINGLE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032610101734933013)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Region, Item or Button ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COMPONENT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032484874728316484)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Displayed Information'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>true
,p_default_value=>'CUSTOM_ATTRIBUTES'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COMPONENT'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032486838949319358)
,p_plugin_attribute_id=>wwv_flow_api.id(24032484874728316484)
,p_display_sequence=>10
,p_display_value=>'All Associated Template Options'
,p_return_value=>'ALL_TEMPLATE_OPTIONS'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032487628279320764)
,p_plugin_attribute_id=>wwv_flow_api.id(24032484874728316484)
,p_display_sequence=>20
,p_display_value=>'Grid Attributes'
,p_return_value=>'GRID_ATTRIBUTES'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(24032755827157946910)
,p_plugin_attribute_id=>wwv_flow_api.id(24032484874728316484)
,p_display_sequence=>30
,p_display_value=>'Custom Attributes'
,p_return_value=>'CUSTOM_ATTRIBUTES'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032778629742330272)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Template Option Group Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'GROUP'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24032813305642960103)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Single Template Option Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032433508109914740)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SINGLE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24142734279811848998)
,p_plugin_id=>wwv_flow_api.id(23497853128915578247)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>45
,p_prompt=>'Include Global Template Options'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24032484874728316484)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ALL_TEMPLATE_OPTIONS'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(18663152251353564495)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Responsive'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>102
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_position=>'SIDE'
,p_content_delivery_network=>'GOOGLE'
,p_css_file_urls=>'&G_APP_IMAGES.lib/prism/css/prism.css'
,p_javascript_file_urls=>'&G_APP_IMAGES.lib/prism/js/prism.js'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(18664321263163040772)
,p_nav_bar_list_template_id=>wwv_flow_api.id(11655412505130867307)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Global Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(13552127774043124085)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160131214912'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22741030333992885421)
,p_plug_name=>'Getting Started'
,p_region_template_options=>'#DEFAULT#:region-lead:bg-info:title-h1'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>An overview of Bootstrap, including how to download and use it, some basic templates and examples, and more.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 2 and 99'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22741030452316885422)
,p_plug_name=>'Components'
,p_region_template_options=>'#DEFAULT#:region-lead:bg-info:title-h1'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>Over a dozen reusable components built to provide buttons, dropdowns, input groups, navigation, alerts, and much more.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 300 and 399'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22741030522216885423)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#:region-lead:bg-info:title-h1'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>Styles for displaying content with some of the most commonly used HTML elements, including normalization, typography, images, tables, and more.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 200 and 299'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420421014283010)
,p_plug_name=>'Layout'
,p_region_template_options=>'#DEFAULT#:region-lead:bg-info:title-h1'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>Options for structuring your pages with Bootstrap, including global styles, required scaffolding, grid system, and more.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 100 and 199'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420895422283014)
,p_plug_name=>'{sidebar}'
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'col-md-push-9'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420221656283008)
,p_plug_name=>'Getting started'
,p_parent_plug_id=>wwv_flow_api.id(23576420895422283014)
,p_region_template_options=>'#DEFAULT#:title-h4'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(23983421889342854522)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 2 and 99'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420578694283011)
,p_plug_name=>'Layout'
,p_parent_plug_id=>wwv_flow_api.id(23576420895422283014)
,p_region_template_options=>'#DEFAULT#:title-h4'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(23983395004855847638)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 100 and 199'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420635130283012)
,p_plug_name=>'Content'
,p_parent_plug_id=>wwv_flow_api.id(23576420895422283014)
,p_region_template_options=>'#DEFAULT#:title-h4'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(23983425056898856211)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 200 and 299'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576420728604283013)
,p_plug_name=>'Components'
,p_parent_plug_id=>wwv_flow_api.id(23576420895422283014)
,p_region_template_options=>'#DEFAULT#:title-h4'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(23983537517278860030)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID between 300 and 399'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24128614977927482267)
,p_plug_name=>'{footer links}'
,p_icon_css_classes=>'fa-adjust'
,p_region_template_options=>'#DEFAULT#:ab-region-title-hidden'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_list_id=>wwv_flow_api.id(24128692995346500629)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(13552191103003150175)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24128616095581483658)
,p_plug_name=>'{footer license}'
,p_region_template_options=>'#DEFAULT#:ab-region-title-hidden:text-xs-right'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>APEX Bootstrap 4 Theme</p>',
'<p><a href="http://insum.ca/">Insum Solutions</a></p>',
'<p><a href="https://twitter.com/vincentmorneau">Vincent Morneau</a></p>',
'<p><a href="https://opensource.org/licenses/MIT">MIT License</a></p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'APEX Bootstrap 4'
,p_page_mode=>'NORMAL'
,p_step_title=>'APEX Bootstrap 4'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(13552127774043124085)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160130221011'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24059517910592321181)
,p_plug_name=>'APEX Bootstrap 4'
,p_region_template_options=>'#DEFAULT#:master-jumbotron:region-lead:bg-info:title-h1:text-xs-center'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'<p>Bootstrap 4 is only alpha 2.</p><p>Let''s see what it looks like in Oracle APEX.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_api.create_page(
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Overview'
,p_page_mode=>'NORMAL'
,p_step_title=>'Overview'
,p_step_sub_title=>'Overview'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160131213850'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24130653514909011910)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:region-lead:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Bootstrap includes several components and options for laying out your project, including wrapping containers, a powerful grid system, a flexible media object, and responsive utility classes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576421741188283023)
,p_plug_name=>'Containers'
,p_parent_plug_id=>wwv_flow_api.id(24130653514909011910)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576421985643283025)
,p_plug_name=>'Responsive Breakpoints'
,p_region_name=>'responsive-breakpoints'
,p_parent_plug_id=>wwv_flow_api.id(24130653514909011910)
,p_region_template_options=>'#DEFAULT#:region-lead:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Bootstrap primarily uses the following media query ranges—or breakpoints—in our source Sass files for our layout, grid system, and components.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422761259283033)
,p_plug_name=>'{media queries}'
,p_parent_plug_id=>wwv_flow_api.id(23576421985643283025)
,p_region_template_options=>'#DEFAULT#:language-scss'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'// Extra small devices (portrait phones, less than 34em)',
'// No media query since this is the default in Bootstrap',
'',
'// Small devices (landscape phones, 34em and up)',
'@media (min-width: 34em) { ... }',
'',
'// Medium devices (tablets, 48em and up)',
'@media (min-width: 48em) { ... }',
'',
'// Large devices (desktops, 62em and up)',
'@media (min-width: 62em) { ... }',
'',
'// Extra large devices (large desktops, 75em and up)',
'@media (min-width: 75em) { ... }',
'',
'// All our media queries are available via Sass mixins:',
'@include media-breakpoint-up(xs) { ... }',
'@include media-breakpoint-up(sm) { ... }',
'@include media-breakpoint-up(md) { ... }',
'@include media-breakpoint-up(lg) { ... }',
'@include media-breakpoint-up(xl) { ... }',
'',
'// Example usage:',
'@include media-breakpoint-up(sm) {',
'  .some-class {',
'    display: block;',
'  }',
'}',
'',
'// We occasionally use media queries that go in the other direction:',
'',
'// Extra small devices (portrait phones, less than 34em)',
'@media (max-width: 33.9em) { ... }',
'',
'// Small devices (landscape phones, less than 48em)',
'@media (max-width: 47.9em) { ... }',
'',
'// Medium devices (tablets, less than 62em)',
'@media (max-width: 61.9em) { ... }',
'',
'// Large devices (desktops, less than 75em)',
'@media (max-width: 74.9em) { ... }',
'',
'// Extra large devices (large desktops)',
'// No media query since the extra-large breakpoint has no upper bound on its width',
'',
'// Once again, these media queries are also available via Sass mixins:',
'@include media-breakpoint-down(xs) { ... }',
'@include media-breakpoint-down(sm) { ... }',
'@include media-breakpoint-down(md) { ... }',
'@include media-breakpoint-down(lg) { ... }',
'@include media-breakpoint-down(xl) { ... }'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422362590283029)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24130653514909011910)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'PAGE'
,p_attribute_02=>'SINGLE'
,p_attribute_06=>'CONTAINER_FLUID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23576422461217283030)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23576421741188283023)
,p_button_name=>'TOGGLE_PAGE_CONTAINER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:btn-block:btn-primary-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Toggle page container'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23576422540081283031)
,p_name=>'onClick TOGGLE_PAGE_CONTAINER'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23576422461217283030)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23576422638380283032)
,p_event_id=>wwv_flow_api.id(23576422540081283031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").toggleClass("ab-container-fluid");'
);
end;
/
prompt --application/pages/page_00105
begin
wwv_flow_api.create_page(
 p_id=>105
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Grid'
,p_page_mode=>'NORMAL'
,p_step_title=>'Grid'
,p_step_sub_title=>'Grid'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160131234338'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24202772872538960993)
,p_plug_name=>'Grid'
,p_region_template_options=>'#DEFAULT#:region-lead:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Bootstrap includes a powerful mobile-first grid system for building layouts of all shapes and sizes. It’s based on a 12 column layout and has multiple tiers, one for each <a href="f?p=&APP_ID.:100:#responsive-breakpoints">media query range</a>. Yo'
||'u can use it with Sass mixins or our predefined classes.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422806682283034)
,p_plug_name=>'Options'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="table-responsive">',
'  <table class="table table-bordered table-striped">',
'    <thead>',
'      <tr>',
'        <th></th>',
'        <th class="text-xs-center">',
'          Extra small<br>',
'          <small>&lt;544px</small>',
'        </th>',
'        <th class="text-xs-center">',
'          Small<br>',
'          <small>≥544px</small>',
'        </th>',
'        <th class="text-xs-center">',
'          Medium<br>',
'          <small>≥768px</small>',
'        </th>',
'        <th class="text-xs-center">',
'          Large<br>',
'          <small>≥992px</small>',
'        </th>',
'        <th class="text-xs-center">',
'          Extra large<br>',
'          <small>≥1200px</small>',
'        </th>',
'      </tr>',
'    </thead>',
'    <tbody>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Grid behavior</th>',
'        <td>Horizontal at all times</td>',
'        <td colspan="4">Collapsed to start, horizontal above breakpoints</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Container width</th>',
'        <td>None (auto)</td>',
'        <td>576px</td>',
'        <td>720px</td>',
'        <td>940px</td>',
'        <td>1140px</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Class prefix</th>',
'        <td><code>.col-xs-</code></td>',
'        <td><code>.col-sm-</code></td>',
'        <td><code>.col-md-</code></td>',
'        <td><code>.col-lg-</code></td>',
'        <td><code>.col-xl-</code></td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row"># of columns</th>',
'        <td colspan="5">12</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Gutter width</th>',
'        <td colspan="5">1.875rem / 30px (15px on each side of a column)</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Nestable</th>',
'        <td colspan="5">Yes</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Offsets</th>',
'        <td colspan="5">Yes</td>',
'      </tr>',
'      <tr>',
'        <th class="text-nowrap" scope="row">Column ordering</th>',
'        <td colspan="5">Yes</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422918160283035)
,p_plug_name=>'Example: Stacked-to-horizontal'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423004568283036)
,p_plug_name=>'1'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423178593283037)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423235762283038)
,p_plug_name=>'6'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423394942283039)
,p_plug_name=>'4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423446076283040)
,p_plug_name=>'9'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423518096283041)
,p_plug_name=>'3'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423640347283042)
,p_plug_name=>'5'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423706273283043)
,p_plug_name=>'7'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423847350283044)
,p_plug_name=>'11'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576423908542283045)
,p_plug_name=>'8'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424070860283046)
,p_plug_name=>'10'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424102749283047)
,p_plug_name=>'12'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424268773283048)
,p_plug_name=>'col-md-8'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424378201283049)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576424485127283050)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203417947284927401)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418027414927402)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418114417927403)
,p_plug_name=>'col-md-6'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418213411927404)
,p_plug_name=>'col-md-6'
,p_parent_plug_id=>wwv_flow_api.id(23576422918160283035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418314885927405)
,p_plug_name=>'Predefined classes'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>In addition to our semantic mixins, Bootstrap includes an extensive set of prebuilt classes for quickly creating grid columns. It includes options for device-based column sizing, reordering columns, and more.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418486774927406)
,p_plug_name=>'Example: Mobile, tablet, desktop'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418560400927407)
,p_plug_name=>'col-xs-12 col-sm-6 col-md-8'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-6'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418652320927408)
,p_plug_name=>'col-xs-6 col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_grid_column_css_classes=>'col-xs-6'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418786386927409)
,p_plug_name=>'col-xs-6 col-sm-4'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xs-6 col-sm-4'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418859029927410)
,p_plug_name=>'col-xs-6 col-sm-4'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'col-xs-6 col-sm-4'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203418942203927411)
,p_plug_name=>'col-xs-6 col-sm-4'
,p_parent_plug_id=>wwv_flow_api.id(24203418486774927406)
,p_region_template_options=>'#DEFAULT#:bg-primary'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xs-6 col-sm-4'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419045706927412)
,p_plug_name=>'Example: Offsetting columns'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419364817927415)
,p_plug_name=>'col-md-4'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419417909927416)
,p_plug_name=>'col-md-3 col-md-offset-3'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>3
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419542274927417)
,p_plug_name=>'col-md-4 col-md-offset-4'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>9
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419640012927418)
,p_plug_name=>'.col-md-3 .col-md-offset-3'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_column=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419742383927419)
,p_plug_name=>'col-md-6 col-md-offset-3'
,p_parent_plug_id=>wwv_flow_api.id(24203419045706927412)
,p_region_template_options=>'#DEFAULT#:bg-success'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419197642927413)
,p_plug_name=>'Example: Nesting columns'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419877788927420)
,p_plug_name=>'col-sm-9'
,p_parent_plug_id=>wwv_flow_api.id(24203419197642927413)
,p_region_template_options=>'#DEFAULT#:bg-info'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'col-sm-9'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419919952927421)
,p_plug_name=>'col-xs-4 col-sm-6'
,p_parent_plug_id=>wwv_flow_api.id(24203419877788927420)
,p_region_template_options=>'#DEFAULT#:bg-warning'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xs-4 col-sm-6'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420077133927422)
,p_plug_name=>'col-xs-8 col-sm-6'
,p_parent_plug_id=>wwv_flow_api.id(24203419877788927420)
,p_region_template_options=>'#DEFAULT#:bg-warning'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_css_classes=>'col-xs-8 col-sm-6'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203419218385927414)
,p_plug_name=>'Example: Column ordering'
,p_parent_plug_id=>wwv_flow_api.id(24202772872538960993)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420142694927423)
,p_plug_name=>'col-md-9 col-md-push-3'
,p_parent_plug_id=>wwv_flow_api.id(24203419218385927414)
,p_region_template_options=>'#DEFAULT#:bg-danger'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>9
,p_plug_grid_column_css_classes=>'col-md-push-3'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420232995927424)
,p_plug_name=>'col-md-3 col-md-pull-9'
,p_parent_plug_id=>wwv_flow_api.id(24203419218385927414)
,p_region_template_options=>'#DEFAULT#:bg-danger'
,p_plug_template=>wwv_flow_api.id(24203478387538954820)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'col-md-pull-9'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00110
begin
wwv_flow_api.create_page(
 p_id=>110
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Media objects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Media objects'
,p_step_sub_title=>'Media objects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(13552127774043124085)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160201135352'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420349417927425)
,p_plug_name=>'Media object'
,p_region_template_options=>'#DEFAULT#:region-lead:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The media object is an abstract element used as the basis for building more complex and repetitive components (like blog comments, Tweets, etc). Included is support for left and right aligned content, content alignment options, nesting, and more.<'
||'/p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24059366123367859445)
,p_name=>'Report'
,p_region_name=>'media-component'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_template=>wwv_flow_api.id(13552122302985116178)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(21640155195235038826)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24059366546805859451)
,p_query_column_id=>1
,p_column_alias=>'MEDIA_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Media title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24059366994606859453)
,p_query_column_id=>2
,p_column_alias=>'MEDIA_DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Media description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24059367390996859453)
,p_query_column_id=>3
,p_column_alias=>'MEDIA_IMG_SOURCE'
,p_column_display_sequence=>3
,p_column_heading=>'Media img source'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24059367743108859454)
,p_query_column_id=>4
,p_column_alias=>'MEDIA_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Media link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420448544927426)
,p_plug_name=>'Report SQL'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_region_template_options=>'#DEFAULT#:title-h3:language-sql'
,p_plug_template=>wwv_flow_api.id(24202268772490861045)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla...'' media_description',
'    , ''...'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla...'' media_description',
'    , ''...'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla...'' media_description',
'    , ''...'' media_img_source',
'    , ''#'' media_link',
'from dual'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420505541927427)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REPORT'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'media-component'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24203420629163927428)
,p_plug_name=>'List'
,p_parent_plug_id=>wwv_flow_api.id(24203420349417927425)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(24236980523314424955)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(11675635619991185939)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00115
begin
wwv_flow_api.create_page(
 p_id=>115
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Responsive utilities'
,p_page_mode=>'NORMAL'
,p_step_title=>'Responsive utilities'
,p_step_sub_title=>'Responsive utilities'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160131235343'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24204624288683406866)
,p_plug_name=>'Responsive utilities'
,p_region_template_options=>'#DEFAULT#:region-lead:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Part of Bootstrap’s job is to provide an elegant, consistent, and simple baseline to build upon. We use Reboot, a collection of element-specific CSS changes in a single file, to kickstart that.</p>',
'',
'<p>Because of Reboot, some of the core APEX CSS styles may be overwritten. This is to ensure that we get a pure Bootstrap experience.</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00200
begin
wwv_flow_api.create_page(
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Reboot'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reboot'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160130185519'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576421682313283022)
,p_plug_name=>'Reboot'
,p_region_template_options=>'#DEFAULT#:region-lead:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Part of Bootstrap’s job is to provide an elegant, consistent, and simple baseline to build upon. We use Reboot, a collection of element-specific CSS changes in a single file, to kickstart that.</p>',
'',
'<p>Because of Reboot, some of the core APEX CSS styles may be overwritten. This is to ensure that we get a pure Bootstrap experience.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00250
begin
wwv_flow_api.create_page(
 p_id=>250
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Tables'
,p_page_mode=>'NORMAL'
,p_step_title=>'Tables'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(13552127774043124085)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160128004108'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22741030222193885420)
,p_plug_name=>'Tables'
,p_region_template_options=>'#DEFAULT#:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Due to the widespread use of tables across third-party widgets like calendars and date pickers, we’ve designed our tables to be <strong>opt-in</strong>. Just add the base class <code>.table</code> to any <code>&lt;table&gt;</code>.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(23440232480333619766)
,p_name=>'{media}'
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual',
'',
'union all',
'',
'select ''Media title'' media_title',
'    , ''Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue fe'
||'lis in faucibus.'' media_description',
'    , ''data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F6'
||'4x64%0ACreated%20with%20Holder.js%202.8.2.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151dfe461b9%20'
||'text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151dfe461b9%22%3E%3Crect%20width%3D%2264%22%20height%'
||'3D%2264%22%20fill%3D%22%23777%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2214.5%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E'' media_img_source',
'    , ''#'' media_link',
'from dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(21640155195235038826)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23440232899226619769)
,p_query_column_id=>1
,p_column_alias=>'MEDIA_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Media title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23440233253994619770)
,p_query_column_id=>2
,p_column_alias=>'MEDIA_DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Media description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23440233699633619771)
,p_query_column_id=>3
,p_column_alias=>'MEDIA_IMG_SOURCE'
,p_column_display_sequence=>3
,p_column_heading=>'Media img source'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23440234054827619771)
,p_query_column_id=>4
,p_column_alias=>'MEDIA_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Media link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00300
begin
wwv_flow_api.create_page(
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Buttons'
,p_page_mode=>'NORMAL'
,p_step_title=>'Buttons'
,p_step_sub_title=>'Buttons'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160131000730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988399027769411789)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:region-lead:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Use Bootstrap’s custom button styles for actions in forms, dialogs, and more. Includes support for a handful of contextual variations, sizes, states, and more.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576421159101283017)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:title-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'disabled-button'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988399482993411795)
,p_plug_name=>'Styles'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988399862801411795)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(23988399482993411795)
,p_region_template_options=>'#DEFAULT#:title-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'STYLE'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988400211725411796)
,p_plug_name=>'Outline'
,p_parent_plug_id=>wwv_flow_api.id(23988399482993411795)
,p_region_template_options=>'#DEFAULT#:title-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988403058217411800)
,p_plug_name=>'Standard'
,p_parent_plug_id=>wwv_flow_api.id(23988399482993411795)
,p_region_template_options=>'#DEFAULT#:title-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988406227327411802)
,p_plug_name=>'Sizes'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988418273694411806)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:title-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'GROUP'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_05=>'SIZE'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988418615063411806)
,p_plug_name=>'Disabled'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988419846617411807)
,p_plug_name=>'Block'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23988421058113411808)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(23988399027769411789)
,p_region_template_options=>'#DEFAULT#:title-h5'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'BUTTON'
,p_attribute_02=>'SINGLE'
,p_attribute_04=>'CUSTOM_ATTRIBUTES'
,p_attribute_06=>'FULL_WIDTH'
,p_attribute_07=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988400624170411797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'PRIMARY_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-primary-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Primary'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988403811558411800)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'PRIMARY'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Primary'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988406672801411803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988406227327411802)
,p_button_name=>'Large1'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Large'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988419014170411807)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988418615063411806)
,p_button_name=>'DISABLED_BUTTON'
,p_button_static_id=>'disabled-button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Disabled'
,p_button_position=>'BODY'
,p_button_cattributes=>'disabled'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988420207089411808)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23988419846617411807)
,p_button_name=>'BLOCK_BUTTON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-block:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Block'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988401025242411798)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'SECONDARY_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Secondary'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988419401945411807)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23988418615063411806)
,p_button_name=>'DISABLED_BUTTON_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Disabled'
,p_button_position=>'BODY'
,p_button_cattributes=>'disabled'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988420618034411808)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23988419846617411807)
,p_button_name=>'BLOCK_BUTTON_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-block:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Block'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988401843962411799)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'SUCCESS_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-success-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Success'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988404208631411801)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'SECONDARY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Secondary'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988407056505411803)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23988406227327411802)
,p_button_name=>'Large2'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-lg:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Large'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988402682143411799)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'INFO_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-info-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Info'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988405042535411801)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'SUCCESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-success'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Success'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988407408609411805)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23988406227327411802)
,p_button_name=>'Small1'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-sm:btn-primary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Small'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988401457948411798)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'WARNING_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-warning-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Warning'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988405829634411802)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'INFO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-info'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Info'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988407849305411805)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(23988406227327411802)
,p_button_name=>'Small2'
,p_button_static_id=>'component-button-primary'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-sm:btn-secondary'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Small'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988402299687411799)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(23988400211725411796)
,p_button_name=>'DANGER_OUTLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-danger-outline'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Danger'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988404680139411801)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'WARNING'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-warning'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Warning'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988405424427411801)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'DANGER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-danger'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Danger'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23988403499300411800)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(23988403058217411800)
,p_button_name=>'LINK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:btn-link'
,p_button_template_id=>wwv_flow_api.id(13552300091472216698)
,p_button_image_alt=>'Link'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00305
begin
wwv_flow_api.create_page(
 p_id=>305
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Button group'
,p_page_mode=>'NORMAL'
,p_step_title=>'Button group'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160128014214'
);
end;
/
prompt --application/pages/page_00330
begin
wwv_flow_api.create_page(
 p_id=>330
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Jumbotron'
,p_page_mode=>'NORMAL'
,p_step_title=>'Jumbotron'
,p_step_sub_title=>'Jumbotron'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160131000730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24132252861766146105)
,p_plug_name=>'Jumbotron'
,p_region_template_options=>'#DEFAULT#:region-lead:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24132253284661146108)
,p_plug_name=>'Hello world!'
,p_region_name=>'jumbotron-example'
,p_parent_plug_id=>wwv_flow_api.id(24132252861766146105)
,p_region_template_options=>'#DEFAULT#:title-h1'
,p_plug_template=>wwv_flow_api.id(23440519442971713102)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24132253643735146109)
,p_plug_name=>'APEX Documentation'
,p_parent_plug_id=>wwv_flow_api.id(24132252861766146105)
,p_region_template_options=>'#DEFAULT#:title-h3'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_ME.VMORNEAU.TEMPLATE.DOCUMENTATION'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'REGION'
,p_attribute_02=>'COMPONENT'
,p_attribute_03=>'jumbotron-example'
,p_attribute_04=>'ALL_TEMPLATE_OPTIONS:CUSTOM_ATTRIBUTES'
,p_attribute_07=>'N'
);
end;
/
prompt --application/pages/page_00335
begin
wwv_flow_api.create_page(
 p_id=>335
,p_user_interface_id=>wwv_flow_api.id(18663152251353564495)
,p_name=>'Label'
,p_page_mode=>'NORMAL'
,p_step_title=>'Label'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'VINCENT.MORNEAU@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160130192348'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23576422097698283026)
,p_plug_name=>'Label'
,p_region_template_options=>'#DEFAULT#:region-lead:title-h1'
,p_plug_template=>wwv_flow_api.id(13552122302985116178)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-md-pull-3'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
