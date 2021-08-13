pageextension 99701 "Customer Card DPR" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {

            field("Customer Type Code"; Rec."Customer Type Code")
            {
                ToolTip = 'Specifies the value of the Customer Type Code field';
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        CustomerTypeDPR: Record "Customer Type DPR";
    begin
        if (Rec."Customer Type Code" <> '') and (CustomerTypeDPR.Get(Rec."Customer Type Code")) and (CustomerTypeDPR."Redirect Card Page" <> 0) then begin
            CurrPage.Close();
            Page.Run(CustomerTypeDPR."Redirect Card Page", Rec);
        end;
    end;
}
