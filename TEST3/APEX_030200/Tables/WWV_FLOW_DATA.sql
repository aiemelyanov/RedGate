CREATE TABLE apex_030200.wwv_flow_data (
  flow_instance NUMBER NOT NULL,
  item_id NUMBER,
  item_element_id NUMBER,
  item_filter VARCHAR2(1 BYTE) CONSTRAINT valid_item_filter CHECK (item_filter in ('Y','N')),
  session_state_status VARCHAR2(1 BYTE) CONSTRAINT valid_session_state_status CHECK (session_state_status in ('I','U','R')),
  flow_id NUMBER,
  item_name VARCHAR2(255 BYTE),
  name_length NUMBER(*,0),
  is_encrypted VARCHAR2(1 BYTE),
  item_value CLOB,
  CONSTRAINT wwv_flow_data_fk FOREIGN KEY (flow_instance) REFERENCES apex_030200.wwv_flow_sessions$ ("ID") ON DELETE CASCADE
);