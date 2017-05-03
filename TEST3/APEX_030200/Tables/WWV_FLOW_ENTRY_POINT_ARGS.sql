CREATE TABLE apex_030200.wwv_flow_entry_point_args (
  "ID" NUMBER NOT NULL,
  flow_entry_point_id NUMBER,
  entry_point_arg_sequence NUMBER NOT NULL,
  entry_point_arg_item_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  entry_point_arg_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_entry_point_args_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_entry_point_args_fk FOREIGN KEY (flow_entry_point_id) REFERENCES apex_030200.wwv_flow_entry_points ("ID") ON DELETE CASCADE
);