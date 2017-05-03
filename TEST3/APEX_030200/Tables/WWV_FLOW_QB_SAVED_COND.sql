CREATE TABLE apex_030200.wwv_flow_qb_saved_cond (
  "ID" NUMBER NOT NULL,
  col VARCHAR2(255 BYTE) NOT NULL,
  "ALIAS" VARCHAR2(255 BYTE) NOT NULL,
  fv VARCHAR2(255 BYTE),
  fp VARCHAR2(255 BYTE),
  out VARCHAR2(255 BYTE) CONSTRAINT wwv_flow_qb_saved_cond_out CHECK (out in ('true','false')),
  st VARCHAR2(255 BYTE) CONSTRAINT wwv_flow_qb_saved_cond_st CHECK (st in ('ASC','DESC')),
  so VARCHAR2(255 BYTE),
  grp VARCHAR2(255 BYTE) CONSTRAINT wwv_flow_qb_saved_cond_grp CHECK (grp in ('true','false')),
  con VARCHAR2(255 BYTE),
  ord NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT pk_wwv_flow_qb_saved_cond PRIMARY KEY ("ID",col),
  FOREIGN KEY ("ID") REFERENCES apex_030200.wwv_flow_qb_saved_query ("ID") ON DELETE CASCADE
);