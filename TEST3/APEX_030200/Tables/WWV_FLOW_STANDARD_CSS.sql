CREATE TABLE apex_030200.wwv_flow_standard_css (
  "ID" NUMBER NOT NULL,
  class_name VARCHAR2(4000 BYTE) NOT NULL,
  definition VARCHAR2(4000 BYTE) NOT NULL,
  example_01 VARCHAR2(4000 BYTE),
  example_02 VARCHAR2(4000 BYTE),
  class_category VARCHAR2(255 BYTE),
  CONSTRAINT wwv_flow_standard_css_pk PRIMARY KEY ("ID")
);