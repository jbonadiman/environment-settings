# Dotfiles

### TODO:

- [Windows] Make sure US-International is the only keyboard
- [Windows] Install StartAllBack (winget install --id "StartIsBack.StartAllBack")
- [Windows] Install PowerToys (winget install --id "Microsoft.PowerToys")
- [Windows] Install rainmeter (scoop install rainmeter)
- [Windows] Backup rainmeter settings/files
- [Windows] Install EdgeDeflector, Battle.net, Origin
- [Windows] Amazon Games hash is failing on winget
- [WSL] Fix bug and guarantee that Windows exe will be executed successfully
- [WSL] exa is really slow right now with the -l option. I'm using -1 option for now, but I should change it back in exa version 0.11.0 (this improvement is marked for that version miletone)
- [WSL] Install shfmt so that bat-extras can be minified
- [WSL] Find a way to use the trash, so I don't use rm directly
- [WSL] Syntax highlighting in commands
- [WSL] Autocomplete in commands
- [All] Add separation installations tags (personal, essential, dev...)
- [All] Add command line options that defines what tags should be installed and if upgrades must be run

### Annotations

Docker bug:
    ```/mnt/c/Windows/System32/wsl.exe -d $DOCKER_DISTRO sh -c "nohup sudo -b dockerd < /dev/null > $DOCKER_DIR/dockerd.log 2>&1"
    Causando erro:
    <3>init: (107) ERROR: UtilAcceptVsock:244: accept4 failed 110```
