CREATE TABLE apex_030200.wwv_flow_charsets (
  "ID" NUMBER NOT NULL,
  display_name VARCHAR2(4000 BYTE) NOT NULL,
  iana_charset VARCHAR2(255 BYTE) NOT NULL,
  db_charset VARCHAR2(255 BYTE) NOT NULL,
  CONSTRAINT wwv_flow_charsets_pk PRIMARY KEY ("ID")
);