CREATE TABLE apex_030200.wwv_flow_lock_page (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER,
  object_id NUMBER,
  locked_by VARCHAR2(255 BYTE),
  locked_on DATE,
  lock_comment VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_lock_page_pk PRIMARY KEY ("ID"),
  FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);