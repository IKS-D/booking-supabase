# Description: A simple script to run Supabase CLI commands
param (
    [switch]$loop
)

$commands = @(
    @{ Title = "Supabase Status"; Command = "supabase status" },
    @{ Title = "Start Supabase server"; Command = "supabase start" },
    @{ Title = "Stop Supabase server"; Command = "supabase stop" },
    @{ Title = "Reset database"; Command = "supabase db reset" },
    @{ Title = "Dump remote database"; Command = "supabase db dump -f supabase/supabase-data.sql --data-only" }
)

function Print-Menu {
    param ([bool]$NewLine)

    if ($NewLine) { Write-Host "" }

    $spacer = "       "

    Write-Host "Select a command:" -ForegroundColor Cyan

    for ($i = 0; $i -lt $commands.Count; $i++) {
        $command = $commands[$i]
        $commandNumber = $i + 1
        Write-Host $spacer -NoNewline
        Write-Host "($commandNumber) $($command.Title)" -ForegroundColor Green -NoNewline
        Write-Host " ($($command.Command))" -ForegroundColor DarkGray
    }

    Write-Host $spacer"(q) Quit" -ForegroundColor Yellow
}

Print-Menu

while ($Key -ne 'q' -and $Key -ne 'Q') {
    $Key = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown').Character.ToString()

    if ($Key -match '^[0-9]$' -and [int]$Key -le $commands.Count) {
        $index = [int]$Key - 1

        $command = $commands[$index]        
        $run_command = $command.Command

        Write-Host
        Invoke-Expression $run_command
 
        if (-not $loop) {
            break
        }

        Print-Menu -NewLine $true
    }
}