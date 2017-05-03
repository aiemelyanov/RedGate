CREATE TABLE apex_030200.wwv_mig_exporter (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  filename VARCHAR2(2000 BYTE) NOT NULL,
  description VARCHAR2(1000 BYTE),
  access_version NUMBER,
  exporter_version VARCHAR2(100 BYTE),
  CONSTRAINT wwv_mig_exporter_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_exporter_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id)
);