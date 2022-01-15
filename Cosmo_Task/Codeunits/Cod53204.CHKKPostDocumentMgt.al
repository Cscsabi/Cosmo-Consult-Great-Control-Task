codeunit 53204 "CHKK Post Document Mgt."
{
    procedure PostDoc(var Document: Record "CHKK Nutrition Header")
    var
        PostedNutritionHeader: Record "CHKK Posted Nutrition Header";
        PostedNutritionLine: Record "CHKK Posted Nutrition Line";
        NutritionLine: Record "CHKK Nutrition Line";
        Setup: Record "CHKK Nutrition No.";
        Question: Label 'Do you want to delete the open %1 document?';
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        Document.TestField(Status, Document.Status::Closed);

        PostedNutritionHeader.Init();
        PostedNutritionHeader.TransferFields(Document);

        Setup.Get();
        PostedNutritionHeader."Nutrition number" := NoSeriesMgt.GetNextNo(Setup."No.", WorkDate(), true);
        PostedNutritionHeader.Insert();
        NutritionLine.Reset();
        NutritionLine.SetRange("Nutrition number", Document."Nutrition number");
        if NutritionLine.FindSet() then
            repeat
            begin
                PostedNutritionLine.Init();
                PostedNutritionLine.TransferFields(NutritionLine);
                PostedNutritionLine.Insert();
            end 
            until NutritionLine.Next() = 0;
        
        if Confirm(Question, true, Document."Nutrition number") then
            Document.Delete(true);

        Commit();
        page.RunModal(Page::"CHKK Posted Nutrition Order", PostedNutritionHeader);
    end;

}
