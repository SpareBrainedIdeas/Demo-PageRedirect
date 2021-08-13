page 99705 "Page Redirection List DPR"
{

    ApplicationArea = All;
    Caption = 'Page Redirection List DPR';
    PageType = List;
    SourceTable = "Page Redirection DPR";
    UsageCategory = Administration;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field';
                    ApplicationArea = All;
                }
                field(Caption; Rec.Caption)
                {
                    ToolTip = 'Specifies the value of the Caption field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
