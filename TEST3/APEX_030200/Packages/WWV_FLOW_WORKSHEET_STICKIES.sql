CREATE OR REPLACE package apex_030200.wwv_flow_worksheet_stickies
as
procedure show_stickies (
    p_application_id    in number,
    p_worksheet_id      in number,
    p_session           in number,
    p_row_id            in number)
    ;


end wwv_flow_worksheet_stickies;
/