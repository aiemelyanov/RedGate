CREATE TABLE apex_030200.wwv_flow_banner (
  "ID" NUMBER,
  banner CLOB,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_banner_fk FOREIGN KEY ("ID") REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);