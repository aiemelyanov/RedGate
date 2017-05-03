CREATE TABLE apex_030200.wwv_flow_preferences$ (
  "ID" NUMBER NOT NULL,
  user_id VARCHAR2(255 BYTE) NOT NULL,
  preference_name VARCHAR2(255 BYTE) NOT NULL,
  attribute_value VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_prefs_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_prefs_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);