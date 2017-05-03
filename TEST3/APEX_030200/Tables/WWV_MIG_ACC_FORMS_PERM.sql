CREATE TABLE apex_030200.wwv_mig_acc_forms_perm (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  permissionid NUMBER(11) NOT NULL,
  formid NUMBER(11),
  userid NUMBER(11),
  "PERMISSION" NUMBER(11),
  permission_desc VARCHAR2(1000 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_form_perm_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_frm_fk FOREIGN KEY (project_id,dbid,formid) REFERENCES apex_030200.wwv_mig_acc_forms (project_id,dbid,formid) ON DELETE CASCADE
);