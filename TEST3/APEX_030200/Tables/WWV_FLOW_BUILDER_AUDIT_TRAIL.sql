CREATE TABLE apex_030200.wwv_flow_builder_audit_trail (
  "ID" NUMBER NOT NULL,
  audit_date DATE,
  audit_action VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_bld_audit_ck_a CHECK (audit_action in ('I','U','D')),
  flow_table VARCHAR2(30 BYTE),
  flow_table_pk NUMBER,
  flow_user VARCHAR2(255 BYTE),
  flow_id NUMBER,
  page_id NUMBER,
  security_group_id NUMBER NOT NULL,
  "SCN" NUMBER,
  audit_comment VARCHAR2(255 BYTE),
  CONSTRAINT wwv_flow_bld_audit_pk PRIMARY KEY ("ID")
);