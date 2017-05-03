CREATE TABLE apex_030200.wwv_flow_models (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  session_id NUMBER NOT NULL,
  flow_id NUMBER,
  "OWNER" VARCHAR2(4000 BYTE),
  "NAME" VARCHAR2(4000 BYTE),
  model_complete VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_model_complete CHECK (model_complete in (
                                 'Y',
                                 'N')),
  created_by VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_models_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_models_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);