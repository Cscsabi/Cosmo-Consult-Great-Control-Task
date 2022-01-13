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
                    Caption = 'Táplálkozási szám';
                    ToolTip = 'Specifies the value of the Nutrition number field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Customer number"; Rec."Customer number")
                {
                    Caption = 'Vevő';
                    ToolTip = 'Specifies the value of the Customer number field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Customer name"; Rec."Customer name")
                {
                    Caption = 'Vevő neve';
                    ToolTip = 'Specifies the value of the Customer name field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field("Date"; Rec."Date")
                {
                    Caption = 'Dátum';
                    ToolTip = 'Specifies the value of the Date field.';
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Status; Rec.Status)
                {
                    Caption = 'Státusz';
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                    Editable = true;
                }
            }

            part(Lines; "CHKK Nutrition Order Subform")
            {
                Caption = 'Sorok';
                ApplicationArea = All;
                SubPageLink = "Nutrition number" = field("Nutrition number");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ReleaseStatus)
            {
                Caption = 'Lezár';
                Image = ReleaseDoc;
                ApplicationArea = All;
            }

            action(ReopenStatus)
            {
                Caption = 'Újranyit';
                Image = ReOpen;
                ApplicationArea = All;
            }
            action(ExportDoc)
            {
                Caption = 'Exportálás Fájlba';
                Image = Export;
                ApplicationArea = All;
            }
            action(PostDoc)
            {
                Caption = 'Könyvelés';
                Image = Post;
                ApplicationArea = All;
            }
        }
    }
    var
        PageEditable: Boolean;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec."Date" := Today();
    end;

    trigger OnAfterGetCurrRecord()

    begin
        if Rec.Status = Rec.Status::Open then
            PageEditable := true
        else
            PageEditable := false;
    end;

}
