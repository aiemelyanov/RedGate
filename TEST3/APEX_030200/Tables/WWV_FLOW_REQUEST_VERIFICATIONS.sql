CREATE TABLE apex_030200.wwv_flow_request_verifications (
  session_id NUMBER NOT NULL,
  verification_string VARCHAR2(100 BYTE) NOT NULL,
  CONSTRAINT wwv_flow_request_verif_pk PRIMARY KEY (session_id),
  CONSTRAINT wwv_flow_request_verif_fk FOREIGN KEY (session_id) REFERENCES apex_030200.wwv_flow_sessions$ ("ID") ON DELETE CASCADE
);