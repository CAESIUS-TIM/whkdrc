function Show-WindowsNotification {
    param (
        [string]$Title,
        [string]$Message
    )
    
    Add-Type -AssemblyName System.Windows.Forms
    $notifyIcon = New-Object System.Windows.Forms.NotifyIcon
    $notifyIcon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon((Get-Command pwsh).Source)
    $notifyIcon.Visible = $true
    $notifyIcon.ShowBalloonTip(0,$Title,$Message,[System.Windows.Forms.ToolTipIcon]::Info)
}

# Usage:
# Show-WindowsNotification -Title "Notification Title" -Message "Notification Message"

function Start-Komorebi { komorebic start -c $Env:USERPROFILE\komorebi.json --whkd } 

function Stop-Komorebi { komorebic stop } 
