CREATE TABLE apex_030200.wwv_mig_olb_olt_blk_item_trigr (
  "ID" NUMBER NOT NULL,
  item_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  triggertext CLOB,
  dirtyinfo VARCHAR2(4000 BYTE),
  fireinquery VARCHAR2(4000 BYTE),
  executehierarchy VARCHAR2(4000 BYTE),
  displayinkeyboardhelp VARCHAR2(4000 BYTE),
  keyboardhelptext VARCHAR2(4000 BYTE),
  triggerstyle VARCHAR2(4000 BYTE),
  trigger_comment CLOB,
  "HIDE" VARCHAR2(4000 BYTE),
  parentfilename VARCHAR2(4000 BYTE),
  parentfilepath VARCHAR2(4000 BYTE),
  parentmodule VARCHAR2(4000 BYTE),
  parentmoduletype VARCHAR2(4000 BYTE),
  parentname VARCHAR2(4000 BYTE),
  parentsourcelevel1objectname VARCHAR2(4000 BYTE),
  parentsourcelevel1objecttype VARCHAR2(4000 BYTE),
  parentsourcelevel2objectname VARCHAR2(4000 BYTE),
  parentsourcelevel2objecttype VARCHAR2(4000 BYTE),
  parenttype VARCHAR2(4000 BYTE),
  persistentclientinfolength VARCHAR2(4000 BYTE),
  smartclass VARCHAR2(4000 BYTE),
  subclassobjectgroup VARCHAR2(4000 BYTE),
  subclasssubobject VARCHAR2(4000 BYTE),
  triggerinternaltype VARCHAR2(4000 BYTE),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'N' NOT NULL CONSTRAINT wwv_mig_olb_olt_bit_sel_f_app CHECK (select_for_app in ('Y', 'N')),
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
  CONSTRAINT wwv_mig_olb_olt_blk_itm_trg_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_olb_olt_bit_item_id_fk FOREIGN KEY (item_id) REFERENCES apex_030200.wwv_mig_olb_olt_blk_item ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_olb_olt_bit_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);