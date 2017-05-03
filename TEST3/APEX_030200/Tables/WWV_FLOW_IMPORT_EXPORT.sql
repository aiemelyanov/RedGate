CREATE TABLE apex_030200.wwv_flow_import_export (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  data_id NUMBER,
  job_id NUMBER,
  parms VARCHAR2(4000 BYTE),
  schema_name VARCHAR2(30 BYTE),
  run_mode VARCHAR2(1 BYTE),
  "TIMEOUT" NUMBER DEFAULT 900,
  return_code NUMBER DEFAULT null,
  created_by VARCHAR2(100 BYTE),
  created_by_id NUMBER,
  started DATE DEFAULT null,
  ended DATE DEFAULT null,
  result CLOB DEFAULT empty_clob(),
  CONSTRAINT wwv_flow_imp_exp_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_imp_exp_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);