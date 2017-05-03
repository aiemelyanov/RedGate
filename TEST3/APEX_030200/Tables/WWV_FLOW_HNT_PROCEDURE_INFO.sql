CREATE TABLE apex_030200.wwv_flow_hnt_procedure_info (
  procedure_id NUMBER NOT NULL,
  "SCHEMA" VARCHAR2(30 BYTE) NOT NULL,
  procedure_name VARCHAR2(61 BYTE) NOT NULL,
  title VARCHAR2(255 BYTE),
  created_by VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_hnt_proc_info_pk PRIMARY KEY (procedure_id),
  CONSTRAINT wwv_flow_hnt_proc_info_uk UNIQUE ("SCHEMA",procedure_name)
);
COMMENT ON TABLE apex_030200.wwv_flow_hnt_procedure_info IS 'Contains information about each procedure in a schema.  This can be just a procedure or a procedure within a package.  This can be used by the wizards to default forms.';
COMMENT ON COLUMN apex_030200.wwv_flow_hnt_procedure_info.procedure_id IS 'System generated PK.';
COMMENT ON COLUMN apex_030200.wwv_flow_hnt_procedure_info."SCHEMA" IS 'Name of the schema owning the procedure.';
COMMENT ON COLUMN apex_030200.wwv_flow_hnt_procedure_info.procedure_name IS 'Name of the procedure or package and procedure in "package.procedure" format.';
COMMENT ON COLUMN apex_030200.wwv_flow_hnt_procedure_info.title IS 'Will become the region title.';
COMMENT ON COLUMN apex_030200.wwv_flow_hnt_procedure_info.created_by IS 'Auditing; user that created the record.';
COMMENT ON COLUMN apex_030200.wwv_flow_hnt_procedure_info.created_on IS 'Auditing; date the record was created.';
COMMENT ON COLUMN apex_030200.wwv_flow_hnt_procedure_info.last_updated_by IS 'Auditing; user that last modified the record.';
COMMENT ON COLUMN apex_030200.wwv_flow_hnt_procedure_info.last_updated_on IS 'Auditing; date the record was last modified.';