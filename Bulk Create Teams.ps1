# Bulk Create Teams
# Maarten Camps
# Camarate ICT

[array]$teams = Import-Csv .\createteams.csv #Import CSV information in Array

$prefix = "Team-" #Set defaiult prefix for each Team (Will return in Teams site on Sharepoint as well)

foreach ($team in $teams) {

    $t = $team.Name

    $mailnickname = $prefix+$t #mailnickname is belangrijk om te vullen anders wordt deze random gegenereerd

    New-Team -DisplayName $t -Description $t -MailNickName $mailnickname -AllowGuestCreateUpdateChannels $false -AllowGuestDeleteChannels $false -AllowDeleteChannels $false -AllowAddRemoveApps $false -AllowCreateUpdateRemoveTabs $false -AllowCreateUpdateChannels $false -AllowCreateUpdateRemoveConnectors $false -ShowInTeamsSearchAndSuggestions $true

    }