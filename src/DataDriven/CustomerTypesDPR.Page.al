page 99701 "Customer Types DPR"
{

    ApplicationArea = All;
    Caption = 'Customer Types DPR';
    PageType = List;
    SourceTable = "Customer Type DPR";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field("Redirect Card Page"; Rec."Redirect Card Page")
                {
                    ToolTip = 'Specifies the value of the Redirect Card Page field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
