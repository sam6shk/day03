module "rg_module" {
    source = "../chaild_module/resource_group"
    rg_name = "day3_rg"
    location = "centralindia"
 }

 module "stg_module" {
    depends_on = [ module.rg_module ]
    source = "../chaild_module/storage_account"
    stg_name = day3stgaccount
    rg_name = "day3_rg"
    location = "centralindia"

 }


