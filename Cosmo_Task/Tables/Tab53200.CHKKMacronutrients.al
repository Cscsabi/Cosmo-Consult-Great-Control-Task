table 53200 "CHKK Macronutrients"
{
    Caption = 'CHKK Makrotápanyagok';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Kód';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Leírás';
            DataClassification = CustomerContent;
        }
        field(3; Protein; Integer)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
        }
        field(4; Fat; Integer)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
        }
        field(5; Carbohydrate; Integer)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
        }
        field(6; "Unit of Measure"; Code[20])
        {
            Caption = 'Mértékegység';
            DataClassification = CustomerContent;
            TableRelation = "Item Unit of Measure" WHERE("Item No." = field(Code));
        }
        field(7; KJ; Integer)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(8; Kcal; Integer)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
