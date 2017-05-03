CREATE TABLE apex_030200.wwv_flow_sw_stmts (
  "ID" NUMBER NOT NULL,
  file_id NUMBER NOT NULL,
  stmt_number NUMBER,
  src_line_number NUMBER,
  "OFFSET" NUMBER,
  "LENGTH" NUMBER,
  stmt_class NUMBER,
  stmt_id NUMBER,
  isrunnable VARCHAR2(1 BYTE),
  stmt CLOB,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_sw_stmts_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_sw_stmts_fk2 FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);