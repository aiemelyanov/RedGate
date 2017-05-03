CREATE TABLE apex_030200.wwv_flow_db_auth (
  db_auth_schema VARCHAR2(30 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_db_auth_pk PRIMARY KEY (db_auth_schema),
  CONSTRAINT wwv_flow_db_auth_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);