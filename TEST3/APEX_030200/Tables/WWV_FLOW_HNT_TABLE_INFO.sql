CREATE TABLE apex_030200.wwv_flow_hnt_table_info (
  table_id NUMBER NOT NULL,
  "SCHEMA" VARCHAR2(30 BYTE) NOT NULL,
  table_name VARCHAR2(30 BYTE) NOT NULL,
  form_region_title VARCHAR2(255 BYTE),
  report_region_title VARCHAR2(255 BYTE),
  created_by VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  title VARCHAR2(255 BYTE),
  CONSTRAINT wwv_flow_hnt_table_info_pk PRIMARY KEY (table_id),
  CONSTRAINT wwv_flow_hnt_table_info_uk UNIQUE ("SCHEMA",table_name)
);