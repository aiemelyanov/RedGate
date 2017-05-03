CREATE TABLE apex_030200.wwv_flow_sw_create_keywords (
  "ID" NUMBER NOT NULL,
  keyword VARCHAR2(20 BYTE),
  stmt_class NUMBER(*,0),
  stmt_id NUMBER(*,0),
  isrunnable VARCHAR2(1 BYTE),
  CONSTRAINT wwv_flow_sw_ckeywords_pk PRIMARY KEY ("ID")
);