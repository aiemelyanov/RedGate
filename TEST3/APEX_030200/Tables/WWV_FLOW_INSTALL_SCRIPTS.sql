CREATE TABLE apex_030200.wwv_flow_install_scripts (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  install_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  "SEQUENCE" NUMBER NOT NULL,
  script CLOB NOT NULL,
  script_type VARCHAR2(30 BYTE) CONSTRAINT wwv_flow_install_st_ck CHECK (script_type in ('INSTALL','UPGRADE','DEINSTALL')),
  condition_type VARCHAR2(255 BYTE),
  "CONDITION" VARCHAR2(4000 BYTE),
  condition2 VARCHAR2(4000 BYTE),
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  created_by VARCHAR2(255 BYTE),
  created_on DATE,
  CONSTRAINT wwv_flow_install_scripts_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_install_scripts_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID"),
  CONSTRAINT wwv_flow_install_scripts_fk2 FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id),
  CONSTRAINT wwv_flow_install_scripts_fk3 FOREIGN KEY (install_id) REFERENCES apex_030200.wwv_flow_install ("ID") ON DELETE CASCADE
);