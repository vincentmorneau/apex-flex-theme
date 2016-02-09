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
prompt --application/themes/102
begin
    wwv_flow.g_flow_theme_id := 102;
null;
end;
/
 
--
prompt  ...theme : 102
--
prompt  ...remove existing theme ...
begin
 wwv_flow_api.delete_theme(p_flow_id=> wwv_flow.g_flow_id , p_theme_id=>wwv_flow.g_flow_theme_id ,p_import=>'Y');
null;
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(13552126408703123857)
, p_theme_id => wwv_flow.g_flow_theme_id
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
, p_theme_id => wwv_flow.g_flow_theme_id
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
'<footer class="ab-footer bg-faded m-t-3">',
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
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button type="button" id="#BUTTON_ID#" class="btn #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#><i class="#ICON_CSS_CLASSES#"></i>#LABEL#</button>',
''))
,p_theme_class_id=>6
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_theme_class_id=>21
,p_preset_template_options=>'ab-h3'
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
'    </div>',
'</div>'))
,p_a01_label=>'Description'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(13552191103003150175)
,p_list_template_current=>'<li class="nav-item active"><a href="#LINK#" class="active"><i class="#ICON_CSS_CLASSES#"></i>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="nav-item"><a href="#LINK#"><i class="#ICON_CSS_CLASSES#"></i>#TEXT#</a></li>'
,p_list_template_name=>'Standard'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>9
,p_list_template_before_rows=>' <ul id="#LIST_ID#" class="nav #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(21625926247228069129)
,p_list_template_current=>'<a class="dropdown-item" href="#LINK#">#TEXT#</a>'
,p_list_template_noncurrent=>'<a class="dropdown-item" href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Single Button Dropdown'
,p_theme_id=>wwv_flow.g_flow_theme_id
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
'<div id="report-#REGION_STATIC_ID#" class="table #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>',
'<table class="report-pagination report-pagination-top" role="presentation">#TOP_PAGINATION#</table>',
'<table class="table">',
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>5
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21666197619017591379)
,p_template_name=>'Blockquote (Display only)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="hidden-xs-up">'
,p_template_body2=>'</label>'
,p_before_item=>'<blockquote class="blockquote #ITEM_CSS_CLASSES#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer class="blockquote-footer">#CURRENT_ITEM_HELP_TEXT#</footer>',
'</blockquote>'))
,p_before_element=>'<p class="m-b-0">'
,p_after_element=>'</p>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>5
,p_default_template_options=>'hide-blockquote-footer'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(21666767277169746701)
,p_template_name=>'Image (Display image)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="hidden-xs-up">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ab-image #ITEM_CSS_CLASSES#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<figcaption class="figure-caption">#CURRENT_ITEM_HELP_TEXT#</figcaption>',
'</div>'))
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>5
,p_default_template_options=>'ab-image-fluid'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(24675583319893454849)
,p_template_name=>'Figure (Display image)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="hidden-xs-up">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ab-image #ITEM_CSS_CLASSES#">'
,p_after_item=>'</div>'
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>5
,p_default_template_options=>'ab-image-fluid'
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
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(13552304218748229372)
,p_page_name=>'Popup - Standard'
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_theme_id=>wwv_flow.g_flow_theme_id
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(13552050620237054546)
,p_theme_id=>wwv_flow.g_flow_theme_id
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
,p_files_version=>23
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'&G_APP_IMAGES.lib/tether/dist/js/tether#MIN#.js',
'&G_APP_IMAGES.lib/bootstrap/js/bootstrap#MIN#.js',
'&G_APP_IMAGES.js/app#MIN#.js'))
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(24470518311035027269)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'Default'
,p_css_file_urls=>'https://localhost:3000/css/app#MIN#.css'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'https://localhost:3000/less/bootstrap.less'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(24512902506843607578)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'Flexbox'
,p_css_file_urls=>'https://localhost:3000/css/app-flex#MIN#.css'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'https://localhost:3000/less/bootstrap.less'
,p_theme_roller_read_only=>true
);
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_help_text=>'Media vertical alignment'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21625697731164856632)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21625758199483748056)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640024097869932393)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDE_CONTENT_DOWN_FROM'
,p_display_name=>'Hide Content Down From'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'The "Hide Content Down From" template option hides the element when the viewport is at the given breakpoint or smaller. For example, choosing "Medium" hides an element on extra-small, small, and medium viewports.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640024792861937988)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDE_CONTENT_UP_TO'
,p_display_name=>'Hide Content Up To'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'The "Hide Content Up To" template option hides the element when the viewport is at the given breakpoint or wider. For example, choosing "Medium" hides an element on medium, large, and extra-large viewports.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21640111269589797934)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'PRINT_UTILITIES'
,p_display_name=>'Print Utilities'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Use these for toggling content for print.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21666050145955709488)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HEADING_SIZE'
,p_display_name=>'Heading Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(21666849568988941560)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24059115783141614200)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BACKGROUND_COLOR'
,p_display_name=>'Background Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Nasily set the background of an element to any contextual class. Anchor components will darken on hover, just like the text classes.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24059131998901617081)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_COLOR'
,p_display_name=>'Text Color'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Convey meaning through color with a handful of emphasis utility classes. These may also be applied to links and will darken on hover just like our default link styles.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24128555486626837813)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_ALIGNMENT'
,p_display_name=>'Text Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24129625400640113232)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_TRANSFORM'
,p_display_name=>'Text Transform'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Transform text in components with text capitalization classes.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24202269104436861053)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LANGUAGE_TYPE'
,p_display_name=>'Language Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24360378903801962759)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24400284124319075630)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'MARGIN_TOP'
,p_display_name=>'Margin top'
,p_display_sequence=>900
,p_template_types=>'REGION'
,p_help_text=>'Apply "Margin top" to any element with a template option.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(24638563454136000092)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REPORT_THEAD_STYLE'
,p_display_name=>'Report thead style'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'None'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625719983708694492)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'btn-success'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625721104857702584)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'btn-info'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625722390622708850)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LINK'
,p_display_name=>'Link'
,p_display_sequence=>1
,p_css_classes=>'btn-link'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625725313197730703)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'PRIMARY_OUTLINE'
,p_display_name=>'Primary Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-primary-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625725891619738640)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SECONDARY_OUTLINE'
,p_display_name=>'Secondary Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-secondary-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625726725607743946)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WARNING_OUTLINE'
,p_display_name=>'Warning Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-warning-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625727641740745075)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DANGER_OUTLINE'
,p_display_name=>'Danger Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-danger-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625728619490862983)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SECONDARY'
,p_display_name=>'Secondary'
,p_display_sequence=>1
,p_css_classes=>'btn-secondary'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625729565526870441)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'btn-warning'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625729879538873669)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'btn-danger'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625751624982906980)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SUCCESS_OUTLINE'
,p_display_name=>'Success Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-success-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625752550344909027)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'INFO_OUTLINE'
,p_display_name=>'Info Outline'
,p_display_sequence=>1
,p_css_classes=>'btn-info-outline'
,p_group_id=>wwv_flow_api.id(21625697731164856632)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625759477913763290)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'btn-lg'
,p_group_id=>wwv_flow_api.id(21625758199483748056)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625759757428765096)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'btn-sm'
,p_group_id=>wwv_flow_api.id(21625758199483748056)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625773598184788498)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>1
,p_css_classes=>'btn-block'
,p_template_types=>'BUTTON'
,p_help_text=>'Create block level buttons—those that span the full width of a parent'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21625836112864099334)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'FIXED_HEADER'
,p_display_name=>'Fixed Header'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(13552127774043124085)
,p_css_classes=>'ab-navbar-fixed-top'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640112739818804832)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>2
,p_css_classes=>'hidden-sm-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640113299861805977)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>3
,p_css_classes=>'hidden-md-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640113812122807741)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>4
,p_css_classes=>'hidden-lg-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640119408359968948)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'XS'
,p_display_name=>'X-Small'
,p_display_sequence=>1
,p_css_classes=>'hidden-xs-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640121325350979905)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'XLARGE'
,p_display_name=>'X-Large'
,p_display_sequence=>5
,p_css_classes=>'hidden-xl-down'
,p_group_id=>wwv_flow_api.id(21640024097869932393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640122675546989037)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'X-SMALL'
,p_display_name=>'X-Small'
,p_display_sequence=>1
,p_css_classes=>'hidden-xs-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640135397168002790)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDDEN-MD-UP'
,p_display_name=>'Medium'
,p_display_sequence=>3
,p_css_classes=>'hidden-md-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640136286041008367)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDDEN-LG-UP'
,p_display_name=>'Large'
,p_display_sequence=>4
,p_css_classes=>'hidden-lg-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640136550714010098)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDDEN-XL-UP'
,p_display_name=>'X-Large'
,p_display_sequence=>5
,p_css_classes=>'hidden-xl-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640137091290013228)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'VISIBLE-PRINT-BLOCK'
,p_display_name=>'Visible Print Block'
,p_display_sequence=>1
,p_css_classes=>'visible-print-block'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640137692683015022)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'VISIBLE-PRINT-INLINE'
,p_display_name=>'Visible Print Inline'
,p_display_sequence=>2
,p_css_classes=>'visible-print-inline'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640141858219834672)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDDEN-SM-UP'
,p_display_name=>'Small'
,p_display_sequence=>2
,p_css_classes=>'hidden-sm-up'
,p_group_id=>wwv_flow_api.id(21640024792861937988)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640148564556017807)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'VISIBLE-PRINT-INLINE-BLOCK'
,p_display_name=>'Visible Inline Block'
,p_display_sequence=>3
,p_css_classes=>'visible-print-inline-block'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21640153484008019352)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDDEN-PRINT'
,p_display_name=>'Hidden'
,p_display_sequence=>4
,p_css_classes=>'hidden-print'
,p_group_id=>wwv_flow_api.id(21640111269589797934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666041001108550098)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'H1'
,p_display_name=>'H1'
,p_display_sequence=>1
,p_css_classes=>'ab-h1'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666042407878558530)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'H6'
,p_display_name=>'H6'
,p_display_sequence=>6
,p_css_classes=>'ab-h6'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666071554068718145)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'H2'
,p_display_name=>'H2'
,p_display_sequence=>2
,p_css_classes=>'ab-h2'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666072048037719568)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'H3'
,p_display_name=>'H3'
,p_display_sequence=>3
,p_css_classes=>'ab-h3'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666072581706722086)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>4
,p_css_classes=>'ab-h4'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666073176443723498)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'H5'
,p_display_name=>'H5'
,p_display_sequence=>5
,p_css_classes=>'ab-h5'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666095879490732266)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LEAD_TEXT'
,p_display_name=>'Lead Text'
,p_display_sequence=>2
,p_css_classes=>'region-lead'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666282125105664607)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'HIDE_BLOCKQUOTE_FOOTER'
,p_display_name=>'Hide Blockquote Footer'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666197619017591379)
,p_css_classes=>'hide-blockquote-footer'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666356972662859423)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-image-fluid'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(21666843144947779255)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_HEADING_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>0
,p_css_classes=>'ab-region-title-hidden'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059139373492013660)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_TEXT_PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'text-primary'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059140822186020128)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_TEXT_INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'text-info'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059141266729022189)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_TEXT_WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'text-warning'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059141923465023750)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_TEXT_DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'text-danger'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059164367752622390)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'bg-primary'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059165404281624143)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'bg-success'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166042593626850)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'INFO'
,p_display_name=>'Info'
,p_display_sequence=>1
,p_css_classes=>'bg-info'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166361121627983)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'bg-warning'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059166788431628913)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'bg-danger'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059167566968629938)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'INVERSE'
,p_display_name=>'Inverse'
,p_display_sequence=>1
,p_css_classes=>'bg-inverse'
,p_group_id=>wwv_flow_api.id(24059115783141614200)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059173144624632820)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'MUTED'
,p_display_name=>'Muted'
,p_display_sequence=>1
,p_css_classes=>'text-muted'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059191752019643216)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_TEXT_SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'text-success'
,p_group_id=>wwv_flow_api.id(24059131998901617081)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24059521481597336821)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'MASTER_JUMBOTRON'
,p_display_name=>'Master Jumbotron'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23440519442971713102)
,p_css_classes=>'master-jumbotron'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128544476563473535)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'text-xs-left'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128570676742476205)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_XS_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'text-xs-center'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24128599573734478423)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_XS_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>3
,p_css_classes=>'text-xs-right'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129332538610683267)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_XS_JUSTIFY'
,p_display_name=>'Justified'
,p_display_sequence=>1
,p_css_classes=>'text-justify'
,p_group_id=>wwv_flow_api.id(24128555486626837813)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129820066815118660)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_LOWERCASE'
,p_display_name=>'Lowercase'
,p_display_sequence=>1
,p_css_classes=>'text-lowercase'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129821301439121649)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_UPPERCASE'
,p_display_name=>'Uppercase'
,p_display_sequence=>1
,p_css_classes=>'text-uppercase'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24129822219309124426)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TEXT_CAPITALIZE'
,p_display_name=>'Capitalize'
,p_display_sequence=>1
,p_css_classes=>'text-capitalize'
,p_group_id=>wwv_flow_api.id(24129625400640113232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24201296342862684778)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CONTAINER_FLUID'
,p_display_name=>'Container Fluid'
,p_display_sequence=>1
,p_css_classes=>'ab-container-fluid'
,p_template_types=>'PAGE'
,p_help_text=>'Use .this for a full width container, spanning the entire width of the viewport.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24202269591009861054)
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
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
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'SQL'
,p_display_name=>'SQL'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(24202268772490861045)
,p_css_classes=>'language-sql'
,p_group_id=>wwv_flow_api.id(24202269104436861053)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24360382034750968666)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTON_XS_FLOAT_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'pull-xs-left'
,p_group_id=>wwv_flow_api.id(24360378903801962759)
,p_template_types=>'BUTTON'
,p_help_text=>'Float left on all viewport sizes'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24361086981300985957)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTON_XS_FLOAT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>1
,p_css_classes=>'center-block'
,p_group_id=>wwv_flow_api.id(24360378903801962759)
,p_template_types=>'BUTTON'
,p_help_text=>'Float center on all viewport sizes'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24363125803048989807)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTON_XS_FLOAT_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>3
,p_css_classes=>'pull-xs-right'
,p_group_id=>wwv_flow_api.id(24360378903801962759)
,p_template_types=>'BUTTON'
,p_help_text=>'Float right on all viewport sizes'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24363128931678994255)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'BUTTON_XS_FLOAT_NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_css_classes=>'pull-xs-none'
,p_group_id=>wwv_flow_api.id(24360378903801962759)
,p_template_types=>'BUTTON'
,p_help_text=>'Don''t float on all viewport sizes'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24400284488712075631)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_MARGINTOP0'
,p_display_name=>'0'
,p_display_sequence=>0
,p_css_classes=>'m-t-0'
,p_group_id=>wwv_flow_api.id(24400284124319075630)
,p_template_types=>'REGION'
,p_help_text=>'Margin top 0'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24400284873394075632)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_MARGINTOP1'
,p_display_name=>'1'
,p_display_sequence=>1
,p_css_classes=>'m-t-1'
,p_group_id=>wwv_flow_api.id(24400284124319075630)
,p_template_types=>'REGION'
,p_help_text=>'Margin top 1'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24400285240721075632)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_MARGINTOP2'
,p_display_name=>'2'
,p_display_sequence=>2
,p_css_classes=>'m-t-2'
,p_group_id=>wwv_flow_api.id(24400284124319075630)
,p_template_types=>'REGION'
,p_help_text=>'Margin top 2'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24400285600509075634)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGION_MARGINTOP3'
,p_display_name=>'3'
,p_display_sequence=>3
,p_css_classes=>'m-t-3'
,p_group_id=>wwv_flow_api.id(24400284124319075630)
,p_template_types=>'REGION'
,p_help_text=>'Margin top 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24555926452462430250)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGIONHEADINGSIZESUPER1'
,p_display_name=>'Super size 1'
,p_display_sequence=>7
,p_css_classes=>'ab-display-1'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24555927557071431908)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGIONHEADINGSIZESUPER2'
,p_display_name=>'Super size 2'
,p_display_sequence=>8
,p_css_classes=>'ab-display-2'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24555928381262434258)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGIONHEADINGSIZESUPER3'
,p_display_name=>'Super size 3'
,p_display_sequence=>9
,p_css_classes=>'ab-display-3'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24555973809276435852)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'REGIONHEADINGSIZESUPER4'
,p_display_name=>'Super size 4'
,p_display_sequence=>10
,p_css_classes=>'ab-display-4'
,p_group_id=>wwv_flow_api.id(21666050145955709488)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24638517463110990773)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TABLE_INVERSE'
,p_display_name=>'Table inverse'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-inverse'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24638818495987042562)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'THEAD_INVERSE'
,p_display_name=>'Inverse'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-thead-inverse'
,p_group_id=>wwv_flow_api.id(24638563454136000092)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24638868108048044818)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'THEAD_DEFAULT'
,p_display_name=>'Default'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-thead-default'
,p_group_id=>wwv_flow_api.id(24638563454136000092)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666957512989616847)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TABLE_STRIPED'
,p_display_name=>'Table striped'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-striped'
,p_template_types=>'REPORT'
,p_help_text=>'Use this to add zebra-striping to any table row within the <tbody>.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666967360255004826)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TABLE_RESPONSIVE'
,p_display_name=>'Table responsive'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'table-responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Create responsive tables by making them scroll horizontally on small devices (under 768px). When viewing on anything larger than 768px wide, you will not see any difference in these tables.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666969862666619210)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TABLE_BORDERED'
,p_display_name=>'Table bordered'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-bordered'
,p_template_types=>'REPORT'
,p_help_text=>'Add this for borders on all sides of the table and cells.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666971488961621593)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TABLE_HOVER'
,p_display_name=>'Table hover'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-hover'
,p_template_types=>'REPORT'
,p_help_text=>'Add this to enable a hover state on table rows within a <tbody>.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666983108175624062)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TABLE_SMALL'
,p_display_name=>'Table small'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-sm'
,p_template_types=>'REPORT'
,p_help_text=>'Add this to make tables more compact by cutting cell padding in half.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24666999550614007775)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'TABLE_REFLOW'
,p_display_name=>'Table reflow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(13552141119189127708)
,p_css_classes=>'ab-table-reflow'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675583671135454855)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(24675583319893454849)
,p_css_classes=>'ab-img-circle'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675584090474454856)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(24675583319893454849)
,p_css_classes=>'ab-image-fluid'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675584422731454856)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(24675583319893454849)
,p_css_classes=>'ab-img-rounded'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675584844990454856)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'THUMBNAIL'
,p_display_name=>'Thumbnail'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(24675583319893454849)
,p_css_classes=>'ab-img-thumbnail'
,p_group_id=>wwv_flow_api.id(21666849568988941560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(24675998799033483446)
,p_theme_id => wwv_flow.g_flow_theme_id
,p_name=>'ITEM_FIGURE'
,p_display_name=>'Figure'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(21666767277169746701)
,p_css_classes=>'ab-figure'
,p_template_types=>'FIELD'
,p_help_text=>'Anytime you need to display a piece of content—like an image—with an optional caption, consider using a figure.'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
