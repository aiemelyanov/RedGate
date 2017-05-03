CREATE TABLE apex_030200.wwv_flow_step_item_help (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  flow_item_id NUMBER,
  help_text VARCHAR2(4000 BYTE),
  reference_id NUMBER,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  item_help_text_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_page_helptext_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_item_helptext_fk FOREIGN KEY (flow_item_id) REFERENCES apex_030200.wwv_flow_step_items ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_flow_page_helptext_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);