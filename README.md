# Set up powershell

1. Install https://github.com/kelleyma49/PSFzf
2. Run `$profile` in ps1 to get your profile path
3. Copy `Microsoft.PowerShell_profile.ps1` into your `$profile` path

# Set up WSL

This assumes you have set up your aws credentials and kubectl config on windows

1. Clone this repo and create symbolic links 
    - Run `ln -s /mnt/c/dev/windows-setup/wsl/.aliases .aliases` to copy the aliases to wsl
    - Run `ln -s /mnt/c/Users/lam.tu/.git-co-authors .git-co-authors` to copy .git-co-authors
    - Run `ln -s /mnt/c/dev/windows-setup/wsl/functions ~/functions` to copy functions
2. Install zsh following https://github.com/lamttu/prezto
    - Setting up zsh based on the fork should give you the correct `.zshrc`. But just in case i include `.zshrc` here 
3. Run the install.sh file

    