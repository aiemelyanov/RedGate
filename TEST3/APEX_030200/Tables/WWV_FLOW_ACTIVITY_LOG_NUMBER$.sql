CREATE TABLE apex_030200.wwv_flow_activity_log_number$ (
  current_log_number NUMBER NOT NULL CHECK (current_log_number in (1,2)),
  current_log_timestamp DATE NOT NULL
);