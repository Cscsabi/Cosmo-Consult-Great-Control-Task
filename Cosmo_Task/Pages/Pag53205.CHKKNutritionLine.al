page 53205 "CHKK Nutrition Line"
{
    ApplicationArea = All;
    Caption = 'CHKK Táplálkozás';
    PageType = List;
    SourceTable = "CHKK Nutrition Header";
    UsageCategory = Lists;
    CardPageId = "CHKK Nutrition Order";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutrition number"; Rec."Nutrition number")
                {
                    ToolTip = 'Specifies the value of the Nutrition number field.';
                    ApplicationArea = All;
                }
                field("Customer number"; Rec."Customer number")
                {
                    ToolTip = 'Specifies the value of the Customer number field.';
                    ApplicationArea = All;
                }
                field("Customer name"; Rec."Customer name")
                {
                    ToolTip = 'Specifies the value of the Customer name field.';
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                    ApplicationArea = All;
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
