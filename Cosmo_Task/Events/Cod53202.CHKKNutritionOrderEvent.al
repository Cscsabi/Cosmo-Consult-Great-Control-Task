codeunit 53202 "CHKK Nutrition Order Event"
{
    [EventSubscriber(ObjectType::Page, Page::"CHKK Nutrition Order", 'OnBeforeActionEvent', 'ReleaseStatus', false, false)]
    local procedure Release(var Rec: Record "CHKK Nutrition Header")
    var
        NutritionOrderMGT: Codeunit "CHKK Nutrition Order Mgt.";
    begin
        NutritionOrderMGT.Release(Rec);
    end;

    [EventSubscriber(ObjectType::Page, Page::"CHKK Nutrition Order", 'OnBeforeActionEvent', 'ReOpenStatus', false, false)]
    local procedure ReOpenStatus(var Rec: Record "CHKK Nutrition Header")
    var
        NutritionOrderMGT: Codeunit "CHKK Nutrition Order Mgt.";
    begin
        NutritionOrderMGT.ReOpenStatus(Rec);
    end;
}
