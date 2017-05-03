CREATE TABLE apex_030200.wwv_mig_generated_applications (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  project_id NUMBER NOT NULL,
  application_id NUMBER,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_gen_app_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_gen_app_flow_id_fk FOREIGN KEY (application_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_gen_app_proj_id_fk FOREIGN KEY (project_id) REFERENCES apex_030200.wwv_mig_projects ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_gen_app_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);