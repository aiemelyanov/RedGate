CREATE TABLE apex_030200.wwv_flow_online_help_ja (
  "ID" NUMBER NOT NULL,
  url VARCHAR2(4000 BYTE) NOT NULL,
  filename VARCHAR2(4000 BYTE) NOT NULL,
  title VARCHAR2(4000 BYTE) NOT NULL,
  cset VARCHAR2(100 BYTE) NOT NULL,
  plaintext CLOB,
  CONSTRAINT wwv_flow_online_help_ja_pk PRIMARY KEY ("ID")
);