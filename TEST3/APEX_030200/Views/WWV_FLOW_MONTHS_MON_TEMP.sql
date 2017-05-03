CREATE OR REPLACE FORCE VIEW apex_030200.wwv_flow_months_mon_temp (month_display,month_value) AS
select to_char(to_date(to_char(rownum,'00'),'MM'),'Mon') month, rownum value from wwv_flow_dual100
where rownum < 13
union all
select '                    ', 20 from dual;