CREATE TABLE apex_030200.wwv_flow_model_page_cols (
  "ID" NUMBER NOT NULL,
  model_region_id NUMBER NOT NULL,
  column_name VARCHAR2(4000 BYTE),
  column_display_name VARCHAR2(4000 BYTE),
  column_sequence NUMBER,
  help_text VARCHAR2(4000 BYTE),
  display_as_form VARCHAR2(50 BYTE) CONSTRAINT wwv_mpc_display_as_form CHECK (display_as_form in (
                                'DISPLAY_ONLY_PLSQL',
                                'FILE',
                                'BUTTON',
                                'HIDDEN',
                                'HIDDEN_PROTECTED',
                                'DISPLAY_ONLY_HTML',
                                'STOP_AND_START_HTML_TABLE',
                                'DISPLAY_ONLY_ESCAPE_SC',
                                'IMAGE',
                                'DISPLAY_AND_SAVE',
                                'DISPLAY_AND_SAVE_LOV',
                                'CHECKBOX',
                                'POPUP',
                                'POPUP_FILTER',
                                'POPUP2',
                                'POPUP3',
                                'POPUP4',
                                'POPUP5',
                                'POPUP6',
                                'POPUP_KEY_LOV',
                                'POPUP_KEY_LOV_NOFETCH',
                                'PICK_DATE_USING_FLOW_FORMAT_MASK',
                                'PICK_DATE_USING_APP_FORMAT_MASK',
                                'PICK_DATE_USING_APP_DATE_FORMAT',
                                'PICK_DATE_USING_FORMAT_MASK',
                                'PICK_DATE_DD_MON_RR',
                                'PICK_DATE_DD_MON_RR_HH_MI',
                                'PICK_DATE_DD_MON_RR_HH24_MI',
                                'PICK_DATE_DD_MON_YY',
                                'PICK_DATE_DD_MON_YY_HH_MI',
                                'PICK_DATE_DD_MON_YY_HH24_MI',
                                'PICK_DATE_DD_MON_YYYY',
                                'PICK_DATE_DD_MON_YYYY_HH_MI',
                                'PICK_DATE_DD_MON_YYYY_HH24_MI',
                                'PICK_DATE_DD_MM_YYYY',
                                'PICK_DATE_DD_MM_YYYY_HH_MI',
                                'PICK_DATE_DD_MM_YYYY_HH24_MI',
                                'PICK_DATE_MM_DD_YYYY',
                                'PICK_DATE_MM_DD_YYYY_HH_MI',
                                'PICK_DATE_MM_DD_YYYY_HH24_MI',
                                'PICK_DATE_YYYY_MM_DD',
                                'PICK_DATE_YYYY_MM_DD_HH_MI',
                                'PICK_DATE_YYYY_MM_DD_HH24_MI',
                                'PICK_DATE_RR_MON_DD',
                                'PICK_DATE_RR_MON_DD_HH_MI',
                                'PICK_DATE_RR_MON_DD_HH24_MI',
                                'PICK_DATE_YYYY_MM_DD_SLASH',
                                'PICK_DATE_YYYY_MM_DD_HH_MI_SLASH',
                                'PICK_DATE_YYYY_MM_DD_HH24_MI_SLASH',
                                'PICK_DATE_YYYY_DD_MM_DOT',
                                'PICK_DATE_YYYY_DD_MM_HH_MI_DOT',
                                'PICK_DATE_YYYY_DD_MM_HH24_MI_DOT',
                                'PICK_DATE_DD_MM_YYYY_DASH',
                                'PICK_DATE_DD_MM_YYYY_HH_MI_DASH',
                                'PICK_DATE_DD_MM_YYYY_HH24_MI_DASH',
                                'PICK_DATE_DD_MM_YYYY_DOT',
                                'PICK_DATE_DD_MM_YYYY_HH_MI_DOT',
                                'PICK_DATE_DD_MM_YYYY_HH24_MI_DOT',
                                'DISPLAY_ONLY_LOV',
                                'COMBOBOX',
                                'SHOW_AS_SL_WITH_POPUP',
                                'COMBOBOX_WITH_URL_REDIRECT',
                                'COMBOBOX_WITH_BRANCH_TO_PAGE',
                                'COMBOBOX_WITH_SUBMIT',
                                'COMBOBOX_WITH_JS_POST',
                                'COMBOBOX_WITH_JS_REDIRECT',
                                'MULTIPLESELECT',
                                'RADIOGROUP',
                                'RADIOGROUP2',
                                'RADIOGROUP_WITH_REDIRECT',
                                'RADIOGROUP_WITH_SUBMIT',
                                'RADIOGROUP_WITH_JS_SUBMIT',
                                'TEXTAREA',
                                'TEXTAREA_WITH_SPELL_CHECK',
                                'TEXTAREA-AUTO-HEIGHT',
                                'TEXTAREA_WITH_CONTROLS',
                                'TEXTAREA_WITH_HTML_EDITOR_BASIC',
                                'TEXTAREA_WITH_HTML_EDITOR_STANDARD',
                                'TEXTAREA_CHAR_COUNT',
                                'TEXTAREA_CHAR_COUNT_SPELL',
                                'TEXT',
                                'TEXT_WITH_ENTER_SUBMIT',
                                'TEXT_DISABLED',
                                'TEXT_DISABLED_AND_SAVE',
                                'TEXT_WITH_CALCULATOR',
                                'PASSWORD',
                                'PASSWORD_WITH_ENTER_SUBMIT',
                                'PASSWORD_DNSS',
                                'PASSWORD_WITH_SUBMIT_DNSS',
                                'LIST_MGR',
                                'LIST_MGR2',
                                'LIST_MGR3',
                                'LIST_MGR_VIEW',
                                'LIST_MGR_VIEW2')),
  display_as_tab_form VARCHAR2(255 BYTE) CONSTRAINT wwv_mpc_display_as_tab_form CHECK (display_as_tab_form in (
                                'READONLY',
                                'DISPLAY_AND_SAVE',
                                'WITHOUT_MODIFICATION',
                                'ESCAPE_SC',
                                'TEXT',
                                'TEXTAREA',
                                'TEXT_FROM_LOV',
                                'SELECT_LIST',
                                'SELECT_LIST_FROM_LOV',
                                'SELECT_LIST_FROM_QUERY',
                                'HIDDEN',
                                'HIDDEN_PROTECTED',
                                'POPUP',
                                'POPUP_QUERY',
                                'DATE_POPUP',
                                'PICK_DATE_USING_APP_FORMAT_MASK',
                                'PICK_DATE_USING_APP_DATE_FORMAT',
                                'PICK_DATE_USING_FORMAT_MASK',
                                'PICK_DATE_DD_MON_RR',
                                'PICK_DATE_DD_MON_RR_HH_MI',
                                'PICK_DATE_DD_MON_RR_HH24_MI',
                                'PICK_DATE_DD_MON_YY',
                                'PICK_DATE_DD_MON_YY_HH_MI',
                                'PICK_DATE_DD_MON_YY_HH24_MI',
                                'PICK_DATE_DD_MON_YYYY',
                                'PICK_DATE_DD_MON_YYYY_HH_MI',
                                'PICK_DATE_DD_MON_YYYY_HH24_MI',
                                'PICK_DATE_DD_MM_YYYY',
                                'PICK_DATE_DD_MM_YYYY_HH_MI',
                                'PICK_DATE_DD_MM_YYYY_HH24_MI',
                                'PICK_DATE_MM_DD_YYYY',
                                'PICK_DATE_MM_DD_YYYY_HH_MI',
                                'PICK_DATE_MM_DD_YYYY_HH24_MI',
                                'PICK_DATE_YYYY_MM_DD',
                                'PICK_DATE_YYYY_MM_DD_HH_MI',
                                'PICK_DATE_YYYY_MM_DD_HH24_MI',
                                'PICK_DATE_RR_MON_DD',
                                'PICK_DATE_RR_MON_DD_HH_MI',
                                'PICK_DATE_RR_MON_DD_HH24_MI',
                                'PICK_DATE_YYYY_MM_DD_SLASH',
                                'PICK_DATE_YYYY_MM_DD_HH_MI_SLASH',
                                'PICK_DATE_YYYY_MM_DD_HH24_MI_SLASH',
                                'PICK_DATE_YYYY_DD_MM_DOT',
                                'PICK_DATE_YYYY_DD_MM_HH_MI_DOT',
                                'PICK_DATE_YYYY_DD_MM_HH24_MI_DOT',
                                'PICK_DATE_DD_MM_YYYY_DASH',
                                'PICK_DATE_DD_MM_YYYY_HH_MI_DASH',
                                'PICK_DATE_DD_MM_YYYY_HH24_MI_DASH',
                                'PICK_DATE_DD_MM_YYYY_DOT',
                                'PICK_DATE_DD_MM_YYYY_HH_MI_DOT',
                                'PICK_DATE_DD_MM_YYYY_HH24_MI_DOT',
                                'CHECKBOX',
                                'RADIOGROUP')),
  datatype VARCHAR2(4000 BYTE) CONSTRAINT datatype CHECK (datatype in ('DATE','NUMBER','VARCHAR2','BLOB','CLOB')),
  alignment VARCHAR2(4000 BYTE) CONSTRAINT wwv_flow_mpc_alignment CHECK (alignment in ('LEFT','CENTER','RIGHT')),
  display_width NUMBER,
  max_width NUMBER,
  height NUMBER,
  format_mask VARCHAR2(4000 BYTE),
  hidden_column VARCHAR2(1 BYTE),
  sort_sequence NUMBER,
  sort_dir NUMBER,
  security_group_id NUMBER NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_model_page_cols_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_model_page_cols_fk FOREIGN KEY (model_region_id) REFERENCES apex_030200.wwv_flow_model_page_regions ("ID") ON DELETE CASCADE
);