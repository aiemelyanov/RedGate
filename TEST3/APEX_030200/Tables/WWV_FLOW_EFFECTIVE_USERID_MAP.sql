CREATE TABLE apex_030200.wwv_flow_effective_userid_map (
  "ID" NUMBER NOT NULL,
  userid VARCHAR2(255 BYTE) NOT NULL,
  effective_userid VARCHAR2(255 BYTE) NOT NULL,
  flow_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_eff_userid_map_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_eff_usr_map_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);