CREATE TABLE apex_030200.wwv_flow_lists_of_values$ (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  lov_name VARCHAR2(255 BYTE) NOT NULL,
  lov_query VARCHAR2(4000 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  reference_id NUMBER,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  lov_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_lov_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_lov_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);