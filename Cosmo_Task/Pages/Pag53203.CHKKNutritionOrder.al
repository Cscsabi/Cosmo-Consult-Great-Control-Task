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
                    Editable = PageEditable;
                }
                field("Customer number"; Rec."Customer number")
                {
                    Caption = 'Vevő';
                    ToolTip = 'Specifies the value of the Customer number field.';
                    ApplicationArea = All;
                    Editable = PageEditable;
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
                    Editable = PageEditable;
                }
                field(Status; Rec.Status)
                {
                    Caption = 'Státusz';
                    ToolTip = 'Specifies the value of the Status field.';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Protein; Rec.Protein)
                {
                    ApplicationArea = All;
                    Caption = 'Fehérje';
                    Editable = false;
                }
                field(Fat; Rec.Fat)
                {
                    ApplicationArea = All;
                    Caption = 'Zsír';
                    Editable = false;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ApplicationArea = All;
                    Caption = 'Szénhidrát';
                    Editable = false;
                }
                field(KJ; Rec.KJ)
                {
                    ApplicationArea = All;
                    Caption = 'KJ';
                    Editable = false;
                }
                field(Kcal; Rec.Kcal)
                {
                    ApplicationArea = All;
                    Caption = 'Kcal';
                    Editable = false;
                }

            part(Lines; "CHKK Nutrition Order Subform")
            {
                Caption = 'Sorok';
                ApplicationArea = All;
                SubPageLink = "Nutrition number" = field("Nutrition number");
                Editable = PageEditable;
                UpdatePropagation = Both;
            }
        }
    }
            area(FactBoxes)
            {
                part(CustomerDetail; "Customer Details FactBox")
                {                
                    ApplicationArea = All;
                    SubPageLink = "No." = field("Customer number");
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

                trigger OnAction()
                var
                    PostDocumentMgt: Codeunit "CHKK Post Document Mgt.";
                begin
                    PostDocumentMgt.PostDoc(Rec);
                end;
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
