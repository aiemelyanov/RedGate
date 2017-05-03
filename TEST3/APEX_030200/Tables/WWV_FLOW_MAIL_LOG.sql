CREATE TABLE apex_030200.wwv_flow_mail_log (
  mail_to VARCHAR2(2000 BYTE),
  mail_from VARCHAR2(2000 BYTE),
  mail_replyto VARCHAR2(2000 BYTE),
  mail_subj VARCHAR2(2000 BYTE),
  mail_cc VARCHAR2(2000 BYTE),
  mail_bcc VARCHAR2(2000 BYTE),
  mail_send_error VARCHAR2(4000 BYTE),
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  security_group_id NUMBER NOT NULL
);