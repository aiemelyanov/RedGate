CREATE OR REPLACE FORCE VIEW apex_030200.apex_developer_audit_log (application_id,developer,audit_date,"UPDATED",audit_action,page_id,page_name,"COMPONENT",component_name,security_group_id,flow_table_pk) AS
select
       flow_id              application_id,
       flow_user            developer,
       audit_date           audit_date,
       audit_date           updated,
       audit_action         audit_action,
       page_id              page_id,
       (select name
        from wwv_flow_steps
        where flow_id = a.flow_id and
            id = a.page_id) page_name,
       FLOW_TABLE           component,
       decode(FLOW_TABLE,
'WWV_FLOW_PAGE_PLUGS',(select plug_name from wwv_flow_page_plugs where id = a.flow_table_pk),
'WWV_FLOW_ITEMS',(select name from wwv_flow_items where id = a.flow_table_pk),
'WWV_FLOW_STEP_BRANCHES',(select substr(BRANCH_ACTION,1,50) BRANCH_ACTION from wwv_flow_step_branches where id=a.flow_table_pk),
'WWV_FLOW_PROCESSING',(select process_name from wwv_flow_processing where id=a.flow_table_pk),
'WWV_FLOW_TOPLEVEL_TABS',(select TAB_NAME from WWV_FLOW_TOPLEVEL_TABS where id=a.flow_table_pk),
'WWV_FLOW_LISTS_OF_VALUES_DATA',(select lov_return_value from WWV_FLOW_LIST_OF_VALUES_DATA where id=a.flow_table_pk),
'WWV_FLOW_STEP_ITEM_HELP',(select name from wwv_flow_step_items where id = (select flow_item_id from WWV_FLOW_STEP_ITEM_HELP where id=a.flow_table_pk)),
'WWV_FLOW_DEVELOPERS',(select USERID from WWV_FLOW_DEVELOPERS where id=a.flow_table_pk),
'WWV_FLOW_LISTS_OF_VALUES$',(select LOV_NAME from WWV_FLOW_LISTS_OF_VALUES$ where id=a.flow_table_pk),
'WWV_FLOW_PAGE_PLUG_TEMPLATES',(select PAGE_PLUG_TEMPLATE_NAME from WWV_FLOW_PAGE_PLUG_TEMPLATES where id=a.flow_table_pk),
'WWV_FLOWS',flow_id,
'WWV_FLOW_STEP_COMPUTATIONS',(select COMPUTATION_ITEM from WWV_FLOW_STEP_COMPUTATIONS where id=a.flow_table_pk),
'WWV_FLOW_CUSTOM_AUTH_SETUPS',(select NAME from WWV_FLOW_CUSTOM_AUTH_SETUPS where id=a.flow_table_pk),
'WWV_FLOW_ICON_BAR',(select ICON_SEQUENCE||'. '||ICON_SUBTEXT n from WWV_FLOW_ICON_BAR where id=a.flow_table_pk),
'WWV_FLOW_STEP_BUTTONS',(select BUTTON_NAME||' "'||BUTTON_IMAGE_ALT||'"' n from wwv_flow_step_buttons where id=a.flow_table_pk),
'WWV_FLOW_STEPS',flow_table_pk,
'WWV_FLOW_COMPUTATIONS',(select COMPUTATION_SEQUENCE||'. '||COMPUTATION_ITEM n from WWV_FLOW_COMPUTATIONS where id=a.flow_table_pk),
'WWV_FLOW_TEMPLATES',(select NAME from WWV_FLOW_TEMPLATES where id=a.flow_table_pk),
'WWV_FLOW_TABS',(select TAB_NAME||' "'||tab_text||'"' n from WWV_FLOW_TABS where id=a.flow_table_pk),
'WWV_FLOW_STEP_ITEMS',(select name from wwv_flow_step_items where id = a.flow_table_pk),
'WWV_FLOW_MESSAGES$',(select NAME from WWV_FLOW_MESSAGES$ where id = a.flow_table_pk),
'WWV_FLOW_LIST_ITEMS',(select LIST_ITEM_LINK_TEXT from wwv_flow_list_items where id=a.flow_table_pk),
'WWV_FLOW_STEP_VALIDATIONS',(select VALIDATION_SEQUENCE||'. '||VALIDATION_NAME n from WWV_FLOW_STEP_VALIDATIONS where id = a.flow_table_pk),
'WWV_FLOW_STEP_PROCESSING',(select process_name from wwv_flow_step_processing where id=a.flow_table_pk),
'WWV_FLOW_ROW_TEMPLATES',(select ROW_TEMPLATE_NAME from WWV_FLOW_ROW_TEMPLATES where id=a.flow_table_pk),
'WWV_FLOW_LISTS',(select NAME from WWV_FLOW_LISTS where id=a.flow_table_pk),
'WWV_FLOW_THEMES',(select theme_id||'. '||THEME_NAME n from WWV_FLOW_THEMES where id=a.flow_table_pk),
'WWV_FLOW_SHORTCUTS',(select SHORTCUT_NAME from WWV_FLOW_SHORTCUTS where id=a.flow_table_pk),
'WWV_FLOW_MENU_OPTIONS',(select short_name from wwv_flow_menu_options where id = a.flow_table_pk),
'WWV_FLOW_LIST_TEMPLATES',(select LIST_TEMPLATE_NAME from WWV_FLOW_LIST_TEMPLATES where id=a.flow_table_pk),
FLOW_TABLE_PK) component_name,
security_group_id,
flow_table_pk
from   wwv_flow_builder_audit_trail a;