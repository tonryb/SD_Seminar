tableextension 123456700 ResourceExt extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456701;CSD_ResourceType;Option)
        {
            Caption = 'Resource Type';
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
        }// Add changes to table fields here

        field(123456702;CSD_Maximum_Participiants;Integer)
        {
            Caption = 'Maximum Participiants';
        }

        field(123456703;CSD_Quantity_Per_Day;Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
    
    var
        myInt : Integer;
}
