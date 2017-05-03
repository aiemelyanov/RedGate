CREATE TABLE apex_030200.wwv_mig_project_triggers (
  "ID" NUMBER NOT NULL,
  project_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  trigger_name VARCHAR2(1000 BYTE),
  form_level VARCHAR2(1 BYTE),
  block_level VARCHAR2(1 BYTE),
  item_level VARCHAR2(1 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_proj_trig_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_proj_trig_uk1 UNIQUE ("ID",project_id,security_group_id),
  CONSTRAINT wwv_mig_proj_trig_fk FOREIGN KEY (project_id) REFERENCES apex_030200.wwv_mig_projects ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_proj_trig_fk2 FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);