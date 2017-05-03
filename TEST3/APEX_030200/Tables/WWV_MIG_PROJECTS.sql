CREATE TABLE apex_030200.wwv_mig_projects (
  "ID" NUMBER NOT NULL,
  migration_name VARCHAR2(400 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  migration_type VARCHAR2(100 BYTE) CONSTRAINT valid_mig_type CHECK (migration_type in ('access','forms')),
  description VARCHAR2(2000 BYTE),
  database_schema VARCHAR2(400 BYTE),
  app_flag VARCHAR2(1 BYTE) DEFAULT 'N' CONSTRAINT wwv_mig_proj_app_flag CHECK (app_flag in ('Y','N')),
  generated_application_id NUMBER,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_proj_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_proj_uk1 UNIQUE (migration_name,security_group_id),
  CONSTRAINT wwv_mig_proj_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);