for /f %%i in ('git config --get user.email') do set GitUserEmail=%%i
echo %GitUserEmail%

if [%GitUserEmail%] == [] (
    git config --local user.email "johndoe@example.com"
)

for /f %%i in ('git config --get user.name') do set GitUserName=%%i
echo %GitUserName%

if [%GitUserName%] == [] (
    git config --local user.name "John Doe"
)

pause