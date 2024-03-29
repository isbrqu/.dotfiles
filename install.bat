@echo off

mklink /d %USERPROFILE%\.dotfiles %~dp0%src
mklink /d %USERPROFILE%\.vim %USERPROFILE%\.dotfiles\vim
mklink /d %USERPROFILE%\.aws %USERPROFILE%\.dotfiles\aws
mklink /d %USERPROFILE%\.script %USERPROFILE%\.dotfiles\script\src
xcopy %USERPROFILE%\.dotfiles\ssh %USERPROFILE%\.ssh /i /e /c

rmdir /s /q %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
mklink /d %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState %USERPROFILE%\.dotfiles\wt

mklink %USERPROFILE%\.gitconfig %USERPROFILE%\.dotfiles\git\config
mklink %USERPROFILE%\.bash_profile %USERPROFILE%\.dotfiles\bash\profile
mklink %USERPROFILE%\.bashrc %USERPROFILE%\.dotfiles\bash\run
mklink %USERPROFILE%\.bash_history %USERPROFILE%\.dotfiles\bash\history
