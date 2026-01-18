# ------------------------------------------------------------
# Script Name: bulk-user-creation.ps1
# Purpose: Create Active Directory users in bulk from a CSV file
# ------------------------------------------------------------

# Import the Active Directory module
Import-Module ActiveDirectory

# Path to CSV file containing user data
$CsvPath = ".\users.csv"

# Target OU and security group
$TargetOU = "OU=IT,DC=corp,DC=local"
$SecurityGroup = "IT-Users"

# Import users from CSV
$Users = Import-Csv $CsvPath

foreach ($User in $Users) {

    # Check if user already exists
    $ExistingUser = Get-ADUser -Filter "SamAccountName -eq '$($User.Username)'" -ErrorAction SilentlyContinue

    if ($ExistingUser) {
        Write-Host "User $($User.Username) already exists. Skipping." -ForegroundColor Yellow
    }
    else {
        # Create new AD user
        New-ADUser `
            -Name "$($User.FirstName) $($User.LastName)" `
            -GivenName $User.FirstName `
            -Surname $User.LastName `
            -SamAccountName $User.Username `
            -UserPrincipalName "$($User.Username)@corp.local" `
            -Path $TargetOU `
            -AccountPassword (ConvertTo-SecureString $User.Password -AsPlainText -Force) `
            -Enabled $true `
            -ChangePasswordAtLogon $true

        # Add user to security group
        Add-ADGroupMember -Identity $SecurityGroup -Members $User.Username

        Write-Host "User $($User.Username) created and added to $SecurityGroup." -ForegroundColor Green
    }
}

Write-Host "Bulk user creation completed." -ForegroundColor Cyan