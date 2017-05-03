CREATE TABLE apex_030200.wwv_flow_template_preferences (
  "OWNER" VARCHAR2(30 BYTE) NOT NULL,
  flow_id NUMBER NOT NULL,
  template_preference VARCHAR2(120 BYTE),
  printer_template_preference VARCHAR2(120 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_templ_pref_pk PRIMARY KEY ("OWNER"),
  CONSTRAINT wwv_flow_templ_pref_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);