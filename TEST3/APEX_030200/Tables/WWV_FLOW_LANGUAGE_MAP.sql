CREATE TABLE apex_030200.wwv_flow_language_map (
  "ID" NUMBER NOT NULL,
  primary_language_flow_id NUMBER,
  translation_flow_id NUMBER NOT NULL,
  translation_flow_language_code VARCHAR2(30 BYTE) NOT NULL,
  trans_flow_lang_code_root VARCHAR2(30 BYTE),
  translation_image_directory VARCHAR2(255 BYTE),
  translation_comments VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  map_comments VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_lang_map_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_lang_flow_id_fk FOREIGN KEY (primary_language_flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);