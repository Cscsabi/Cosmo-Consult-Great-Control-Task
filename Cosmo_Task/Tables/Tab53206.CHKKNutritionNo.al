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

    trigger OnInsert()
    var
        Setup: Record "CHKK Nutrition No.";
        NoMgt: Codeunit NoSeriesManagement;
    begin
        if "No." = '' then
        begin
            Setup.Get();
            "No." := NoMgt.GetNextNo(Setup."No.", Today(), true);
        end;
    end;
}
