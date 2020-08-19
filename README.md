# Idris 2 on Windows

A repository to create a nightly builds for Idris 2. Build was not tested extensively, if you have any issue submit a issue or contact with me on Slack by sending private message to aurielmp or simply ask in #idris channel. 

[Link to Slack server](https://fpchat-invite.herokuapp.com/)

## Installation steps
1. Download the release build from [there](https://github.com/hawkend/idris2-windows/releases/tag/refs%2Fheads%2Fmaster) and unpack archive.
2. Run a Powershell and execute script configure.ps1 located in root directory*.
> \> .\configure.ps1
3. Add the bin directory to the Path environment variable e.g 
> C:\Languages\idris2-windows-nightly\idris2\\.idris2\bin
4. Run a cmd and type idris2 to start REPL session.

\* You might be asked to change policy of script execution. Powershell will forbid you to execute any script as default setting:
> \> Set-ExecutionPolicy Unrestricted
