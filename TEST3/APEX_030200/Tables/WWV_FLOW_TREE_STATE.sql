CREATE TABLE apex_030200.wwv_flow_tree_state (
  "ID" NUMBER NOT NULL,
  tree_id NUMBER NOT NULL,
  expand CLOB DEFAULT empty_clob(),
  contract CLOB DEFAULT empty_clob(),
  CONSTRAINT wwv_flow_tree_state$pk PRIMARY KEY ("ID",tree_id),
  CONSTRAINT wwv_flow_tree_state$fk FOREIGN KEY ("ID") REFERENCES apex_030200.wwv_flow_sessions$ ("ID") ON DELETE CASCADE
);