CREATE TABLE apex_030200.wwv_flow_qb_saved_query (
  "ID" NUMBER NOT NULL,
  query_owner VARCHAR2(255 BYTE) NOT NULL,
  title VARCHAR2(255 BYTE) NOT NULL,
  qb_sql CLOB,
  description VARCHAR2(4000 BYTE),
  query_type VARCHAR2(1 BYTE) NOT NULL CHECK (query_type in ('P','R','W')),
  created_by VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_qb_saved_query_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_qb_saved_query_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);