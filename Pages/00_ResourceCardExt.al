pageextension 123456700 ResourceCardExt extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("Resource Type";CSD_ResourceType)
            {

            }
            field("Quantity Per Day";CSD_Quantity_Per_Day)
            {

            }
        }
        addlast("Personal Data")
        {
            group(Room)
            {
                field("Maximum Participiants";CSD_Maximum_Participiants)
                {
                    Visible = ShowMaxField;
                }

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    
    var
      [InDataSet]
      ShowMaxField: Boolean;

      trigger OnOpenPage();
      var
          myInt : Integer;
      begin
          ShowMaxField := (Type = type::Machine);
          CurrPage.Update(false);
      end;

}