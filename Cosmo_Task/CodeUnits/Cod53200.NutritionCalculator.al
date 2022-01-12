codeunit 53200 "Nutrition Calculator"
{
    // Protein Calculation
    procedure CalcProtein(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        codexd: Code[20];
        protein: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        codexd := Nutrition."Nutrition number";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, codexd);
        macro.FindFirst();
        protein := macro.Protein;
        Nutrition.Protein := quantity * protein;
    end;
}
