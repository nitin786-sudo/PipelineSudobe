# Need to place your subscription ID here in place of XYZ
Subscription_ID = "XYZ"

rg_names = {
    rg1 = {
        name     = "Dev-RG-1"
        location = "East US"
    }

    rg2 = {
        name     = "Dev-RG-2"
        location = "West US"
    }
}

stg = {
    stg1 = {
        stg_name     = "devstgaccount1"
        rg_name      = "Dev-RG-1"
        stg_location = "East US"
    }
}

vnet = {
    vnet1 = {
        vnet_name     = "Dev-VNet-1"
        address_space = ["10.0.0.0/16"]
        vnet_location = "East US"
        rg_name       = "Dev-RG-1"
    }
}

subnet = {
    subnet1 = {
        subnet_name     = "Dev-Subnet-1"
        rg_name        = "Dev-RG-1"
        vnet_name      = "Dev-VNet-1"
        address_prefixes = ["10.0.1.0/24"]
    }
}

pip = {
    pip1 = {
        pip_name  = "Dev-PublicIP-1"
        rg_name   = "Dev-RG-1"
        location  = "East US"
    }
}

vm = {
    vm1 = {
        vm_name       = "Dev-VM-1"
        rg_name       = "Dev-RG-1"
        vm_location   = "East US"
        nic_name      = "Dev-NIC-1"
        nic_location  = "East US"
        vnet_name     = "Dev-VNet-1"
        subnet_name   = "Dev-Subnet-1"
        pip_name      = "Dev-PublicIP-1"
        vm_size       = "Standard_B1s"
        admin_username = "adminuser9297"
        admin_password  = "P@ssw0rd12349876!"
        source_image_reference = {
            source_image_publisher = "Canonical"
            source_image_offer     = "0001-com-ubuntu-server-jammy"
            source_image_sku       = "22_04-lts"
            source_image_version   = "latest"
        }
    }
}