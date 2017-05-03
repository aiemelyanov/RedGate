CREATE TABLE apex_030200.wwv_flow_company_types (
  "ID" NUMBER NOT NULL,
  company_type VARCHAR2(30 BYTE) NOT NULL,
  type_description VARCHAR2(255 BYTE) NOT NULL,
  CONSTRAINT wwv_flow_company_types_pk PRIMARY KEY ("ID")
);