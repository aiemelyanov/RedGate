CREATE TABLE apex_030200.wwv_flow_companies (
  "ID" NUMBER NOT NULL,
  provisioning_company_id NUMBER NOT NULL,
  short_name VARCHAR2(255 BYTE) NOT NULL,
  first_schema_provisioned VARCHAR2(30 BYTE) NOT NULL,
  allow_plsql_editing VARCHAR2(1 BYTE),
  last_login DATE,
  expire_fnd_user_accounts VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_companies_expire CHECK (expire_fnd_user_accounts in ('Y','N')),
  account_lifetime_days NUMBER,
  fnd_user_max_login_failures NUMBER,
  builder_notification_message VARCHAR2(4000 BYTE),
  UNIQUE (provisioning_company_id),
  CONSTRAINT wwv_flow_companies_pk PRIMARY KEY ("ID")
);