CREATE TABLE apex_030200.wwv_flow_page_submissions (
  submit_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  page_id NUMBER,
  session_id NUMBER,
  CONSTRAINT wwv_flow_page_submissions_pk PRIMARY KEY (submit_id),
  CONSTRAINT wwv_flow_page_sub_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);