module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ctsandbox@outlook.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox (ou-doh2-kyck2cag)"
    SSOUserEmail              = "ctsandbox@outlook.com"
    SSOUserFirstName          = "SandboxAccount"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
  terraform_distribution      = "oss"
}
