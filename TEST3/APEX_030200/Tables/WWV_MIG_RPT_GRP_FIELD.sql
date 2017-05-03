CREATE TABLE apex_030200.wwv_mig_rpt_grp_field (
  "ID" NUMBER NOT NULL,
  "GROUP_ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  "SOURCE" VARCHAR2(4000 BYTE),
  pagenumber VARCHAR2(4000 BYTE),
  minwidowlines VARCHAR2(4000 BYTE),
  "LABEL" VARCHAR2(4000 BYTE),
  display VARCHAR2(4000 BYTE),
  width VARCHAR2(4000 BYTE),
  "VISIBLE" VARCHAR2(3 BYTE) DEFAULT 'yes' CONSTRAINT wwv_mig_rpt_grp_fld_vis CHECK ("VISIBLE" in ('yes','no')),
  hyperlink VARCHAR2(4000 BYTE),
  formatmask VARCHAR2(4000 BYTE),
  nullvalue VARCHAR2(4000 BYTE),
  spacing VARCHAR2(4000 BYTE),
  currency VARCHAR2(4000 BYTE),
  tsep VARCHAR2(4000 BYTE),
  linkdest VARCHAR2(4000 BYTE),
  breakorder VARCHAR2(15 BYTE) CONSTRAINT wwv_mig_rpt_grp_fld_brk CHECK (breakorder in ('none','ascending','descending')),
  font VARCHAR2(4000 BYTE),
  fontsize VARCHAR2(4000 BYTE),
  fontstyle VARCHAR2(10 BYTE) DEFAULT 'regular' CONSTRAINT wwv_mig_rpt_grp_fld_st CHECK (fontstyle in ('regular','italic','bold','boldItalic')),
  fonteffect VARCHAR2(20 BYTE) DEFAULT 'regular' CONSTRAINT wwv_mig_rpt_grp_fld_ef CHECK (fonteffect in ('regular','strikeout','underline','strikeoutUnderline')),
  linecolor VARCHAR2(4000 BYTE),
  fillcolor VARCHAR2(4000 BYTE),
  textcolor VARCHAR2(4000 BYTE),
  alignment VARCHAR2(10 BYTE) DEFAULT 'start' CONSTRAINT wwv_mig_rpt_grp_fld_align CHECK (alignment in ('start','left','center','right','end','flush')),
  formattrigger VARCHAR2(4000 BYTE),
  templatesection VARCHAR2(10 BYTE) DEFAULT 'none' CONSTRAINT wwv_mig_rpt_grp_fld_temp CHECK (templatesection in ('none','header','main','trailer')),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'Y' NOT NULL CONSTRAINT wwv_mig_fld_sel_for_app CHECK (select_for_app in ('Y', 'N')),
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
  CONSTRAINT wwv_mig_grp_fld_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_grp_fld_id_fk FOREIGN KEY ("GROUP_ID") REFERENCES apex_030200.wwv_mig_rpt_datasrc_grp ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_grp_fld_sg_id_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);