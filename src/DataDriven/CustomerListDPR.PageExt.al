pageextension 99702 "Customer List DPR" extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {

            field("Customer Type Code"; Rec."Customer Type Code")
            {
                ToolTip = 'Specifies the value of the Customer Type Code field';
                ApplicationArea = All;
            }
        }
    }
}
