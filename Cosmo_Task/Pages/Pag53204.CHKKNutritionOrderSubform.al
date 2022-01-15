page 53204 "CHKK Nutrition Order Subform"
{
    Caption = 'CHKK Étrend Alűrlap';
    PageType = ListPart;
    SourceTable = "CHKK Nutrition Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutrition number"; Rec."Nutrition number")
                {
                    Caption = 'Táplálkozási szám';
                    ToolTip = 'Specifies the value of the Táplálkozási szám field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Serial number"; Rec."Serial number")
                {
                    Caption = 'Sorszám';
                    ToolTip = 'Specifies the value of the Sorszám field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Nutrition code"; Rec."Nutrition code")
                {
                    Caption = 'Tápanyag kód';
                    ToolTip = 'Specifies the value of the Tápanyag kód field.';
                    ApplicationArea = All;
                }
                field("Nutrition name"; Rec."Nutrition name")
                {
                    Caption = 'Megnevezés';
                    ToolTip = 'Specifies the value of the Megnevezés field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Quantity; Rec.Quantity)
                {
                    Caption = 'Mennyiség';
                    ToolTip = 'Specifies the value of the Mennyiség field.';
                    ApplicationArea = All;
                }
                field(Protein; Rec.Protein)
                {
                    Caption = 'Fehérje';
                    ToolTip = 'Specifies the value of the Fehérje field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Fat; Rec.Fat)
                {
                    Caption = 'Zsír';
                    ToolTip = 'Specifies the value of the Zsír field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    Caption = 'Szénhidrát';
                    ToolTip = 'Specifies the value of the Szénhidrát field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(KJ; Rec.KJ)
                {
                    Caption = 'KJ';
                    ToolTip = 'Specifies the value of the KJ field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Kcal; Rec.Kcal)
                {
                    Caption = 'Kcal';
                    ToolTip = 'Specifies the value of the Kcal field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    Caption = 'Mértékegység';
                    ToolTip = 'Specifies the value of the Mértékegység field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
