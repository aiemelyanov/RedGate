CREATE TABLE apex_030200.wwv_flow_shared_qry_sql_stmts (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  shared_query_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  sql_statement CLOB NOT NULL,
  created_on DATE,
  created_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(255 BYTE),
  CONSTRAINT wwv_flow_sqry_sql_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_sqry_sql_flow_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_flow_sqry_sql_sqry_fk FOREIGN KEY (shared_query_id) REFERENCES apex_030200.wwv_flow_shared_queries ("ID") ON DELETE CASCADE
);