CREATE OR REPLACE FORCE VIEW apex_030200.wwv_flow_users (user_id,user_name,first_name,last_name,known_as,last_update_date,last_updated_by,creation_date,created_by,start_date,end_date,description,password_date,password_accesses_left,password_lifespan_accesses,password_lifespan_days,employee_id,person_type,email_address,person_id,security_group_id,default_schema,allow_access_to_schemas,attribute_01,attribute_02,attribute_03,attribute_04,attribute_05,attribute_06,attribute_07,attribute_08,attribute_09,attribute_10,last_login,builder_login_count,last_agent,last_ip,account_locked,account_expiry,failed_access_attempts,first_password_use_occurred,change_password_on_first_use,last_failed_login) AS
select
		user_id,
		user_name,
		first_name,
		last_name,
		known_as,
		last_update_date,
		last_updated_by,
		creation_date,
		created_by,
		start_date,
		end_date,
		description,
		password_date,
		password_accesses_left,
		password_lifespan_accesses,
		password_lifespan_days,
		employee_id,
		person_type,
		email_address,
		person_id,
		security_group_id,
		default_schema,
		allow_access_to_schemas,
		attribute_01,
		attribute_02,
		attribute_03,
		attribute_04,
		attribute_05,
		attribute_06,
		attribute_07,
		attribute_08,
		attribute_09,
		attribute_10,
		last_login,
		builder_login_count,
		last_agent,
		last_ip,
		account_locked,
		account_expiry,
		failed_access_attempts,
		first_password_use_occurred,
		change_password_on_first_use,
		last_failed_login
from wwv_flow_fnd_user
where security_group_id = (select nv('FLOW_SECURITY_GROUP_ID') s from dual);