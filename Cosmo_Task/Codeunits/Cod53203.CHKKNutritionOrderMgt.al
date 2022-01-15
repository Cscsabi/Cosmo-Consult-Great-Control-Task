codeunit 53203 "CHKK Nutrition Order Mgt."
{
    [EventSubscriber(ObjectType::Page, Page::"CHKK Nutrition Order", 'OnBeforeActionEvent', 'ReleaseStatus', false, false)]
    procedure Release(var Rec: Record "CHKK Nutrition Header")
    begin
        Rec.TestField("Date");
        Rec.Status := Rec.Status::Closed;
        Rec.Modify();
    end;

    [EventSubscriber(ObjectType::Page, Page::"CHKK Nutrition Order", 'OnBeforeActionEvent', 'ReOpenStatus', false, false)]
    procedure ReOpenStatus(var Rec: Record "CHKK Nutrition Header")
    begin
        Rec.Status := Rec.Status::Open;
        Rec.Modify();
    end;

    [EventSubscriber(ObjectType::Page, Page::"CHKK Nutrition Order", 'OnBeforeActionEvent', 'ExportDoc', false, false)]
    procedure ExportDoc(var Rec: Record "CHKK Nutrition Header")
    //var
        //sheetname: Label 'Nutritions';
        //Name: Label '.\Exported\%1s_Intake';
        //Output: File;
    begin
        //Output.Create(StrSubstNo(Name, Rec."Customer Name"));
        //Output.CreateOutStream(xmlstream);
        //xmlport.Export(53299, xmlstream);
        //Output.Close();
        Message('Not working OnPrem unfortunately! :S');
    end;
}

