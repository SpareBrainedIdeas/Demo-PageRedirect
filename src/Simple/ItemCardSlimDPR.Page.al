page 99700 "Item Card Slim - DPR"
{

    Caption = 'Item Card Slim - DPR';
    PageType = Card;
    SourceTable = Item;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field(Inventory; Rec.Inventory)
                {
                    ToolTip = 'Specifies the value of the Inventory field';
                    ApplicationArea = All;
                }
                field("Qty. on Purch. Order"; Rec."Qty. on Purch. Order")
                {
                    ToolTip = 'Specifies the value of the Qty. on Purch. Order field';
                    ApplicationArea = All;
                }
                field("Qty. on Sales Order"; Rec."Qty. on Sales Order")
                {
                    ToolTip = 'Specifies the value of the Qty. on Sales Order field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
