table 99701 "User Page Redirection DPR"
{
    Caption = 'User Page Redirection DPR';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            NotBlank = true;
            TableRelation = User."User Name";
            ValidateTableRelation = false;
        }
        field(20; "Redirect Card From Page"; Integer)
        {
            Caption = 'Redirect Card From Page';
            DataClassification = ToBeClassified;
            TableRelation = "Page Redirection DPR";
            BlankZero = true;
        }
        field(30; "Redirect Card To Page"; Integer)
        {
            Caption = 'Redirect Card To Page';
            DataClassification = ToBeClassified;
            TableRelation = AllObjWithCaption."Object ID" where("Object Type" = const(Page), "Object Subtype" = const('Card'));
            BlankZero = true;
        }
    }
    keys
    {
        key(PK; "User ID", "Redirect Card From Page")
        {
            Clustered = true;
        }
    }

}
