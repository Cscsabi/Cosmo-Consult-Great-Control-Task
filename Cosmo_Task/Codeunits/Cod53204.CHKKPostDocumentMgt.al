codeunit 53204 "CHKK Post Document Mgt."
{
    procedure PostDoc(var Document: Record "CHKK Nutrition Header")
    var
        PostedNutritionHeader: Record "CHKK Posted Nutrition Header";
        PostedNutritionLine: Record "CHKK Posted Nutrition Line";
        NutritionLine: Record "CHKK Nutrition Line";
    begin
        Document.TestField(Status, Document.Status::Closed);

        PostedNutritionHeader.Init();
        PostedNutritionHeader.TransferFields(Document);
        PostedNutritionHeader.Insert();

        NutritionLine.SetRange("Nutrition number", Document."Nutrition number");
        if NutritionLine.FindSet() then
            repeat
            begin
                PostedNutritionLine.Init();
                PostedNutritionLine.TransferFields(NutritionLine);
                PostedNutritionLine.Insert();
            end 
            until NutritionLine.Next() = 0;
    end;

}
