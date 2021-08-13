tableextension 99700 "Customer DPR" extends Customer
{
    fields
    {
        field(99700; "Customer Type Code"; Code[10])
        {
            Caption = 'Customer Type Code';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Type DPR";
        }
    }
}
