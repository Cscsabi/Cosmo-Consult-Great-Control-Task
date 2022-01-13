codeunit 53200 "Nutrition Calculator"
{
    // Protein Calculation
    procedure CalcProtein(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        protein: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition number";
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
        nutcode := Nutrition."Nutrition number";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        carbo := macro.Carbohydrate;
        Nutrition.Protein := quantity * carbo;
    end;

    // Fat Calculation
    procedure CalcFat(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        fat: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition number";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        fat := macro.Carbohydrate;
        Nutrition.Protein := quantity * fat;
    end;

    // Kcal Calculation
    procedure CalcKcal(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        kcal: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition number";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        kcal := macro.Carbohydrate;
        Nutrition.Protein := quantity * kcal;
    end;

    // KJ Calculation
    procedure CalcKJ(var Nutrition: Record "CHKK Nutrition Line")
    var
        quantity: Integer;
        nutcode: Code[20];
        kj: Integer;
        macro: Record "CHKK Macronutrients";
    begin
        nutcode := Nutrition."Nutrition number";
        quantity := Nutrition.Quantity;
        macro.SetRange(Code, nutcode);
        macro.FindFirst();
        kj := macro.Carbohydrate;
        Nutrition.Protein := quantity * kj;
    end;
}
