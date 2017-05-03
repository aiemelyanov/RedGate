CREATE TABLE apex_030200.wwv_flow_page_groups (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER,
  group_name VARCHAR2(255 BYTE) NOT NULL,
  group_desc VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_page_grp_pk PRIMARY KEY ("ID"),
  FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);