CREATE TABLE apex_030200.wwv_mig_acc_forms (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  formid NUMBER(11) NOT NULL,
  formname VARCHAR2(400 BYTE),
  afterdelconfirm VARCHAR2(1000 BYTE),
  afterinsert VARCHAR2(1000 BYTE),
  afterupdate VARCHAR2(4000 BYTE),
  allowadditions NUMBER(1),
  allowdeletions NUMBER(1),
  allowedits NUMBER(1),
  allowediting NUMBER(1),
  allowfilters NUMBER(1),
  allowupdating NUMBER(1),
  autocenter NUMBER(1),
  autoresize NUMBER(1),
  backcolor NUMBER(11),
  beforedelconfirm VARCHAR2(4000 BYTE),
  beforeinsert VARCHAR2(4000 BYTE),
  beforeupdate VARCHAR2(4000 BYTE),
  borderstyle NUMBER(5),
  formcaption VARCHAR2(4000 BYTE),
  closebutton NUMBER(1),
  controlbox NUMBER(1),
  "COUNT" NUMBER(11),
  currentview NUMBER(1),
  "CYCLE" NUMBER(1),
  dataentry NUMBER(1),
  datasheetbackcolor NUMBER(11),
  datasheetcellseffect NUMBER(11),
  datasheetfontheight NUMBER(11),
  datasheetfontitalic NUMBER(1),
  datasheetfontname VARCHAR2(1000 BYTE),
  datasheetfontunderline NUMBER(1),
  datasheetfontweight NUMBER(11),
  datasheetforecolor NUMBER(11),
  datasheetgridlinesbehavior NUMBER(11),
  datasheetgridlinescolor NUMBER(11),
  defaultediting NUMBER(11),
  defaultview NUMBER(1),
  dividinglines NUMBER(1),
  fastlaserprinting NUMBER(1),
  "FILTER" VARCHAR2(4000 BYTE),
  filteron NUMBER(1),
  frozencolumns NUMBER(11),
  gridx NUMBER(11),
  gridy NUMBER(11),
  hasmodule NUMBER(1),
  helpcontextid NUMBER(11),
  helpfile VARCHAR2(4000 BYTE),
  hwnd NUMBER(11),
  insideheight NUMBER(11),
  insidewidth NUMBER(11),
  keypreview NUMBER(1),
  layoutforprint NUMBER(1),
  logicalpagewidth NUMBER(11),
  maxbutton NUMBER(1),
  menubar VARCHAR2(4000 BYTE),
  minbutton NUMBER(1),
  minmaxbuttons NUMBER(1),
  modal NUMBER(1),
  navigationbuttons NUMBER(1),
  onactivate VARCHAR2(4000 BYTE),
  onapplyfilter VARCHAR2(4000 BYTE),
  onclick VARCHAR2(4000 BYTE),
  onclose VARCHAR2(4000 BYTE),
  oncurrent VARCHAR2(4000 BYTE),
  ondblclick VARCHAR2(4000 BYTE),
  ondeactivate VARCHAR2(4000 BYTE),
  ondelete VARCHAR2(4000 BYTE),
  onerror VARCHAR2(4000 BYTE),
  onfilter VARCHAR2(4000 BYTE),
  ongotfocus VARCHAR2(4000 BYTE),
  onkeydown VARCHAR2(4000 BYTE),
  onkeypress VARCHAR2(4000 BYTE),
  onkeyup VARCHAR2(4000 BYTE),
  onload VARCHAR2(4000 BYTE),
  onlostfocus VARCHAR2(4000 BYTE),
  onmousedown VARCHAR2(4000 BYTE),
  onmousemove VARCHAR2(4000 BYTE),
  onmouseup VARCHAR2(4000 BYTE),
  onopen VARCHAR2(4000 BYTE),
  onresize VARCHAR2(4000 BYTE),
  ontimer VARCHAR2(4000 BYTE),
  onunload VARCHAR2(4000 BYTE),
  openargs VARCHAR2(4000 BYTE),
  orderby VARCHAR2(4000 BYTE),
  orderbyon NUMBER(1),
  painting NUMBER(1),
  palettesource VARCHAR2(4000 BYTE),
  picture VARCHAR2(4000 BYTE),
  picturealignment NUMBER(1),
  picturesizemode NUMBER(1),
  picturetiling NUMBER(1),
  picturetype NUMBER(1),
  popup NUMBER(1),
  recordlocks NUMBER(1),
  recordselectors NUMBER(1),
  recordsettype NUMBER(1),
  recordsource VARCHAR2(4000 BYTE),
  rowheight NUMBER(11),
  scrollbars NUMBER(1),
  shortcutmenu NUMBER(1),
  shortcutmenubar VARCHAR2(4000 BYTE),
  showgrid NUMBER(1),
  "TAG" VARCHAR2(4000 BYTE),
  timerinterval NUMBER(11),
  toolbar VARCHAR2(4000 BYTE),
  viewsallowed NUMBER(1),
  "VISIBLE" NUMBER(1),
  whatsthisbutton NUMBER(1),
  width NUMBER(11),
  windowheight NUMBER(11),
  windowwidth NUMBER(11),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_forms_uk1 UNIQUE (project_id,dbid,formid),
  CONSTRAINT wwv_mig_acc_form_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_frm_dbid_fk FOREIGN KEY (project_id,dbid) REFERENCES apex_030200.wwv_mig_access (project_id,dbid) ON DELETE CASCADE
);