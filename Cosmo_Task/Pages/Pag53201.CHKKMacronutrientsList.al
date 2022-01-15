page 53201 "CHKK Macronutrients List"
{
    ApplicationArea = All;
    Caption = 'CHKK Makrotápanyag lista';
    PageType = List;
    SourceTable = "CHKK Macronutrients";
    UsageCategory = Lists;
    CardPageId = "CHKK Macronutrients Header";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    Caption = 'Kód';
                    ToolTip = 'Specifies the value of the Kód field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Leírás';
                    ToolTip = 'Specifies the value of the Leírás field.';
                    ApplicationArea = All;
                }
                field(Protein; Rec.Protein)
                {
                    Caption = 'Fehérje';
                    ToolTip = 'Specifies the value of the Fehérje field.';
                    ApplicationArea = All;
                }
                field(Fat; Rec.Fat)
                {
                    Caption = 'Zsír';
                    ToolTip = 'Specifies the value of the Zsír field.';
                    ApplicationArea = All;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    Caption = 'Szénhidrát';
                    ToolTip = 'Specifies the value of the Szénhidrát field.';
                    ApplicationArea = All;
                }
                field(KJ; Rec.KJ)
                {
                    Caption = 'KJ';
                    ToolTip = 'Specifies the value of the KJ field.';
                    ApplicationArea = All;
                }
                field(Kcal; Rec.Kcal)
                {
                    Caption = 'Kcal';
                    ToolTip = 'Specifies the value of the Kcal field.';
                    ApplicationArea = All;
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
