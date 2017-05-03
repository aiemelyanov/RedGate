CREATE TABLE apex_030200.wwv_flow_lov_values (
  "ID" NUMBER NOT NULL,
  list_owner VARCHAR2(255 BYTE) NOT NULL,
  list_name VARCHAR2(255 BYTE) NOT NULL,
  list_display_value VARCHAR2(255 BYTE),
  list_return_value VARCHAR2(255 BYTE) NOT NULL,
  list_sequence NUMBER,
  list_disp_cond VARCHAR2(4000 BYTE),
  list_display_cond_type VARCHAR2(30 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_lov_values_pk PRIMARY KEY ("ID")
);