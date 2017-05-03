CREATE TABLE apex_030200.wwv_flow_mail_attachments (
  "ID" NUMBER NOT NULL,
  mail_id NUMBER NOT NULL,
  filename VARCHAR2(4000 BYTE) NOT NULL,
  mime_type VARCHAR2(48 BYTE) NOT NULL,
  "INLINE" VARCHAR2(1 BYTE) NOT NULL CONSTRAINT wwv_flow_mail_attachments_ck1 CHECK ("INLINE" in ('Y','N')),
  attachment BLOB,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_mail_attachments_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_mail_attachments_fk1 FOREIGN KEY (mail_id) REFERENCES apex_030200.wwv_flow_mail_queue ("ID") ON DELETE CASCADE
);