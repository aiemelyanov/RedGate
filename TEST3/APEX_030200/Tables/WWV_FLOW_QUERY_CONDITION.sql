CREATE TABLE apex_030200.wwv_flow_query_condition (
  "ID" NUMBER NOT NULL,
  query_id NUMBER NOT NULL,
  "CONDITION" VARCHAR2(4000 BYTE),
  cond_column VARCHAR2(255 BYTE),
  cond_id1 NUMBER,
  cond_id2 NUMBER,
  cond_root VARCHAR2(1 BYTE) CONSTRAINT valid_cond_root CHECK (cond_root in ('Y','N')),
  "OPERATOR" VARCHAR2(30 BYTE) NOT NULL CONSTRAINT valid_compound_operator CHECK ("OPERATOR" in (
                      		             'AND',
                      		             'OR',
                      		             'NOT',
                      		             'JOIN',
                      		             'NJOIN',
                      		             'NONE'
                                		)),
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_query_condition_pk PRIMARY KEY ("ID"),
  CONSTRAINT query_condition_to_query_fk FOREIGN KEY (query_id) REFERENCES apex_030200.wwv_flow_query_definition ("ID") ON DELETE CASCADE
);