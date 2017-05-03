CREATE TABLE apex_030200.wwv_flow_dictionary$ (
  words VARCHAR2(255 BYTE),
  "OWNER" VARCHAR2(50 BYTE),
  language VARCHAR2(255 BYTE),
  words_capitalized VARCHAR2(255 BYTE),
  words_soundex VARCHAR2(10 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_dictionary_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);