table 53206 "CHKK Nutrition No."
{
    Caption = 'CHKK Tápanyag Sorszám';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Key"; Code[10])
        {
            Caption = 'Key';
            DataClassification = ToBeClassified;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
    }
    keys
    {
        key(PK; "Key")
        {
            Clustered = true;
        }
    }
}
