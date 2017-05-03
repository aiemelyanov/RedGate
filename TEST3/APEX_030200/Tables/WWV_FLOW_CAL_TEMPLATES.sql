CREATE TABLE apex_030200.wwv_flow_cal_templates (
  "ID" NUMBER NOT NULL,
  "NAME" VARCHAR2(512 BYTE),
  flow_id NUMBER,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  theme_id NUMBER,
  theme_class_id NUMBER,
  translate_this_template VARCHAR2(1 BYTE),
  reference_id NUMBER,
  month_title_format VARCHAR2(4000 BYTE),
  day_of_week_format VARCHAR2(4000 BYTE),
  month_open_format VARCHAR2(4000 BYTE),
  month_close_format VARCHAR2(4000 BYTE),
  day_title_format VARCHAR2(4000 BYTE),
  day_open_format VARCHAR2(4000 BYTE),
  day_close_format VARCHAR2(4000 BYTE),
  today_open_format VARCHAR2(4000 BYTE),
  weekend_title_format VARCHAR2(4000 BYTE),
  weekend_open_format VARCHAR2(4000 BYTE),
  weekend_close_format VARCHAR2(4000 BYTE),
  nonday_title_format VARCHAR2(4000 BYTE),
  nonday_open_format VARCHAR2(4000 BYTE),
  nonday_close_format VARCHAR2(4000 BYTE),
  week_title_format VARCHAR2(4000 BYTE),
  week_open_format VARCHAR2(4000 BYTE),
  week_close_format VARCHAR2(4000 BYTE),
  daily_title_format VARCHAR2(4000 BYTE),
  daily_open_format VARCHAR2(4000 BYTE),
  daily_close_format VARCHAR2(4000 BYTE),
  weekly_title_format VARCHAR2(4000 BYTE),
  weekly_day_of_week_format VARCHAR2(4000 BYTE),
  weekly_month_open_format VARCHAR2(4000 BYTE),
  weekly_month_close_format VARCHAR2(4000 BYTE),
  weekly_day_title_format VARCHAR2(4000 BYTE),
  weekly_day_open_format VARCHAR2(4000 BYTE),
  weekly_day_close_format VARCHAR2(4000 BYTE),
  weekly_today_open_format VARCHAR2(4000 BYTE),
  weekly_weekend_title_format VARCHAR2(4000 BYTE),
  weekly_weekend_open_format VARCHAR2(4000 BYTE),
  weekly_weekend_close_format VARCHAR2(4000 BYTE),
  weekly_time_open_format VARCHAR2(4000 BYTE),
  weekly_time_close_format VARCHAR2(4000 BYTE),
  weekly_time_title_format VARCHAR2(4000 BYTE),
  weekly_hour_open_format VARCHAR2(4000 BYTE),
  weekly_hour_close_format VARCHAR2(4000 BYTE),
  daily_day_of_week_format VARCHAR2(4000 BYTE),
  daily_month_title_format VARCHAR2(4000 BYTE),
  daily_month_open_format VARCHAR2(4000 BYTE),
  daily_month_close_format VARCHAR2(4000 BYTE),
  daily_day_title_format VARCHAR2(4000 BYTE),
  daily_day_open_format VARCHAR2(4000 BYTE),
  daily_day_close_format VARCHAR2(4000 BYTE),
  daily_today_open_format VARCHAR2(4000 BYTE),
  daily_time_open_format VARCHAR2(4000 BYTE),
  daily_time_close_format VARCHAR2(4000 BYTE),
  daily_time_title_format VARCHAR2(4000 BYTE),
  daily_hour_open_format VARCHAR2(4000 BYTE),
  daily_hour_close_format VARCHAR2(4000 BYTE),
  template_comments VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_cal_templates_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_cal_templ_to_flow_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);