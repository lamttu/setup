# Set up powershell

1. Install https://github.com/kelleyma49/PSFzf
2. Run `$profile` in ps1 to get your profile path
3. Copy `Microsoft.PowerShell_profile.ps1` into your `$profile` path

# Set up WSL

This assume you have set up your aws credentials and kubectl config on windows

1. Run the scripts file to set up aws and kubectl
2. Run `ln -s /mnt/c/dev/windows-setup/wsl/.aliases .bash_aliases` to copy the aliases to wsl
3. Run `. ~/.bash_rc` 