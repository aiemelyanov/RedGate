CREATE TABLE apex_030200.wwv_flow_password_history (
  "ID" NUMBER NOT NULL,
  user_id NUMBER,
  "PASSWORD" RAW(255),
  created DATE,
  security_group_id NUMBER NOT NULL,
  PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_pwhist_sgid_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE,
  CONSTRAINT wwv_flow_pwhist_uid_fk FOREIGN KEY (user_id) REFERENCES apex_030200.wwv_flow_fnd_user (user_id) ON DELETE CASCADE
);