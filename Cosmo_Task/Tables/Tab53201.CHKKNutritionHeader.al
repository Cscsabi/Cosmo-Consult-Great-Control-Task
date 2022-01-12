table 53201 "CHKK Nutrition Header"
{
    Caption = 'CHKK Táplálkozás fejléc';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Nutrition number"; Code[20])
        {
            Caption = 'Nutrition number';
            DataClassification = CustomerContent;
        }
        field(2; "Customer number"; Code[20])
        {
            Caption = 'Customer number';
            DataClassification = CustomerContent;
        }
        field(3; "Customer name"; Text[100])
        {
            Caption = 'Customer name';
            DataClassification = CustomerContent;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
            OptionMembers = Open, Closed;
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
