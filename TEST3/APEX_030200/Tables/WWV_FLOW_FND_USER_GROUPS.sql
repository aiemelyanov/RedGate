CREATE TABLE apex_030200.wwv_flow_fnd_user_groups (
  "ID" NUMBER NOT NULL,
  group_name VARCHAR2(255 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  group_desc VARCHAR2(4000 BYTE),
  CONSTRAINT fnd_flow_user_group_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_fnd_user_grps_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);