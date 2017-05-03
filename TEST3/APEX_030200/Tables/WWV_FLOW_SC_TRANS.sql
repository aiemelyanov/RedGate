CREATE TABLE apex_030200.wwv_flow_sc_trans (
  session_id NUMBER NOT NULL,
  transaction_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  transaction_user VARCHAR2(2000 BYTE) NOT NULL,
  transaction_schema VARCHAR2(2000 BYTE) NOT NULL,
  transaction_type VARCHAR2(10 BYTE) NOT NULL CONSTRAINT wwv_flow_sc_trans_ck1 CHECK (transaction_type in (
                                 'STOP',
                                 'SQL',
                                 'PLSQL')),
  transaction_status VARCHAR2(1 BYTE) NOT NULL CONSTRAINT wwv_flow_sc_trans_ck2 CHECK (transaction_status in (
                                 'N',
                                 'R')),
  transaction_rows NUMBER NOT NULL,
  transaction_binds VARCHAR2(4000 BYTE),
  transaction_sql CLOB NOT NULL,
  transaction_result CLOB,
  transaction_output CLOB,
  created_on DATE NOT NULL,
  updated_on DATE,
  CONSTRAINT wwv_flow_sc_trans_pk PRIMARY KEY (session_id,transaction_id),
  CONSTRAINT wwv_flow_sc_trans_fk1 FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE,
  CONSTRAINT wwv_flow_sc_trans_fk2 FOREIGN KEY (session_id) REFERENCES apex_030200.wwv_flow_sessions$ ("ID") ON DELETE CASCADE
);