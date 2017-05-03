CREATE TABLE apex_030200.wwv_flow_developers (
  "ID" NUMBER NOT NULL,
  user_id NUMBER,
  userid VARCHAR2(255 BYTE) NOT NULL,
  flow_id NUMBER,
  email VARCHAR2(255 BYTE),
  developer_role VARCHAR2(4000 BYTE) NOT NULL,
  developer_comments VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_developers_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_dev_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);