CREATE TABLE apex_030200.wwv_flow_web_pages (
  "ID" NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE),
  folder_id NUMBER,
  status VARCHAR2(30 BYTE) CONSTRAINT wwv_flow_fold_status_ck CHECK (status in (
                        'AVAILABLE_FOR_OWNER',
                        'NOT_AVAILABLE',
                        'AVAILABLE',
                        'ACL')),
  "OWNER" VARCHAR2(255 BYTE),
  description VARCHAR2(4000 BYTE),
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_webpage_pk PRIMARY KEY ("ID")
);