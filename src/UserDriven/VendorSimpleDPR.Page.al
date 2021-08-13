page 99706 "Vendor Simple DPR"
{

    Caption = 'Vendor Simple';
    PageType = Card;
    SourceTable = Vendor;

    layout
    {
        area(content)
        {
            group(Simple)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field(Balance; Rec.Balance)
                {
                    ToolTip = 'Specifies the value of the Balance field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
