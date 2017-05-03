CREATE OR REPLACE FORCE VIEW apex_030200.wwv_flow_months_mon (month_display,month_value) AS
select "MONTH_DISPLAY","MONTH_VALUE" from wwv_flow_months_mon_temp where month_value < 13;