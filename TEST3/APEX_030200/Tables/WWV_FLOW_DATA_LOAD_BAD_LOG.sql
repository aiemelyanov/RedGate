CREATE TABLE apex_030200.wwv_flow_data_load_bad_log (
  "ID" NUMBER,
  load_id NUMBER,
  security_group_id NUMBER,
  errm VARCHAR2(4000 BYTE),
  "DATA" VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_data_load_bad_log_fk1 FOREIGN KEY (load_id) REFERENCES apex_030200.wwv_flow_data_load_unload ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_flow_data_load_bad_log_fk2 FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);