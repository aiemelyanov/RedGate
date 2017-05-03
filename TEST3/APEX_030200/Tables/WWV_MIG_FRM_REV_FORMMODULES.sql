CREATE TABLE apex_030200.wwv_mig_frm_rev_formmodules (
  "ID" NUMBER NOT NULL,
  formmodule_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  title VARCHAR2(4000 BYTE),
  consolewindow VARCHAR2(4000 BYTE),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'Y' NOT NULL CONSTRAINT wwv_mig_frm_rev_frmmdl_sel CHECK (select_for_app in ('Y', 'N')),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_frm_rev_formmodules_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_frm_rev_fmdl_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE,
  CONSTRAINT wwv_mig_frm_rev_frmmdl_id_fk FOREIGN KEY (formmodule_id) REFERENCES apex_030200.wwv_mig_frm_formmodules ("ID") ON DELETE CASCADE
);