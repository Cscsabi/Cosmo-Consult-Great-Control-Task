table 53201 "CHKK Nutrition Header"
{
    Caption = 'CHKK Táplálkozás Fejléc';
    DataClassification = ToBeClassified;
    LookupPageId = "CHKK Nutrition Order Subform";
    DrillDownPageId = "CHKK Nutrition Order Subform";

    fields
    {
        field(1; "Nutrition number"; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
            
        }
        field(2; "Customer number"; Code[100])
        {
            Caption = 'Vevő';
            DataClassification = CustomerContent;
            TableRelation = Customer;

            trigger OnValidate()
            var
                Customer: Record Customer;
            begin
                if Customer.Get(Rec."Customer number") then
                    Rec."Customer name" := Customer.Name
                else
                    Rec."Customer name" := '';
                Rec.CalcFields(Protein, Fat, Carbohydrate, KJ, Kcal);
            end;
        }
        field(3; "Customer name"; Text[100])
        {
            Caption = 'Vevő neve';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Dátum';
            DataClassification = CustomerContent;
        }
        field(5; Status; Option)
        {
            Caption = 'Státusz';
            DataClassification = CustomerContent;
            OptionMembers = Open,Closed;
        }
        field(6; Protein; Integer)
        {
            Caption = 'Fehérje';
            FieldClass = FlowField;
            CalcFormula = sum("CHKK Nutrition Line".Protein WHERE("Nutrition number" = field("Nutrition number")));
            Editable = false;
        }
        field(7; Fat; Integer)
        {
            Caption = 'Zsír';
            FieldClass = FlowField;
            CalcFormula = sum("CHKK Nutrition Line".Fat WHERE("Nutrition number" = field("Nutrition number")));
            Editable = false;
        }
        field(8; Carbohydrate; Integer)
        {
            Caption = 'Szénhidrát';
            FieldClass = FlowField;
            CalcFormula = sum("CHKK Nutrition Line".Carbohydrate WHERE("Nutrition number" = field("Nutrition number")));
            Editable = false;
        }
        field(9; KJ; Integer)
        {
            Caption = 'KJ';
            FieldClass = FlowField;
            CalcFormula = sum("CHKK Nutrition Line".KJ WHERE("Nutrition number" = field("Nutrition number")));
            Editable = false;
        }
        field(10; Kcal; Integer)
        {
            Caption = 'Kcal';
            FieldClass = FlowField;
            CalcFormula = sum("CHKK Nutrition Line".Kcal WHERE("Nutrition number" = field("Nutrition number")));
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Nutrition number")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        Setup: Record "CHKK Nutrition No.";
        NoMgt: Codeunit NoSeriesManagement;
    begin
        if "Nutrition number" = '' then begin
            Setup.Get();
            "Nutrition number" := NoMgt.GetNextNo(Setup."No.", WorkDate(), true);
        end;
    end;

    trigger OnDelete()
    var
        NutritionLine: Record "CHKK Nutrition Line";
    begin
        NutritionLine.Reset();
        NutritionLine.SetRange("Nutrition number", Rec."Nutrition number");
        NutritionLine.DeleteAll();
    end;
}
