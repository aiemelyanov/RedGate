CREATE TABLE apex_030200.wwv_mig_frm_menus_menumodules (
  "ID" NUMBER NOT NULL,
  module_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  dirtyinfo VARCHAR2(4000 BYTE),
  rolecount VARCHAR2(4000 BYTE),
  mainmenu VARCHAR2(4000 BYTE),
  startupcode CLOB,
  menudirectory VARCHAR2(4000 BYTE),
  menumodule_comment CLOB,
  usesecurity VARCHAR2(4000 BYTE) DEFAULT 'false',
  sharelibrary VARCHAR2(4000 BYTE) DEFAULT 'true',
  menufilename VARCHAR2(4000 BYTE),
  parenttype VARCHAR2(4000 BYTE),
  parentname VARCHAR2(4000 BYTE),
  parentmodule VARCHAR2(4000 BYTE),
  parentmoduletype VARCHAR2(4000 BYTE),
  parentfilename VARCHAR2(4000 BYTE),
  parentfilepath VARCHAR2(4000 BYTE),
  persistentclientinfolength VARCHAR2(4000 BYTE),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'Y' NOT NULL CONSTRAINT wwv_mig_mnu_mnumdl_sel_for_app CHECK (select_for_app in ('Y', 'N')),
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
  CONSTRAINT wwv_mig_mnu_mnumodules_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_mnu_mnumdl_mdl_id_fk FOREIGN KEY (module_id) REFERENCES apex_030200.wwv_mig_frm_menus_modules ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_mnu_mnumdl_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);