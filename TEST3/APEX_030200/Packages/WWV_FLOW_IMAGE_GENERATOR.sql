CREATE OR REPLACE package apex_030200.wwv_flow_image_generator
as

procedure get_image(
    p_position in number,
    p_sessionid in number);


end wwv_flow_image_generator;
/