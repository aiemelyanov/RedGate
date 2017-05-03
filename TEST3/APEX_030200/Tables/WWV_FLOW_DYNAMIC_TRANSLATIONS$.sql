CREATE TABLE apex_030200.wwv_flow_dynamic_translations$ (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER,
  translate_to_lang_code VARCHAR2(30 BYTE),
  translate_from_text VARCHAR2(4000 BYTE),
  translate_to_text VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_dyn_trans_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_dynamic_trans_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);