CREATE TABLE apex_030200.wwv_flow_query_object (
  "ID" NUMBER NOT NULL,
  query_id NUMBER NOT NULL,
  object_owner VARCHAR2(30 BYTE) NOT NULL,
  object_name VARCHAR2(30 BYTE) NOT NULL,
  object_alias VARCHAR2(255 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT query_object_pk PRIMARY KEY ("ID"),
  CONSTRAINT query_object_to_query_fk FOREIGN KEY (query_id) REFERENCES apex_030200.wwv_flow_query_definition ("ID") ON DELETE CASCADE
);