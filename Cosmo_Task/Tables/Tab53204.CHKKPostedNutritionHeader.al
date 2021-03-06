table 53204 "CHKK Posted Nutrition Header"
{
    Caption = 'CHKK Könyvelt Táplálkozás Fejléc';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Nutrition number"; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
        }
        field(2; "Customer number"; Code[100])
        {
            Caption = 'Vevő';
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
        field(3; "Customer name"; Text[100])
        {
            Caption = 'Vevő neve';
            DataClassification = CustomerContent;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Dátum';
            DataClassification = CustomerContent;
        }
        field(5; Status; Option)
        {
            Caption = 'Státusz';
            DataClassification = CustomerContent;
            OptionMembers = Open,Closed;
        }
    }
    keys
    {
        key(PK; "Nutrition number")
        {
            Clustered = true;
        }
    }
}
