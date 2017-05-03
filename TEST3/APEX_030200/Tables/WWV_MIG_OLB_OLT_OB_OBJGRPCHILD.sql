CREATE TABLE apex_030200.wwv_mig_olb_olt_ob_objgrpchild (
  "ID" NUMBER NOT NULL,
  objectgroup_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  "TYPE" VARCHAR2(4000 BYTE),
  subclasssubobject VARCHAR2(4000 BYTE),
  dirtyinfo VARCHAR2(4000 BYTE),
  persistentclientinfolength VARCHAR2(4000 BYTE),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'N' NOT NULL CONSTRAINT wwv_mig_olb_ogc_sel_for_app CHECK (select_for_app in ('Y', 'N')),
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
  CONSTRAINT wwv_mig_olb_olt_ob_ogchild_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_olb_olt_ob_ogc_obid_fk FOREIGN KEY (objectgroup_id) REFERENCES apex_030200.wwv_mig_olb_olt_objectgroup ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_olb_olt_ob_ogc_sgid_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);