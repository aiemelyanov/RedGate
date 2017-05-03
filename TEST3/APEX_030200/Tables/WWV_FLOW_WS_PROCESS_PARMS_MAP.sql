CREATE TABLE apex_030200.wwv_flow_ws_process_parms_map (
  "ID" NUMBER NOT NULL,
  parameter_id NUMBER,
  process_id NUMBER,
  map_type VARCHAR2(10 BYTE) CONSTRAINT wwv_flow_ws_map_chk CHECK (map_type in ('ITEM','STATIC','COLLECTION')),
  parm_value VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_ws_map_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flows_ws_map_fk1 FOREIGN KEY (parameter_id) REFERENCES apex_030200.wwv_flow_ws_parameters ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_flow_ws_map_fk2 FOREIGN KEY (process_id) REFERENCES apex_030200.wwv_flow_step_processing ("ID") ON DELETE CASCADE
);