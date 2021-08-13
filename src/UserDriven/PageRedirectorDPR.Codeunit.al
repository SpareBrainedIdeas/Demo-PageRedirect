codeunit 99700 "Page Redirector DPR"
{
    local procedure CheckForRedirect(UserId: Text; PageId: Integer): Integer
    var
        UserRedirectDPR: Record "User Page Redirection DPR";
    begin
        if UserRedirectDPR.Get(UserId, PageId) then
            exit(UserRedirectDPR."Redirect Card To Page");
    end;

    [EventSubscriber(ObjectType::Page, Page::"Vendor Card", 'OnOpenPageEvent', '', true, true)]
    local procedure VendorCardDirectCheck(var Rec: Record Vendor)
    var
        RedirectTo: Integer;
    begin
        RedirectTo := CheckForRedirect(UserId, Page::"Vendor Card");
        if RedirectTo <> 0 then begin
            Page.Run(RedirectTo, Rec);

            Error('');
        end;
    end;
}
