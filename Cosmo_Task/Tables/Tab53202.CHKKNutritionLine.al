table 53202 "CHKK Nutrition Line"
{
    Caption = 'CHKK Táplálkozás lista';
    DataClassification = ToBeClassified;
    LookupPageId = "CHKK Macronutrients List";
    DrillDownPageId = "CHKK Nutrition Order Subform";

    fields
    {
        field(1; "Nutrition number"; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
        }
        field(2; "Serial number"; Integer)
        {
            Caption = 'Sorszám';
            DataClassification = CustomerContent;
        }
        field(3; "Nutrition code"; Code[20])
        {
            Caption = 'Tápanyag kód';
            DataClassification = CustomerContent;
            TableRelation = "CHKK Macronutrients" WHERE(Code = field("Nutrition code"));
        }
        field(4; "Nutrition name"; Text[100])
        {
            Caption = 'Megnevezés';
            FieldClass = FlowField;
            CalcFormula = lookup("CHKK Macronutrients".Description WHERE(Code = field("Nutrition code")));
            Editable = false;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Mennyiség';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                Calculator: Codeunit "Nutrition Calculator";
            begin
                Calculator.CalcProtein(Rec);
                Calculator.CalcCarbo(Rec);
                Calculator.CalcFat(Rec);
                Calculator.CalcKcal(Rec);
                Calculator.CalcKJ(Rec);
            end;
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
            TableRelation = "Item Unit of Measure"."Code" WHERE("Item No." = field("Nutrition number"));
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
        key(PK; "Nutrition number", "Serial number")
        {
            Clustered = true;
        }
    }

    var
        CHKKNutritionHeader: Record "CHKK Nutrition Header";
}
