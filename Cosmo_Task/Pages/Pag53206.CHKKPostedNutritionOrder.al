page 53206 "CHKK Posted Nutrition Order"
{
    Caption = 'CHKK Könyvelt Étrend';
    PageType = Document;
    SourceTable = "CHKK Posted Nutrition Header";
    Editable = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Nutrition number"; Rec."Nutrition number")
                {
                    Caption = 'Táplálkozási szám';
                    ToolTip = 'Specifies the value of the Nutrition number field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Customer number"; Rec."Customer number")
                {
                    Caption = 'Vevő';
                    ToolTip = 'Specifies the value of the Customer number field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Customer name"; Rec."Customer name")
                {
                    Caption = 'Vevő neve';
                    ToolTip = 'Specifies the value of the Customer name field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Date"; Rec."Date")
                {
                    Caption = 'Dátum';
                    ToolTip = 'Specifies the value of the Date field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Status; Rec.Status)
                {
                    Caption = 'Státusz';
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                    Editable = false;
                }
            }

            part(Lines; "CHKK Nutrition Order Subform")
            {
                Caption = 'Sorok';
                ApplicationArea = All;
                SubPageLink = "Nutrition number" = field("Nutrition number");
                Editable = false;
            }
        }
    }

}
