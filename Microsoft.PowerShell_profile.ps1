# Install starship if you want this
# Invoke-Expression (&starship init powershell)

# these functions relies on PSFzf: https://github.com/kelleyma49/PSFzf
Import-Module PSFzf

# Git aliases 
function gs() {
    git status
}

function gfr() {
    git pull -r
}

function gca() {
    if ([string]::IsNullOrWhiteSpace(${args})) {
        Write-Host "Commit message is required" -Foreground Red
        return
    }

    $coauthorsFilePath = "$HOME\.git-co-authors"
    if (! (Test-Path $coauthorsFilePath)) {
        Write-Host "File $coauthorsFilePath does not exist" -Foreground Red
        return
    }

    $selected = Get-Content $coauthorsFilePath |
            Invoke-FzF -Multi -Exit0 -Layout reverse |
            ForEach-Object {
                "co-authored-by: $_"
            }

    if ($selected.Length -eq 0) {
        Write-Host "No coauthor selected" -Foreground Red
        return
    }

    $coauthorsMessage = $selected -join "`n"
    git commit -m "${args}`n`n${coauthorsMessage}"
}

function gco() {
    git checkout $args
}

Remove-Item "Alias:gcm" -Force
function gcm() { 
	git commit --message $args 
}

Remove-Item "Alias:gl" -Force
function gl() {
    git log --topo-order --graph --decorate --pretty=format:"%C(green)%h%C(reset) %s%C(red)%d%C(reset)"
}

function g() {
    git $args
}

# Kubect aliases
function k() {
    kubectl $args
}

function kl() {
	$selected = kubectl get pods $args | Invoke-Fzf -Select1 -Exit0 -Layout reverse

	if ([string]::IsNullOrWhitespace($selected)) {
        Write-Host "No pods matches the provided pattern" -Foreground Yellow
    } else {
        kubectl logs -f $selected.split(" ")[0]
    }	
}

