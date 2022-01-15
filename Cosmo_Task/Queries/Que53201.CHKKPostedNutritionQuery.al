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
                column(Protein; Protein)
                {

                }
                column(Fat;Fat)
                {

                }
                column(Carbohydrate;Carbohydrate)
                {

                }
                column(KJ;KJ)
                {

                }
                column(Kcal;Kcal)
                {

                }
                column(Unit_of_Measure;"Unit of Measure")
                {

                }
                column(Quantity;Quantity)
                {

                }
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
