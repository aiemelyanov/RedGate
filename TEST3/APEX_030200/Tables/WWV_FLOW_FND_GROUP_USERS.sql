CREATE TABLE apex_030200.wwv_flow_fnd_group_users (
  "GROUP_ID" NUMBER NOT NULL,
  user_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_fnd_gu_int_g_fk FOREIGN KEY ("GROUP_ID") REFERENCES apex_030200.wwv_flow_fnd_user_groups ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_flow_fnd_gu_int_u_fk FOREIGN KEY (user_id) REFERENCES apex_030200.wwv_flow_fnd_user (user_id) ON DELETE CASCADE
);