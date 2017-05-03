CREATE TABLE apex_030200.wwv_flow_rschema_exceptions (
  "ID" NUMBER NOT NULL,
  schema_id NUMBER NOT NULL,
  workspace_name VARCHAR2(255 BYTE) NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_rschema_exceptions_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_rschema_exceptions_fk FOREIGN KEY (schema_id) REFERENCES apex_030200.wwv_flow_restricted_schemas ("ID") ON DELETE CASCADE
);