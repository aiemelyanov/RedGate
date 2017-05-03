CREATE TABLE apex_030200.wwv_flow_application_groups (
  "ID" NUMBER NOT NULL,
  group_name VARCHAR2(255 BYTE) NOT NULL,
  group_comment VARCHAR2(4000 BYTE),
  created_on DATE,
  created_by VARCHAR2(255 BYTE),
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_app_group_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_app_groups_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);