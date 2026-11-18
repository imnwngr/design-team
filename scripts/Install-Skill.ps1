[CmdletBinding(SupportsShouldProcess)]
param(
    [string]$Destination = (Join-Path $HOME '.agents/skills/design-team')
)

$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot '../skills/design-team'
$target = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($Destination)
if (Test-Path -LiteralPath $target) {
    throw "Destination already exists: $target"
}
if (!$PSCmdlet.ShouldProcess($target, 'Install Design Team skill')) { return }

$source = (Resolve-Path -LiteralPath $source).Path
$separator = [IO.Path]::DirectorySeparatorChar
if ($target.StartsWith("$source$separator", [StringComparison]::OrdinalIgnoreCase)) {
    throw 'Choose a destination outside the source skill directory.'
}
$parent = Split-Path -Parent $target
[IO.Directory]::CreateDirectory($parent) | Out-Null
$stage = Join-Path $parent ([IO.Path]::GetRandomFileName())
New-Item -ItemType Directory -Path $stage -ErrorAction Stop | Out-Null
try {
    foreach ($entry in Get-ChildItem -LiteralPath $source -Force) {
        Copy-Item -LiteralPath $entry.FullName -Destination $stage -Recurse -ErrorAction Stop
    }
    [IO.Directory]::Move($stage, $target)
    Write-Output "Installed Design Team at $target"
} finally {
    if (Test-Path -LiteralPath $stage) {
        $resolved = (Resolve-Path -LiteralPath $stage).Path
        if ((Split-Path -Parent $resolved) -eq $parent -and $resolved -eq $stage) {
            Remove-Item -LiteralPath $resolved -Recurse -Force
        }
    }
}
