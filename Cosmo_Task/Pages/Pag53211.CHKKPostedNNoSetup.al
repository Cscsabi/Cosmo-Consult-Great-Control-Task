page 53211 "CHKK Posted N. No. Setup"
{
    Caption = 'CHKK Könyvelt Tápanyag Sorszám Beállítása';
    PageType = List;
    SourceTable = "CHKK Posted Nutrition No.";
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
