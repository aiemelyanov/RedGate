CREATE TABLE apex_030200.wwv_mig_frm_programunit (
  "ID" NUMBER NOT NULL,
  formmodule_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  programunittext CLOB,
  programunittype VARCHAR2(4000 BYTE),
  programunit_comment CLOB,
  subclassobjectgroup VARCHAR2(4000 BYTE),
  parentmoduletype VARCHAR2(4000 BYTE),
  parenttype VARCHAR2(4000 BYTE),
  parentname VARCHAR2(4000 BYTE),
  parentmodule VARCHAR2(4000 BYTE),
  parentfilename VARCHAR2(4000 BYTE),
  parentfilepath VARCHAR2(4000 BYTE),
  persistentclientinfolength VARCHAR2(4000 BYTE),
  smartclass VARCHAR2(4000 BYTE) DEFAULT 'false',
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'N' NOT NULL CONSTRAINT wwv_mig_frm_pgunt_sel_for_app CHECK (select_for_app in ('Y', 'N')),
  applicable VARCHAR2(1 BYTE) DEFAULT 'Y',
  "COMPLETE" VARCHAR2(1 BYTE) DEFAULT 'N',
  "PRIORITY" NUMBER(1) DEFAULT 3,
  assignee VARCHAR2(255 BYTE),
  notes VARCHAR2(4000 BYTE),
  tags VARCHAR2(4000 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_frm_programunit_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_frm_pgut_frmmdl_id_fk FOREIGN KEY (formmodule_id) REFERENCES apex_030200.wwv_mig_frm_formmodules ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_frm_pgut_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);