CREATE TABLE apex_030200.wwv_flow_security_schemes (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  scheme_type VARCHAR2(255 BYTE),
  scheme VARCHAR2(4000 BYTE) NOT NULL,
  scheme_text VARCHAR2(4000 BYTE),
  error_message VARCHAR2(4000 BYTE) NOT NULL,
  "CACHING" VARCHAR2(255 BYTE) CONSTRAINT wwv_flow_sec_scheme_cache CHECK ("CACHING" in (
                              'BY_USER_BY_PAGE_VIEW',
                              'BY_USER_BY_SESSION')),
  reference_id NUMBER,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  comments VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_sec_scheme_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_sec_schemes_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);