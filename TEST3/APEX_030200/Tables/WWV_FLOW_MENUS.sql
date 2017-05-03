CREATE TABLE apex_030200.wwv_flow_menus (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  menu_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_menus_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_menus_flow_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);