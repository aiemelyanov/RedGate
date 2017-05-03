CREATE TABLE apex_030200.wwv_flow_required_roles (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  role_name VARCHAR2(30 BYTE),
  security_group_id NUMBER,
  CONSTRAINT wwv_flow_req_roles_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_req_roles_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);