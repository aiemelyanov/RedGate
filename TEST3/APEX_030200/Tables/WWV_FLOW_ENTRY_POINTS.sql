CREATE TABLE apex_030200.wwv_flow_entry_points (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  page_reset VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  entry_point_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_entry_points_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_entry_points_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);