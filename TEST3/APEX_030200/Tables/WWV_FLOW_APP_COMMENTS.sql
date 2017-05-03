CREATE TABLE apex_030200.wwv_flow_app_comments (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  pages VARCHAR2(4000 BYTE),
  app_comment VARCHAR2(4000 BYTE) NOT NULL,
  created_on DATE,
  created_by VARCHAR2(255 BYTE),
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  comment_owner VARCHAR2(255 BYTE),
  comment_flag VARCHAR2(4000 BYTE),
  app_version VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_app_comments_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_app_comments_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);