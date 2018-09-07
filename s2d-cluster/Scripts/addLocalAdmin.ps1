<#

.SYNOPSIS
add user/group to local administartors group.

.DESCRIPTION
This script add user/group to local administrator group of the Server.

.ROLE
Readers

#>

param(
    [Parameter(mandatory = $true)]
    [string]$DomainFQDN,

    [Parameter(mandatory = $true)]
    [string]$userAccount
)

Add-LocalGroupMember -Group "Administrators" -Member "$DomainFQDN\$userAccount"