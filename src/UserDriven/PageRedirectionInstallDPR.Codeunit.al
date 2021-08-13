codeunit 99701 "Page Redirection Install DPR"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        AddPageRedirect(Page::"Vendor Card");
    end;


    procedure AddPageRedirect(SupportedPageId: Integer)
    var
        PageRedirectionDPR: Record "Page Redirection DPR";
    begin
        if not PageRedirectionDPR.Get(SupportedPageId) then begin
            PageRedirectionDPR.ID := SupportedPageId;
            PageRedirectionDPR.Insert(true);
        end;
    end;
}
