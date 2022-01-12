page 53203 "CHKK Nutrition Order"
{
    Caption = 'CHKK Étrend';
    PageType = Document;
    SourceTable = "CHKK Nutrition Header";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Nutrition number"; Rec."Nutrition number")
                {
                    ToolTip = 'Specifies the value of the Nutrition number field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Customer number"; Rec."Customer number")
                {
                    ToolTip = 'Specifies the value of the Customer number field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Customer name"; Rec."Customer name")
                {
                    ToolTip = 'Specifies the value of the Customer name field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                    Editable = true;
                }
            }
        }
    }
}
