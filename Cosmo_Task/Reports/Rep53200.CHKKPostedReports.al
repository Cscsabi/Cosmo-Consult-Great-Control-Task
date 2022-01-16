report 53200 "CHKK Posted Reports"
{
    ApplicationArea = All;
    Caption = 'CHKK Könyvelt Jelentések';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reports\PostedRep.rdlc';
    dataset
    {
        dataitem(CHKKPostedNutritionHeader; "CHKK Posted Nutrition Header")
        {
            column(Customernumber; "Customer number")
            {
                IncludeCaption = true;
            }
            column(Nutritionnumber; "Nutrition number")
            {
                IncludeCaption = true;
            }
            column(Customername; "Customer name")
            {
                IncludeCaption = true;
            }
            column(Date; "Date")
            {
                IncludeCaption = true;
            }
            column(Status; Status)
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
        label1LbL: Label 'Test Report';
}
