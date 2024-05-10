location = "West Europe"
existent_resource_group_name = "rg1dnazareno-lab01"

maquinasvirtuales = {
    mv1 = {
        name                = "weeklymv1"
        resource_group_name = "rg1dnazareno-lab01"
        location            = "West Europe"
        size                = "Standard_F2"
        admin_username      = "mv1user"
        interface_name      = "weekly_aznic1"
    }
    mv2 = {
        name                = "weeklymv2"
        resource_group_name = "rg1dnazareno-lab01"
        location            = "West Europe"
        size                = "Standard_F2"
        admin_username      = "mv2user"
        interface_name      = "weekly_aznic2"
    } 
    mv3 = {
        name                = "weeklymv3"
        resource_group_name = "rg1dnazareno-lab01"
        location            = "West Europe"
        size                = "Standard_F2"
        admin_username      = "mv3user"
        interface_name      = "weekly_aznic3"
    } 
  }
