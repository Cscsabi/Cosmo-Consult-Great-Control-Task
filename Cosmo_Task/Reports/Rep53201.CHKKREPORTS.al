report 53201 "CHKK Reports"
{
    ApplicationArea = All;
    Caption = 'CHKK Jelentések';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reports\PostedTest.rdlc';
    dataset
    {
        dataitem(CHKKPostedNutritionLine; "CHKK Posted Nutrition Line")
        {
            column(Nutritioncode; "Nutrition code")
            {
                IncludeCaption = true;
            }
            column(Nutritionname; "Nutrition name")
            {
                IncludeCaption = true;
            }
            column(Nutritionnumber; "Nutrition number")
            {
                IncludeCaption = true;
            }
            column(Serialnumber; "Serial number")
            {
                IncludeCaption = true;
            }
            column(Quantity; Quantity)
            {
                IncludeCaption = true;
            }
            column(Protein; Protein)
            {
                IncludeCaption = true;
            }
            column(Carbohydrate; Carbohydrate)
            {
                IncludeCaption = true;
            }
            column(Fat; Fat)
            {
                IncludeCaption = true;
            }
            column(KJ; KJ)
            {
                IncludeCaption = true;
            }
            column(Kcal; Kcal)
            {
                IncludeCaption = true;
            }
            column(UnitofMeasure; "Unit of Measure")
            {
                IncludeCaption = true;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    var
        label1LbL: Label 'New Test Report';
}