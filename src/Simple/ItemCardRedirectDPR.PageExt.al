pageextension 99700 "Item Card Redirect DPR" extends "Item Card"
{
    trigger OnOpenPage()
    var
        Item: Record Item;
        ItemCardSlim: Page "Item Card Slim - DPR";
    begin
        Item.CopyFilters(Rec);
        ItemCardSlim.Editable := CurrPage.Editable;
        ItemCardSlim.SetTableView(Item);
        ItemCardSlim.Run();
        /* Does *NOT* work at this time: */
        //CurrPage.Close();
        /* Does work, but is not optimal and prevents use for LookUp! */
        Error('');
    end;

}
