CREATE TABLE apex_030200.wwv_flow_restricted_schemas (
  "ID" NUMBER NOT NULL,
  "SCHEMA" VARCHAR2(30 BYTE) NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_restrict_schema_pk PRIMARY KEY ("ID")
);