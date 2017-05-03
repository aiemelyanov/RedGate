CREATE TABLE apex_030200.wwv_flow_qb_saved_join (
  "ID" NUMBER NOT NULL,
  field1 VARCHAR2(255 BYTE) NOT NULL,
  field2 VARCHAR2(255 BYTE) NOT NULL,
  cond VARCHAR2(1 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT pk_wwv_flow_qb_saved_join PRIMARY KEY ("ID",field1,field2),
  FOREIGN KEY ("ID") REFERENCES apex_030200.wwv_flow_qb_saved_query ("ID") ON DELETE CASCADE
);