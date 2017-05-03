CREATE TABLE apex_030200.wwv_flow_lists (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  list_status VARCHAR2(255 BYTE) CONSTRAINT wwv_flows_val_list_status CHECK (list_status in ('PERSONAL','PUBLIC')),
  list_displayed VARCHAR2(255 BYTE) CONSTRAINT wwv_flow_val_listdisplayed1 CHECK (list_displayed in ('ON_DEMAND','ALWAYS','NEVER','BY_DEFAULT')),
  display_row_template_id NUMBER,
  required_patch NUMBER,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  list_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_lists_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_lists_flow_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);