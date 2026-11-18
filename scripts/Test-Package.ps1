[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
foreach ($path in @('README.md', 'README.vi.md', 'VALIDATION.md', 'scripts/Install-Skill.ps1',
    'skills/design-team/SKILL.md', 'skills/design-team/agents/openai.yaml',
    'skills/design-team/references/catalog.md')) {
    if (!(Test-Path -LiteralPath (Join-Path $root $path) -PathType Leaf)) { throw "Missing $path" }
}
foreach ($file in Get-ChildItem -LiteralPath $PSScriptRoot -Filter '*.ps1') {
    $errorsFound = $null
    [void][Management.Automation.Language.Parser]::ParseFile($file.FullName, [ref]$null, [ref]$errorsFound)
    if ($errorsFound.Count) { throw ($errorsFound -join [Environment]::NewLine) }
}
foreach ($doc in Get-ChildItem -LiteralPath $root -Filter '*.md' -Recurse -File) {
    $body = Get-Content -LiteralPath $doc.FullName -Raw -Encoding utf8
    foreach ($match in [regex]::Matches($body, '\[[^\]]+\]\(([^)]+)\)')) {
        $link = $match.Groups[1].Value
        if ($link -match '^https?://|^#') { continue }
        if (!(Test-Path -LiteralPath (Join-Path $doc.DirectoryName $link))) {
            throw "Broken link in $($doc.Name): $link"
        }
    }
}
$catalog = Get-Content -Raw -LiteralPath (Join-Path $root 'skills/design-team/references/catalog.md')
$pins = [regex]::Matches($catalog, 'https://github\.com/([\w.-]+/[\w.-]+)/blob/[0-9a-f]{40}/[^)\s]*SKILL\.md\)')
$repos = @($pins | ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique)
if ($pins.Count -ne 12 -or $repos.Count -ne 12) { throw 'Expected 12 distinct pinned skill entries' }
Write-Output 'Package OK. Required files, local links, PowerShell syntax and 12 catalog pins passed.'
