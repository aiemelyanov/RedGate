CREATE OR REPLACE FORCE VIEW apex_030200.wwv_flow_user_access_log_v (login_name,authentication_method,"APPLICATION","OWNER",access_date,ip_address,remote_user,authentication_result,custom_status_text,security_group_id) AS
select login_name, authentication_method, application, owner, access_date, ip_address, remote_user, authentication_result, custom_status_text, security_group_id
      from wwv_flow_user_access_log1$
    union all
    select login_name, authentication_method, application, owner, access_date, ip_address, remote_user, authentication_result, custom_status_text, security_group_id
      from wwv_flow_user_access_log2$;