table 99702 "Page Redirection DPR"
{
    Caption = 'Page Redirection DPR';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
        }
        field(100; Caption; Text[249])
        {
            Caption = 'Caption';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(AllObjWithCaption."Object Caption" where("Object Type" = const(Page), "Object ID" = field(ID)));
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; ID, Caption) { }
    }

}
