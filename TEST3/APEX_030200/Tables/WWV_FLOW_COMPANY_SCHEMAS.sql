CREATE TABLE apex_030200.wwv_flow_company_schemas (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "SCHEMA" VARCHAR2(30 BYTE),
  company_schema_comments VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_company_schemas_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_comp_schemas_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);