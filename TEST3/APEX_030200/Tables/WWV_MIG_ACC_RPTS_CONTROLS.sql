CREATE TABLE apex_030200.wwv_mig_acc_rpts_controls (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  reportid NUMBER(11),
  controlid NUMBER(11) NOT NULL,
  controlname VARCHAR2(1000 BYTE),
  controltype NUMBER(11),
  eventprocprefix VARCHAR2(1000 BYTE),
  inselection NUMBER(11),
  "LEFT" NUMBER(11),
  "PARENT" VARCHAR2(1000 BYTE),
  section NUMBER,
  "TAG" VARCHAR2(4000 BYTE),
  top NUMBER,
  "VISIBLE" NUMBER,
  backcolor NUMBER(11),
  backstyle NUMBER,
  boundcolumn NUMBER,
  ctrlcaption VARCHAR2(4000 BYTE),
  columncount NUMBER,
  columnheads VARCHAR2(4000 BYTE),
  columnwidths VARCHAR2(4000 BYTE),
  controlsource VARCHAR2(4000 BYTE),
  controltiptext VARCHAR2(4000 BYTE),
  defaultvalue VARCHAR2(4000 BYTE),
  displaywhen NUMBER(11),
  enabled NUMBER(11),
  fontbold NUMBER(11),
  fontitalic NUMBER,
  fontname VARCHAR2(1000 BYTE),
  fontsize NUMBER(11),
  fontunderline NUMBER,
  fontwheight NUMBER(11),
  forecolor NUMBER(11),
  "FORMAT" VARCHAR2(4000 BYTE),
  height NUMBER(11),
  helpcontextid NUMBER(11),
  limittolist NUMBER(11),
  linkchildfields VARCHAR2(4000 BYTE),
  linkmasterfields VARCHAR2(4000 BYTE),
  listrows NUMBER,
  multirow NUMBER,
  onchange VARCHAR2(4000 BYTE),
  onclick VARCHAR2(4000 BYTE),
  ondblclick VARCHAR2(4000 BYTE),
  onkeydown VARCHAR2(4000 BYTE),
  onkeypress VARCHAR2(4000 BYTE),
  onkeyup VARCHAR2(4000 BYTE),
  onmousedown VARCHAR2(4000 BYTE),
  onmousemove VARCHAR2(4000 BYTE),
  onmouseup VARCHAR2(4000 BYTE),
  optionvalue NUMBER(11),
  pageindex NUMBER(11),
  picture VARCHAR2(1000 BYTE),
  picturealignment NUMBER(11),
  pictureresizemode NUMBER,
  picturetiling NUMBER,
  picturetype NUMBER(11),
  rowsource VARCHAR2(4000 BYTE),
  rowsourcetype VARCHAR2(4000 BYTE),
  shortcutmenubar VARCHAR2(4000 BYTE),
  sourceobject VARCHAR2(4000 BYTE),
  statusbartext VARCHAR2(4000 BYTE),
  style NUMBER(11),
  tabfixedheight NUMBER(11),
  tabfixedwidth NUMBER(11),
  tabindex NUMBER(11),
  tabstop NUMBER(11),
  textalign NUMBER,
  textfontcharset NUMBER(11),
  width NUMBER,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_flow_rep_ctl_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_rep_ctl_fk FOREIGN KEY (project_id,dbid,reportid) REFERENCES apex_030200.wwv_mig_acc_reports (project_id,dbid,reportid) ON DELETE CASCADE
);