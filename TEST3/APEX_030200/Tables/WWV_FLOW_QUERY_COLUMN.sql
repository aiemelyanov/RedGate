CREATE TABLE apex_030200.wwv_flow_query_column (
  "ID" NUMBER NOT NULL,
  query_id NUMBER NOT NULL,
  query_object_id NUMBER,
  column_number NUMBER NOT NULL,
  column_alias VARCHAR2(255 BYTE) NOT NULL,
  column_sql_expression VARCHAR2(4000 BYTE) NOT NULL,
  column_group_by_sequence NUMBER,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT query_column_pk PRIMARY KEY ("ID"),
  CONSTRAINT query_column_to_qry_object_fk FOREIGN KEY (query_object_id) REFERENCES apex_030200.wwv_flow_query_object ("ID") ON DELETE CASCADE,
  CONSTRAINT query_column_to_query_fk FOREIGN KEY (query_id) REFERENCES apex_030200.wwv_flow_query_definition ("ID") ON DELETE CASCADE
);