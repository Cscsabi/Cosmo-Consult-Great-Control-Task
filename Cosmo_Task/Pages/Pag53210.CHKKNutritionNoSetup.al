page 53210 "CHKK Nutrition No. Setup"
{
    Caption = 'CHKK Tápanyag sorszám beállítása';
    PageType = Card;
    SourceTable = "CHKK Nutrition No.";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        nutritionCode: Code[40];
        Number: Code[40];
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
        Number := 'N_NM0000';
        nutritionCode := IncStr(Number);
    end;
}
