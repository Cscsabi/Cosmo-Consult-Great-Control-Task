codeunit 53200 "CHKK Nutrition Calculator"
{
    // Protein Calculation
    procedure CalcProtein(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        protein: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition code";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        protein := macro.Protein;
        Nutrition.Protein := quantity * protein;
    end;

    // Carbohydrate Calculation
    procedure CalcCarbo(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        carbo: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition code";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        carbo := macro.Carbohydrate;
        Nutrition.Carbohydrate := quantity * carbo;
    end;

    // Fat Calculation
    procedure CalcFat(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        fat: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition code";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        fat := macro.Fat;
        Nutrition.Fat := quantity * fat;
    end;

    // Kcal Calculation
    procedure CalcKcal(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        kcal: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition code";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        kcal := macro.kcal;
        Nutrition.Kcal := quantity * kcal;
    end;

    // KJ Calculation
    procedure CalcKJ(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        kj: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition code";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        kj := macro.kj;
        Nutrition.KJ := quantity * kj;
    end;
}
