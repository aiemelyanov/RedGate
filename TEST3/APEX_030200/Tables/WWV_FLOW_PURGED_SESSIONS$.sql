CREATE TABLE apex_030200.wwv_flow_purged_sessions$ (
  purge_date DATE,
  purged_sessions NUMBER,
  min_session_id NUMBER,
  max_session_id NUMBER,
  min_session_date DATE,
  max_session_date DATE,
  elap_seconds NUMBER,
  security_group_id NUMBER NOT NULL
);