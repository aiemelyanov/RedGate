CREATE TABLE apex_030200.wwv_flow_sw_sql_cmds (
  "ID" NUMBER NOT NULL,
  command CLOB,
  parsed_schema VARCHAR2(30 BYTE),
  created_by VARCHAR2(255 BYTE),
  created_on DATE,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_sw_sql_cmds_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_sw_sql_cmds_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);