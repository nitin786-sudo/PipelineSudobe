module "RG"{
    source = "../../Module/RG"
    rg_names = var.rg_names
}

module "STG"{
    depends_on = [ module.RG ]
    source = "../../Module/STG"
    stg = var.stg  
}   

module "VNET" {
    depends_on = [ module.RG ]
    source = "../../Module/VNET"
    vnet = var.vnet
}

module "Subnet" {
    depends_on = [ module.VNET ]
    source = "../../Module/SUBNET"
    subnet = var.subnet
  
}

module "PIP" {
    depends_on = [ module.RG ]
    source = "../../Module/PIP"
    pip = var.pip
}

module "Compute" {
    depends_on = [ module.Subnet, module.PIP ]
    source = "../../Module/Compute"
    vm = var.vm
}