CREATE TABLE apex_030200.wwv_flow_pages_reserved (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  flow_session NUMBER,
  created_on DATE,
  created_by VARCHAR2(255 BYTE),
  CONSTRAINT wwv_flow_pages_reserved_pk PRIMARY KEY ("ID",flow_id),
  CONSTRAINT wwv_flow_pages_reserved_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);