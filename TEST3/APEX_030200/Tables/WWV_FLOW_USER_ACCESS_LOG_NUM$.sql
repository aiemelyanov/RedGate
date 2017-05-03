CREATE TABLE apex_030200.wwv_flow_user_access_log_num$ (
  current_log_number NUMBER NOT NULL CHECK (current_log_number in (1,2)),
  current_log_timestamp DATE NOT NULL,
  minimum_retained_days NUMBER NOT NULL
);