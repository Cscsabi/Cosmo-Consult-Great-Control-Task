page 53210 "CHKK Nutrition No. Setup"
{
    Caption = 'CHKK Tápanyag Sorszám Beállítása';
    PageType = List;
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
}
