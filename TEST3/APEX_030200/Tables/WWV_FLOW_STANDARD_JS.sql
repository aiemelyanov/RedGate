CREATE TABLE apex_030200.wwv_flow_standard_js (
  "ID" NUMBER NOT NULL,
  javascript_name VARCHAR2(4000 BYTE),
  javascript_syntax VARCHAR2(4000 BYTE),
  example_01 VARCHAR2(4000 BYTE),
  example_02 VARCHAR2(4000 BYTE),
  example_03 VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_standard_js_pk PRIMARY KEY ("ID")
);