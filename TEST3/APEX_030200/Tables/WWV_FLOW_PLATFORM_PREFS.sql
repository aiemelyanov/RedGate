CREATE TABLE apex_030200.wwv_flow_platform_prefs (
  "ID" NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  "VALUE" VARCHAR2(4000 BYTE) NOT NULL,
  pref_desc VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_platform_prefs_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_platform_prefs_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);