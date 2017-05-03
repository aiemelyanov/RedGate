CREATE TABLE apex_030200.wwv_flow_shortcut_usage_map (
  shortcut_id NUMBER,
  flow_id NUMBER,
  reference_id NUMBER,
  reference_id_type VARCHAR2(30 BYTE) CHECK (reference_id_type in (
                              'PAGE_HELP',
                              'ITEM_PROMPT',
                              'PAGE_PROCESS',
                              'REGION_TEMPLATE',
                              'PAGE_TEMPLATE',
                              'ROW_TEMPLATE',
                              'LIST_TEMPLATE',
                              'FLOW_PROCESS')),
  security_group_id NUMBER NOT NULL
);