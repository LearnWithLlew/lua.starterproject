# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/LearnWithLlew/lua.starterproject/master/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#


iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install mingw
choco install lua
choco install luarocks


# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://raw.githubusercontent.com/LearnWithLlew/lua.starterproject.get C:\Code\lua.starterproject
cd C:\Code\lua.starterproject

# run
luarocks install busted
run_tests.bat

# Done
cls
echo "Done!"
