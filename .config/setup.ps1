# Local Setup
function Get-LocalSetupInformation {
    <#
    .SYNOPSIS
    Set up a basic local type of configuration file for Okta administration 

    .DESCRIPTION
    The least secure way to set this up. Stores the Okta configuration information locally, while still providing at least a minimal attempt at limited protection. It is recommended the keys are stored in a key vault.

    .EXAMPLE
    An example

    .NOTES
    General notes
    #>

    [pscustomobject] @{
        Name = read-host -Prompt "Friendly Name Of EndPoint:"
        Endpoint = read-host -Prompt "Okta Org/Tenant URL (https):"
        APIKey = read-host -prompt "API Key" -AsSecureString
    }

}

function Get-AzureKeyVaultSetupInformation {
    <#
    .SYNOPSIS
    Set up key pulls for Azure Key Vault #futurestate

    .DESCRIPTION
    Long description

    .EXAMPLE
    An example

    .NOTES
    General notes
    #>
}


$configuration = Get-LocalSetupInformation -AsSecureString



