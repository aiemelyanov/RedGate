CREATE TABLE apex_030200.wwv_mig_frm_rev_lovcolmaps (
  "ID" NUMBER NOT NULL,
  colmap_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  "NAME" VARCHAR2(4000 BYTE),
  title VARCHAR2(4000 BYTE),
  returnitem VARCHAR2(4000 BYTE),
  select_for_app VARCHAR2(1 BYTE) DEFAULT 'Y' NOT NULL CONSTRAINT wwv_mig_frm_lcm_select CHECK (select_for_app in ('Y','N')),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_frm_rev_lcm_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_frm_rev_lcm_id_fk FOREIGN KEY (colmap_id) REFERENCES apex_030200.wwv_mig_frm_lovcolumnmapping ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_mig_frm_rev_lcm_sgid_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);