table 53203 "CHKK List Page Reference"
{
    Caption = 'CHKK List Page Reference';
    DataClassification = CustomerContent;
    LookupPageId = "CHKK Macronutrients List";
    DrillDownPageId = "CHKK Macronutrients List";

    fields
    {
        field(1; "Nutrition Number"; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
        }
        field(2; "Serial Number"; Integer)
        {
            Caption = 'Sorszám';
            DataClassification = CustomerContent;
        }
        field(3; "Nutrition Code"; Code[20])
        {
            Caption = 'Tápanyag kód';
            DataClassification = CustomerContent;
            TableRelation = "CHKK Macronutrients" WHERE(Code = field("Nutrition Code"));
        }
        field(4; "Nutrition Name"; Text[100])
        {
            Caption = 'Tápanyag neve';
            DataClassification = CustomerContent;
        }
        field(5; Amount; Integer)
        {
            Caption = 'Mennyiség';
            DataClassification = CustomerContent;
        }
        field(6; Protein; Integer)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
        }
        field(7; Fat; Integer)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
        }
        field(8; Carbohydrate; Integer)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
        }
        field(9; "Unit of Measure"; Code[20])
        {
            Caption = 'Mértékegység';
            DataClassification = CustomerContent;
        }
        field(10; KJ; Integer)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(11; Kcal; Integer)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Nutrition Number")
        {
            Clustered = true;
        }
    }
}
