page 53209 "CHKK Posted Nutrition Query"
{
    ApplicationArea = All;
    Caption = 'CHKK Könyvelt Táplálkozás lekérdezés';
    PageType = List;
    SourceTable = "CHKK Posted Nutrition Header";
    UsageCategory = Administration;
    QueryCategory = 'CHKK Posted Nutrition Query';
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Customer number"; Rec."Customer number")
                {
                    ToolTip = 'Specifies the value of the Customer number field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Nutrition number"; Rec."Nutrition number")
                {
                    ToolTip = 'Specifies the value of the Nutrition number field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Customer name"; Rec."Customer name")
                {
                    ToolTip = 'Specifies the value of the Customer name field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
}
