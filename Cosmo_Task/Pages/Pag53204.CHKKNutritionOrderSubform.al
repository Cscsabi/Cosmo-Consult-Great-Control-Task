page 53204 "CHKK Nutrition Order Subform"
{
    ApplicationArea = All;
    Caption = 'CHKK Étrend Alűrlap';
    PageType = ListPart;
    SourceTable = "CHKK Nutrition Line";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutrition number"; Rec."Nutrition number")
                {
                    ToolTip = 'Specifies the value of the Táplálkozási szám field.';
                    ApplicationArea = All;
                }
                field("Serial number"; Rec."Serial number")
                {
                    ToolTip = 'Specifies the value of the Sorszám field.';
                    ApplicationArea = All;
                }
                field("Nutrition code"; Rec."Nutrition code")
                {
                    ToolTip = 'Specifies the value of the Tápanyag kód field.';
                    ApplicationArea = All;
                }
                field("Nutrition name"; Rec."Nutrition name")
                {
                    ToolTip = 'Specifies the value of the Megnevezés field.';
                    ApplicationArea = All;
                }
                field(Protein; Rec.Protein)
                {
                    ToolTip = 'Specifies the value of the Fehérje field.';
                    ApplicationArea = All;
                }
                field(Fat; Rec.Fat)
                {
                    ToolTip = 'Specifies the value of the Zsír field.';
                    ApplicationArea = All;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ToolTip = 'Specifies the value of the Szénhidrát field.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Mennyiség field.';
                    ApplicationArea = All;
                }
                field(KJ; Rec.KJ)
                {
                    ToolTip = 'Specifies the value of the KJ field.';
                    ApplicationArea = All;
                }
                field(Kcal; Rec.Kcal)
                {
                    ToolTip = 'Specifies the value of the Kcal field.';
                    ApplicationArea = All;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ToolTip = 'Specifies the value of the Mértékegység field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
