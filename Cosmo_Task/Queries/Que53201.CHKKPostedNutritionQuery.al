query 53200 "CHKK Posted Nutrition Query"
{
    Caption = 'CHKK Könyvelt Táplálkozás lekérdezés';
    QueryType = Normal;
    
    elements
    {
        dataitem(CHKKPostedNutritionHeader; "CHKK Posted Nutrition Header")
        {
            column(Customernumber; "Customer number")
            {
            }
            column(Nutritionnumber; "Nutrition number")
            {
            }
            column(Customername; "Customer name")
            {
            }
            column("Date"; "Date")
            {
            }
            column(Status; Status)
            {
            }

            dataitem(CHKKPostedNutritionLine; "CHKK Posted Nutrition Line")
            {
                DataItemLink = "Nutrition number" = CHKKPostedNutritionHeader."Nutrition number";
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
