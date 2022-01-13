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
                    
                    /*
                    trigger OnAssistEdit()
                    var
                        myInt: Integer;
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                    */
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
                    Editable = PageEditable;
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
    var
        Number: Code[40];
        GoodNum: Boolean;
    begin
        Number := 'N_NM0000';
        GoodNum := false;
        Rec."Date" := Today();
        if Rec.IsEmpty() then
            Rec.Insert();
        while GoodNum do
            begin
                if NOT Rec.Get(Number) then
                    Number := IncStr(Number)
                else
                    GoodNum := true;
            end;

        nutritionCode := Number;
        Rec."Nutrition number" := nutritionCode;
    end;

    trigger OnAfterGetCurrRecord()
    begin
        if Rec.Status = Rec.Status::Open then
            PageEditable := true
        else
            PageEditable := false;
    end;

    var
        nutritionCode: Code[40];
}
