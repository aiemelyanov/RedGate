CREATE TABLE apex_030200.wwv_flow_sw_binds (
  "ID" NUMBER NOT NULL,
  file_id NUMBER NOT NULL,
  stmt_num NUMBER NOT NULL,
  bind_type VARCHAR2(255 BYTE) CONSTRAINT wwv_valid_bind_type CHECK (bind_type in (
                         'BIND',
                         'SUBSTITUTION')),
  "NAME" VARCHAR2(255 BYTE),
  "VALUE" VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_sw_bind_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_sw_bind_fk2 FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);