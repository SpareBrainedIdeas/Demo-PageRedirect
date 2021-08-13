page 99704 "User Page Redirections DPR"
{

    ApplicationArea = All;
    Caption = 'User Page Redirections DPR';
    PageType = List;
    SourceTable = "User Page Redirection DPR";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field';
                    ApplicationArea = All;
                }
                field("Redirect Card From Page"; Rec."Redirect Card From Page")
                {
                    ToolTip = 'Specifies the value of the Redirect Card From Page field';
                    ApplicationArea = All;
                }
                field("Redirect Card To Page"; Rec."Redirect Card To Page")
                {
                    ToolTip = 'Specifies the value of the Redirect Card To Page field';
                    ApplicationArea = All;
                }

            }
        }
    }

}
