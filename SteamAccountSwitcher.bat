@echo off
if "%~1"==":ContinueInstall" (
    set "OldBatLoc=%~2"
    goto :ContinueInstall
)
if not exist "%appdata%\SteamAccountSwitcher\SteamAccountSwitcher.bat" goto installer
mode con:cols=108 lines=37
TITLE SteamAccountSwitcher

for /f "delims=" %%E in ('forfiles /p "%~dp0." /m "%~nx0" /c "cmd /c echo(0x1B"') do (
    set "ESC=%%E"
)

setlocal EnableExtensions EnableDelayedExpansion

(
    for /l %%a in (1 1 5) do (
        set /p "username-%%a="
    )
	set /p "ColorValueSaved="
	set /p "NameTimer="
	set /p "Installed="
) <"%appdata%\SteamAccountSwitcher\SASData.txt"
set "ColorValue=%ColorValueSaved:~0,1%"
if not "%Installed%"=="true" (goto Installer)

	(
		echo.%username-1%
		echo.%username-2%
		echo.%username-3%
		echo.%username-4%
		echo.%username-5%
		echo.%ColorValueSaved%
		echo.%NameTimer%
		echo.%Installed%
	)> "%appdata%\SteamAccountSwitcher\SASData.txt"

set "Colorvalue=%ColorValueSaved:~0,1%"
color %ColorValue%


set Title1=    .d8888b.  888                                    
set Title2=    d88P  Y88b 888                                     
set Title3=     Y88b.      888                                      
set Title4=       "Y888b.   888888 .d88b.   8888b.  88888b.d88b.      
set Title5=         "Y88b. 888   d8P  Y8b     "88b 888 "888 "88b    
set Title6=          "888 888   88888888 .d888888 888  888  888   
set Title7=   Y88b  d88P Y88b. Y8b.     888  888 888  888  888  
set Title8=    "Y8888P"   "Y888 "Y8888  "Y888888 888  888  888  

:Display
set "user1disp=%username-1%                                                                                          "
set "user2disp=%username-2%                                                                                          "
set "user3disp=%username-3%                                                                                          "
set "user4disp=%username-4%                                                                                          "
set "user5disp=%username-5%                                                                                          "
cls
echo.
echo                     o O       o O       o O       o O       o O       o O
echo                   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O
echo                 O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O
echo                O-oO ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| oO-o
echo               O---o O o       O o       O o       O o       O o       O o O---o
echo              O-----O                                                     O-----o
echo              o-----O%Title1%o-----O
echo               o---O%Title2%o---O
echo                o-O%Title3%o-O
echo                 O%Title4%O
echo                O-o%Title5%O-O
echo               O---o%Title6%O---o
echo              O-----o%Title7%O-----o
echo              o-----O%Title8%o-----O
echo               o---O                                                       o---O
echo                o-O                                                         o-O
echo                 O                                                           O
echo                O-o                  Select your account                    O-o
echo               O---o        =======================================        O---o
echo              O-----o                                                     O-----o
if defined username-1 (echo              o-----O       1^) %user1disp:~0,43%o-----O) else echo              o-----O                                                     o-----O
if defined username-2 (echo               o---O        2^) %user2disp:~0,44%o---O) else echo               o---O                                                       o---O
if defined username-3 (echo                o-O         3^) %user3disp:~0,45%o-O) else echo                o-O                                                         o-O
if defined username-4 (echo                 O          4^) %user4disp:~0,46%O) else echo                 O                                                           O
if defined username-5 (echo                O-o         5^) %user5disp:~0,45%O-o) else echo                O-o                                                         O-o
echo               O---o                                                       O---o
echo              O-----o      E) Edit usernames                              O-----o
echo              o-----O                                                     o-----O
echo               o---O o O       o O       o O       o O       o O       o O o---O
echo                o-Oo ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| Oo-O
echo                 O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O
echo                   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o
echo                     O o       O o       O o       O o       O o       O o

>nul choice /C 12345be
	If Errorlevel 7 Goto Edit
	If Errorlevel 6 Goto bruh1
	if defined username-%errorlevel% (Goto %errorlevel%)

:bruh1
>nul choice /C 12345re
	If Errorlevel 7 Goto Edit
	If Errorlevel 6 Goto bruh2
	if defined username-%errorlevel% (Goto %errorlevel%)

:bruh2
>nul choice /C 12345ue
	If Errorlevel 7 Goto Edit
	If Errorlevel 6 Goto bruh3
	if defined username-%errorlevel% (Goto %errorlevel%)

:bruh3
>nul choice /C 12345he
	If Errorlevel 7 Goto Edit
	If Errorlevel 6 Goto BruhComplete
	if defined username-%errorlevel% (Goto %errorlevel%)

:BruhComplete
set Title1=       888888b.                    888               
set Title2=        888  "88b                   888                
set Title3=         888  .88P                   888                 
set Title4=          8888888K.  888d888 888  888 88888b.              
set Title5=         888  "Y88b 888P"   888  888 888 "88b            
set Title6=        888    888 888     888  888 888  888           
set Title7=       888   d88P 888     Y88b 888 888  888          
set Title8=       8888888P"  888      "Y88888 888  888          
goto Display

:Edit
cls
echo. 
echo                     o O       o O       o O       o O       o O       o O
echo                   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O
echo                 O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O
echo                O-oO ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| oO-o
echo               O---o O o       O o       O o       O o       O o       O o O---o
echo              O-----O                                                     O-----o
echo              o-----O%Title1%o-----O
echo               o---O%Title2%o---O
echo                o-O%Title3%o-O
echo                 O%Title4%O
echo                O-o%Title5%O-O
echo               O---o%Title6%O---o
echo              O-----o%Title7%O-----o
echo              o-----O%Title8%o-----O
echo               o---O                                                       o---O
echo                o-O                                                         o-O
echo                 O                                                           O
echo                O-o                 Which account to change?                O-o
echo               O---o        =======================================        O---o
echo              O-----o                                                     O-----o
echo              o-----O       1) %user1disp:~0,43%o-----O
echo               o---O        2) %user2disp:~0,44%o---O
echo                o-O         3) %user3disp:~0,45%o-O
echo                 O          4) %user4disp:~0,46%O
echo                O-o         5) %user5disp:~0,45%O-o
echo               O---o                                                       O---o
echo              O-----o      B) Back       C) Cycle colors                  O-----o
echo              o-----O                                                     o-----O
echo               o---O o O       o O       o O       o O       o O       o O o---O
echo                o-Oo ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| Oo-O
echo                 O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O
echo                   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o
echo                     O o       O o       O o       O o       O o       O o


>nul choice /C 12345bcp
	If ErrorLevel 8 Goto ReinstallChoice
	If Errorlevel 7 Goto ChangeColor
	If Errorlevel 6 Goto Display
	set "Editable=username-%errorlevel%" & Goto EditCurrent

:ChangeColor
set "ColorvalueSaved=%ColorValueSaved:~1%%ColorValueSaved:~0,1%"
	(
		echo.%username-1%
		echo.%username-2%
		echo.%username-3%
		echo.%username-4%
		echo.%username-5%
		echo.%ColorValueSaved%
		echo.2
		echo.true
	)> "%appdata%\SteamAccountSwitcher\SASData.txt"
(
    for /l %%a in (1 1 5) do (
        set /p "username-%%a="
    )
	set /p "ColorValueSaved="
) <"%appdata%\SteamAccountSwitcher\SASData.txt"
set "Colorvalue=%ColorValueSaved:~0,1%"
color %ColorValue%
		goto Edit

:EditCurrent
cls
echo. 
echo                     o O       o O       o O       o O       o O       o O
echo                   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O
echo                 O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O
echo                O-oO ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| oO-o
echo               O---o O o       O o       O o       O o       O o       O o O---o
echo              O-----O                                                     O-----o
echo              o-----O%Title1%o-----O
echo               o---O%Title2%o---O
echo                o-O%Title3%o-O
echo                 O%Title4%O
echo                O-o%Title5%O-O
echo               O---o%Title6%O---o
echo              O-----o%Title7%O-----o
echo              o-----O%Title8%o-----O
echo               o---O                                                       o---O
echo                o-O                                                         o-O
echo                 O                  Change username below.                   O
echo                O-o                  *Use lowercase only*                   O-o
echo               O---o        =======================================        O---o
echo              O-----o                                                     O-----o
echo              o-----O       New username:                                 o-----O
echo               o---O                                                       o---O
echo                o-O                                                         o-O
echo                 O                                                           O
echo                O-o                                                         O-o
echo               O---o                                                       O---o
echo              O-----o                                                     O-----o
echo              o-----O                                                     o-----O
echo               o---O o O       o O       o O       o O       o O       o O o---O
echo                o-Oo ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| O   o ^| ^| Oo-O
echo                 O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O ^| ^| ^| ^| O
echo                   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o   O ^| ^| o
echo                     O o       O o       O o       O o       O o       O o

set "EditableInput="
set "username-%errorlevel%="
set /p "EditableInput=%ESC%[22;41H
set %Editable%=%EditableInput%

(
	echo.%username-1%
	echo.%username-2%
	echo.%username-3%
	echo.%username-4%
	echo.%username-5%
	echo.%ColorValueSaved%
	echo.2
	echo.true
)> "%appdata%\SteamAccountSwitcher\SASData.txt"

goto Display


:5
set username=%username-5%
Goto buildname

:4
set username=%username-4%
Goto buildname

:3
set username=%username-3%
Goto buildname

:2
set username=%username-2%
Goto buildname

:1
set username=%username-1%
Goto buildname


:buildname
taskkill.exe /F /IM steam.exe 2>&1 >nul
reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f >nul
reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f >nul
start steam://open/main >nul

cls
mode con:cols=87 lines=17
echo.
echo.          
echo.          
echo.          888                            888 d8b                              
echo.          888                            888 Y8P                              
echo.          888                            888                                  
echo.          888      .d88b.   8888b.   .d88888 888 88888b.   .d88b.             
echo.          888     d88""88b     "88b d88" 888 888 888 "88b d88P"88b            
echo.          888     888  888 .d888888 888  888 888 888  888 888  888            
echo.          888     Y88..88P 888  888 Y88b 888 888 888  888 Y88b 888 d8b d8b d8b
echo.          88888888 "Y88P"  "Y888888  "Y88888 888 888  888  "Y88888 Y8P Y8P Y8P
echo.                                                               888            
echo.                                                          Y8b d88P            
echo.                                                           "Y88P"                         
setlocal EnableExtensions EnableDelayedExpansion
set name=%username%

if not defined name goto OutputLength
:GetLength
if not "!name:~%Length%,1!" == "" (
    set /A Length+=1
    goto GetLength
)
:OutputLength
set CurrentLength=-1
set NextValue=-1
set LetterLValue=0
set LCount=0

:Letter
	set /A CurrentLength+=1
		if %CurrentLength%==%Length% goto end
		set /A NextValue+=1
		set /A LCount+=1
		set L%LCount%=!name:~%NextValue%,1!
			goto find


:find
if !L%LCount%!==a goto a
if !L%LCount%!==b goto b
if !L%LCount%!==c goto c
if !L%LCount%!==d goto d
if !L%LCount%!==e goto e
if !L%LCount%!==f goto f
if !L%LCount%!==g goto g
if !L%LCount%!==h goto h
if !L%LCount%!==i goto i
if !L%LCount%!==j goto j
if !L%LCount%!==k goto k
if !L%LCount%!==l goto l
if !L%LCount%!==m goto m
if !L%LCount%!==n goto n
if !L%LCount%!==o goto o
if !L%LCount%!==p goto p
if !L%LCount%!==q goto q
if !L%LCount%!==r goto r
if !L%LCount%!==s goto s
if !L%LCount%!==t goto t
if !L%LCount%!==u goto u
if !L%LCount%!==v goto v
if !L%LCount%!==w goto w
if !L%LCount%!==x goto x
if !L%LCount%!==y goto y
if !L%LCount%!==z goto z
if !L%LCount%!==0 goto 0
if !L%LCount%!==1 goto 1
if !L%LCount%!==2 goto 2
if !L%LCount%!==3 goto 3
if !L%LCount%!==4 goto 4
if !L%LCount%!==5 goto 5
if !L%LCount%!==6 goto 6
if !L%LCount%!==7 goto 7
if !L%LCount%!==8 goto 8
if !L%LCount%!==9 goto 9
if "!L%LCount%!"==" " goto space
) ELSE (
goto asterisk
)


:a
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4= 8888b.  "
set  "L%LCount%Ln5=    "88b "
set  "L%LCount%Ln6=.d888888 "
set  "L%LCount%Ln7=888  888 "
set  "L%LCount%Ln8="Y888888 "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:b
set  "L%LCount%Ln1=888      "
set  "L%LCount%Ln2=888      "
set  "L%LCount%Ln3=888      "
set  "L%LCount%Ln4=88888b.  "
set  "L%LCount%Ln5=888 "88b "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=888 d88P "
set  "L%LCount%Ln8=88888P"  "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:c
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4= .d8888b "
set  "L%LCount%Ln5=d88P"    "
set  "L%LCount%Ln6=888      "
set  "L%LCount%Ln7=Y88b.    "
set  "L%LCount%Ln8= "Y8888P "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:d
set  "L%LCount%Ln1=     888 "
set  "L%LCount%Ln2=     888 "
set  "L%LCount%Ln3=     888 "
set  "L%LCount%Ln4= .d88888 "
set  "L%LCount%Ln5=d88" 888 "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=Y88b 888 "
set  "L%LCount%Ln8= "Y88888 "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:e
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4= .d88b.  "
set  "L%LCount%Ln5=d8P  Y8b "
set  "L%LCount%Ln6=88888888 "
set  "L%LCount%Ln7=Y8b.     "
set  "L%LCount%Ln8= "Y8888  "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:f
set  "L%LCount%Ln1= .d888 "
set  "L%LCount%Ln2=d88P"  "
set  "L%LCount%Ln3=888    "
set  "L%LCount%Ln4=888888 "
set  "L%LCount%Ln5=888    "
set  "L%LCount%Ln6=888    "
set  "L%LCount%Ln7=888    "
set  "L%LCount%Ln8=888    "
set  "L%LCount%Ln9=       "
set "L%LCount%Ln10=       "
set "L%LCount%Ln11=       "
	goto Letter

:g
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4= .d88b.  "
set  "L%LCount%Ln5=d88P"88b "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=Y88b 888 "
set  "L%LCount%Ln8= "Y88888 "
set  "L%LCount%Ln9=     888 "
set "L%LCount%Ln10=Y8b d88P "
set "L%LCount%Ln11= "Y88P"  "
	goto Letter

:h
set  "L%LCount%Ln1=888      "
set  "L%LCount%Ln2=888      "
set  "L%LCount%Ln3=888      "
set  "L%LCount%Ln4=88888b.  "
set  "L%LCount%Ln5=888 "88b "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=888  888 "
set  "L%LCount%Ln8=888  888 "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:i
set  "L%LCount%Ln1=d8b "
set  "L%LCount%Ln2=Y8P "
set  "L%LCount%Ln3=    "
set  "L%LCount%Ln4=888 "
set  "L%LCount%Ln5=888 "
set  "L%LCount%Ln6=888 "
set  "L%LCount%Ln7=888 "
set  "L%LCount%Ln8=888 "
set  "L%LCount%Ln9=    "
set "L%LCount%Ln10=    "
set "L%LCount%Ln11=    "
	goto Letter

:j
set  "L%LCount%Ln1=   d8b "
set  "L%LCount%Ln2=   Y8P "
set  "L%LCount%Ln3=       "
set  "L%LCount%Ln4=  8888 "
set  "L%LCount%Ln5=  "888 "
set  "L%LCount%Ln6=   888 "
set  "L%LCount%Ln7=   888 "
set  "L%LCount%Ln8=   888 "
set  "L%LCount%Ln9=   888 "
set "L%LCount%Ln10=  d88P "
set "L%LCount%Ln11=888P"  "
	goto Letter

:k
set  "L%LCount%Ln1=888      "
set  "L%LCount%Ln2=888      "
set  "L%LCount%Ln3=888      "
set  "L%LCount%Ln4=888  888 "
set  "L%LCount%Ln5=888 .88P "
set  "L%LCount%Ln6=888888K  "
set  "L%LCount%Ln7=888 "88b "
set  "L%LCount%Ln8=888  888 "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:l
set  "L%LCount%Ln1=888 "
set  "L%LCount%Ln2=888 "
set  "L%LCount%Ln3=888 "
set  "L%LCount%Ln4=888 "
set  "L%LCount%Ln5=888 "
set  "L%LCount%Ln6=888 "
set  "L%LCount%Ln7=888 "
set  "L%LCount%Ln8=888 "
set  "L%LCount%Ln9=    "
set "L%LCount%Ln10=    "
set "L%LCount%Ln11=    "
	goto Letter

:m
set  "L%LCount%Ln1=              "
set  "L%LCount%Ln2=              "
set  "L%LCount%Ln3=              "
set  "L%LCount%Ln4=88888b.d88b.  "
set  "L%LCount%Ln5=888 "888 "88b "
set  "L%LCount%Ln6=888  888  888 "
set  "L%LCount%Ln7=888  888  888 "
set  "L%LCount%Ln8=888  888  888 "
set  "L%LCount%Ln9=              "
set "L%LCount%Ln10=              "
set "L%LCount%Ln11=              "
	goto Letter

:n
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4=88888b.  "
set  "L%LCount%Ln5=888 "88b "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=888  888 "
set  "L%LCount%Ln8=888  888 "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:o
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4= .d88b.  "
set  "L%LCount%Ln5=d88""88b "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=Y88..88P "
set  "L%LCount%Ln8= "Y88P"  "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:p
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4=88888b.  "
set  "L%LCount%Ln5=888 "88b "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=888 d88P "
set  "L%LCount%Ln8=88888P"  "
set  "L%LCount%Ln9=888      "
set "L%LCount%Ln10=888      "
set "L%LCount%Ln11=888      "
	goto Letter

:q
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4= .d88888 "
set  "L%LCount%Ln5=d88" 888 "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=Y88b 888 "
set  "L%LCount%Ln8= "Y88888 "
set  "L%LCount%Ln9=     888 "
set "L%LCount%Ln10=     888 "
set "L%LCount%Ln11=     888 "
	goto Letter

:r
set  "L%LCount%Ln1=        "
set  "L%LCount%Ln2=        "
set  "L%LCount%Ln3=        "
set  "L%LCount%Ln4=888d888 "
set  "L%LCount%Ln5=888P"   "
set  "L%LCount%Ln6=888     "
set  "L%LCount%Ln7=888     "
set  "L%LCount%Ln8=888     "
set  "L%LCount%Ln9=        "
set "L%LCount%Ln10=        "
set "L%LCount%Ln11=        "
	goto Letter

:s
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4=.d8888b  "
set  "L%LCount%Ln5=88K      "
set  "L%LCount%Ln6="Y8888b. "
set  "L%LCount%Ln7=     X88 "
set  "L%LCount%Ln8= 88888P' "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:t
set  "L%LCount%Ln1=888    "
set  "L%LCount%Ln2=888    "
set  "L%LCount%Ln3=888    "
set  "L%LCount%Ln4=888888 "
set  "L%LCount%Ln5=888    "
set  "L%LCount%Ln6=888    "
set  "L%LCount%Ln7=Y88b.  "
set  "L%LCount%Ln8= "Y888 "
set  "L%LCount%Ln9=       "
set "L%LCount%Ln10=       "
set "L%LCount%Ln11=       "
	goto Letter

:u
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4=888  888 "
set  "L%LCount%Ln5=888  888 "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=Y88b 888 "
set  "L%LCount%Ln8= "Y88888 "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:v
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4=888  888 "
set  "L%LCount%Ln5=888  888 "
set  "L%LCount%Ln6=Y88  88P "
set  "L%LCount%Ln7= Y8bd8P  "
set  "L%LCount%Ln8=  Y88P   "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:w
set  "L%LCount%Ln1=              "
set  "L%LCount%Ln2=              "
set  "L%LCount%Ln3=              "
set  "L%LCount%Ln4=888  888  888 "
set  "L%LCount%Ln5=888  888  888 "
set  "L%LCount%Ln6=888  888  888 "
set  "L%LCount%Ln7=Y88b 888 d88P "
set  "L%LCount%Ln8= "Y8888888P"  "
set  "L%LCount%Ln9=              "
set "L%LCount%Ln10=              "
set "L%LCount%Ln11=              "
	goto Letter

:x
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4=888  888 "
set  "L%LCount%Ln5=`Y8bd8P' "
set  "L%LCount%Ln6=  X88K   "
set  "L%LCount%Ln7=.d8""8b. "
set  "L%LCount%Ln8=888  888 "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:y
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4=888  888 "
set  "L%LCount%Ln5=888  888 "
set  "L%LCount%Ln6=888  888 "
set  "L%LCount%Ln7=Y88b 888 "
set  "L%LCount%Ln8= "Y88888 "
set  "L%LCount%Ln9=     888 "
set "L%LCount%Ln10=Y8b d88P "
set "L%LCount%Ln11= "Y88P"  "
	goto Letter

:z
set  "L%LCount%Ln1=         "
set  "L%LCount%Ln2=         "
set  "L%LCount%Ln3=         "
set  "L%LCount%Ln4=88888888 "
set  "L%LCount%Ln5=   d88P  "
set  "L%LCount%Ln6=  d88P   "
set  "L%LCount%Ln7= d88P    "
set  "L%LCount%Ln8=88888888 "
set  "L%LCount%Ln9=         "
set "L%LCount%Ln10=         "
set "L%LCount%Ln11=         "
	goto Letter

:0
set  "L%LCount%Ln1= .d8888b.  "
set  "L%LCount%Ln2=d88P  Y88b "
set  "L%LCount%Ln3=888    888 "
set  "L%LCount%Ln4=888    888 "
set  "L%LCount%Ln5=888    888 "
set  "L%LCount%Ln6=888    888 "
set  "L%LCount%Ln7=Y88b  d88P "
set  "L%LCount%Ln8= "Y8888P"  "
set  "L%LCount%Ln9=           "
set "L%LCount%Ln10=           "
set "L%LCount%Ln11=           "
	goto Letter

:1
set  "L%LCount%Ln1= d888   "
set  "L%LCount%Ln2=d8888   "
set  "L%LCount%Ln3=  888   "
set  "L%LCount%Ln4=  888   "
set  "L%LCount%Ln5=  888   "
set  "L%LCount%Ln6=  888   "
set  "L%LCount%Ln7=  888   "
set  "L%LCount%Ln8=8888888 "
set  "L%LCount%Ln9=        "
set "L%LCount%Ln10=        "
set "L%LCount%Ln11=        "
	goto Letter

:2
set  "L%LCount%Ln1= .d8888b.  "
set  "L%LCount%Ln2=d88P  Y88b "
set  "L%LCount%Ln3=       888 "
set  "L%LCount%Ln4=     .d88P "
set  "L%LCount%Ln5= .od888P"  "
set  "L%LCount%Ln6=d88P"      "
set  "L%LCount%Ln7=888"       "
set  "L%LCount%Ln8=888888888  "
set  "L%LCount%Ln9=           "
set "L%LCount%Ln10=           "
set "L%LCount%Ln11=           "
	goto Letter

:3
set  "L%LCount%Ln1= .d8888b.  "
set  "L%LCount%Ln2=d88P  Y88b "
set  "L%LCount%Ln3=     .d88P "
set  "L%LCount%Ln4=    8888"  "
set  "L%LCount%Ln5=     "Y8b. "
set  "L%LCount%Ln6=888    888 "
set  "L%LCount%Ln7=Y88b  d88P "
set  "L%LCount%Ln8= "Y8888P"  "
set  "L%LCount%Ln9=           "
set "L%LCount%Ln10=           "
set "L%LCount%Ln11=           "
	goto Letter

:4
set  "L%LCount%Ln1=    d8888  "
set  "L%LCount%Ln2=   d8P888  "
set  "L%LCount%Ln3=  d8P 888  "
set  "L%LCount%Ln4= d8P  888  "
set  "L%LCount%Ln5=d88   888  "
set  "L%LCount%Ln6=8888888888 "
set  "L%LCount%Ln7=      888  "
set  "L%LCount%Ln8=      888  "
set  "L%LCount%Ln9=           "
set "L%LCount%Ln10=           "
set "L%LCount%Ln11=           "
	goto Letter

:5
set  "L%LCount%Ln1=888888888  "
set  "L%LCount%Ln2=888        "
set  "L%LCount%Ln3=888        "
set  "L%LCount%Ln4=8888888b.  "
set  "L%LCount%Ln5=     "Y88b "
set  "L%LCount%Ln6=       888 "
set  "L%LCount%Ln7=Y88b  d88P "
set  "L%LCount%Ln8= "Y8888P"  "
set  "L%LCount%Ln9=           "
set "L%LCount%Ln10=           "
set "L%LCount%Ln11=           "
	goto Letter

:6
set  "L%LCount%Ln1= .d8888b.  "
set  "L%LCount%Ln2=d88P  Y88b "
set  "L%LCount%Ln3=888        "
set  "L%LCount%Ln4=888d888b.  "
set  "L%LCount%Ln5=888P "Y88b "
set  "L%LCount%Ln6=888    888 "
set  "L%LCount%Ln7=Y88b  d88P "
set  "L%LCount%Ln8= "Y8888P"  "
set  "L%LCount%Ln9=           "
set "L%LCount%Ln10=           "
set "L%LCount%Ln11=           "
	goto Letter

:7
set  "L%LCount%Ln1=8888888888 "
set  "L%LCount%Ln2=      d88P "
set  "L%LCount%Ln3=     d88P  "
set  "L%LCount%Ln4=    d88P   "
set  "L%LCount%Ln5= 88888888  "
set  "L%LCount%Ln6=  d88P     "
set  "L%LCount%Ln7= d88P      "
set  "L%LCount%Ln8=d88P       "
set  "L%LCount%Ln9=           "
set "L%LCount%Ln10=           "
set "L%LCount%Ln11=           "
	goto Letter

:8
set  "L%LCount%Ln1= .d8888b.  "
set  "L%LCount%Ln2=d88P  Y88b "
set  "L%LCount%Ln3=Y88b. d88P "
set  "L%LCount%Ln4= "Y88888"  "
set  "L%LCount%Ln5=.d8P""Y8b. "
set  "L%LCount%Ln6=888    888 "
set  "L%LCount%Ln7=Y88b  d88P "
set  "L%LCount%Ln8= "Y8888P"  "
set  "L%LCount%Ln9="
set "L%LCount%Ln10="
set "L%LCount%Ln11="
	goto Letter

:9
set  "L%LCount%Ln1= .d8888b.  "
set  "L%LCount%Ln2=d88P  Y88b "
set  "L%LCount%Ln3=888    888 "
set  "L%LCount%Ln4=Y88b. d888 "
set  "L%LCount%Ln5= "Y888P888 "
set  "L%LCount%Ln6=       888 "
set  "L%LCount%Ln7=Y88b  d88P "
set  "L%LCount%Ln8= "Y8888P"  "
set  "L%LCount%Ln9=           "
set "L%LCount%Ln10=           "
set "L%LCount%Ln11=           "
	goto Letter

:space
set  "L%LCount%Ln1=     "
set  "L%LCount%Ln2=     "
set  "L%LCount%Ln3=     "
set  "L%LCount%Ln4=     "
set  "L%LCount%Ln5=     "
set  "L%LCount%Ln6=     "
set  "L%LCount%Ln7=     "
set  "L%LCount%Ln8=     "
set  "L%LCount%Ln9=     "
set "L%LCount%Ln10=     "
set "L%LCount%Ln11=     "
	goto Letter

:asterisk
set  "L%LCount%Ln1=             "
set  "L%LCount%Ln2=      o      "
set  "L%LCount%Ln3=     d8b     "
set  "L%LCount%Ln4=    d888b    "
set  "L%LCount%Ln5="Y888888888P""
set  "L%LCount%Ln6=  "Y88888P"  "
set  "L%LCount%Ln7=  d88P"Y88b  "
set  "L%LCount%Ln8= dP"     "Yb "
set  "L%LCount%Ln9=             "
set "L%LCount%Ln10=             "
set "L%LCount%Ln11=             "
	goto Letter

:Addvalue
	set /a NextValue+=1
	goto letter%NextValue%

:end
set Displaylength=        !L1Ln6!!L2Ln6!!L3Ln6!!L4Ln6!!L5Ln6!!L6Ln6!!L7Ln6!!L8Ln6!!L9Ln6!!L10Ln6!!L11Ln6!!L12Ln6!!L13Ln6!!L14Ln6!!L15Ln6!!L16Ln6!!L17Ln6!!L18Ln6!!L19Ln6!!L20Ln6!!L21Ln6!!L22Ln6!!L23Ln6!!L24Ln6!!L25Ln6!!L26Ln6!!L27Ln6!!L28Ln6!!L29Ln6!!L30Ln6!!L31Ln6!!L32Ln6!
if not defined Displaylength goto OutputLength
:GetLengthEnd
if not "!Displaylength:~%LengthEnd%,1!" == "" (
    set /A LengthEnd+=1
    goto GetLengthend
)
:OutputLengthEnd
set /A LengthEnd+=9
mode con:cols=%LengthEnd% lines=15

setlocal EnableExtensions EnableDelayedExpansion
echo.
echo.
echo.
echo.         !L1Ln1!!L2Ln1!!L3Ln1!!L4Ln1!!L5Ln1!!L6Ln1!!L7Ln1!!L8Ln1!!L9Ln1!!L10Ln1!!L11Ln1!!L12Ln1!!L13Ln1!!L14Ln1!!L15Ln1!!L16Ln1!!L17Ln1!!L18Ln1!!L19Ln1!!L20Ln1!!L21Ln1!!L22Ln1!!L23Ln1!!L24Ln1!!L25Ln1!!L26Ln1!!L27Ln1!!L28Ln1!!L29Ln1!!L30Ln1!!L31Ln1!!L32Ln1!
echo.         !L1Ln2!!L2Ln2!!L3Ln2!!L4Ln2!!L5Ln2!!L6Ln2!!L7Ln2!!L8Ln2!!L9Ln2!!L10Ln2!!L11Ln2!!L12Ln2!!L13Ln2!!L14Ln2!!L15Ln2!!L16Ln2!!L17Ln2!!L18Ln2!!L19Ln2!!L20Ln2!!L21Ln2!!L22Ln2!!L23Ln2!!L24Ln2!!L25Ln2!!L26Ln2!!L27Ln2!!L28Ln2!!L29Ln2!!L30Ln2!!L31Ln2!!L32Ln2!
echo.         !L1Ln3!!L2Ln3!!L3Ln3!!L4Ln3!!L5Ln3!!L6Ln3!!L7Ln3!!L8Ln3!!L9Ln3!!L10Ln3!!L11Ln3!!L12Ln3!!L13Ln3!!L14Ln3!!L15Ln3!!L16Ln3!!L17Ln3!!L18Ln3!!L19Ln3!!L20Ln3!!L21Ln3!!L22Ln3!!L23Ln3!!L24Ln3!!L25Ln3!!L26Ln3!!L27Ln3!!L28Ln3!!L29Ln3!!L30Ln3!!L31Ln3!!L32Ln3!
echo.         !L1Ln4!!L2Ln4!!L3Ln4!!L4Ln4!!L5Ln4!!L6Ln4!!L7Ln4!!L8Ln4!!L9Ln4!!L10Ln4!!L11Ln4!!L12Ln4!!L13Ln4!!L14Ln4!!L15Ln4!!L16Ln4!!L17Ln4!!L18Ln4!!L19Ln4!!L20Ln4!!L21Ln4!!L22Ln4!!L23Ln4!!L24Ln4!!L25Ln4!!L26Ln4!!L27Ln4!!L28Ln4!!L29Ln4!!L30Ln4!!L31Ln4!!L32Ln4!
echo.         !L1Ln5!!L2Ln5!!L3Ln5!!L4Ln5!!L5Ln5!!L6Ln5!!L7Ln5!!L8Ln5!!L9Ln5!!L10Ln5!!L11Ln5!!L12Ln5!!L13Ln5!!L14Ln5!!L15Ln5!!L16Ln5!!L17Ln5!!L18Ln5!!L19Ln5!!L20Ln5!!L21Ln5!!L22Ln5!!L23Ln5!!L24Ln5!!L25Ln5!!L26Ln5!!L27Ln5!!L28Ln5!!L29Ln5!!L30Ln5!!L31Ln5!!L32Ln5!
echo.         !L1Ln6!!L2Ln6!!L3Ln6!!L4Ln6!!L5Ln6!!L6Ln6!!L7Ln6!!L8Ln6!!L9Ln6!!L10Ln6!!L11Ln6!!L12Ln6!!L13Ln6!!L14Ln6!!L15Ln6!!L16Ln6!!L17Ln6!!L18Ln6!!L19Ln6!!L20Ln6!!L21Ln6!!L22Ln6!!L23Ln6!!L24Ln6!!L25Ln6!!L26Ln6!!L27Ln6!!L28Ln6!!L29Ln6!!L30Ln6!!L31Ln6!!L32Ln6!
echo.         !L1Ln7!!L2Ln7!!L3Ln7!!L4Ln7!!L5Ln7!!L6Ln7!!L7Ln7!!L8Ln7!!L9Ln7!!L10Ln7!!L11Ln7!!L12Ln7!!L13Ln7!!L14Ln7!!L15Ln7!!L16Ln7!!L17Ln7!!L18Ln7!!L19Ln7!!L20Ln7!!L21Ln7!!L22Ln7!!L23Ln7!!L24Ln7!!L25Ln7!!L26Ln7!!L27Ln7!!L28Ln7!!L29Ln7!!L30Ln7!!L31Ln7!!L32Ln7!
echo.         !L1Ln8!!L2Ln8!!L3Ln8!!L4Ln8!!L5Ln8!!L6Ln8!!L7Ln8!!L8Ln8!!L9Ln8!!L10Ln8!!L11Ln8!!L12Ln8!!L13Ln8!!L14Ln8!!L15Ln8!!L16Ln8!!L17Ln8!!L18Ln8!!L19Ln8!!L20Ln8!!L21Ln8!!L22Ln8!!L23Ln8!!L24Ln8!!L25Ln8!!L26Ln8!!L27Ln8!!L28Ln8!!L29Ln8!!L30Ln8!!L31Ln8!!L32Ln8!
echo.         !L1Ln9!!L2Ln9!!L3Ln9!!L4Ln9!!L5Ln9!!L6Ln9!!L7Ln9!!L8Ln9!!L9Ln9!!L10Ln9!!L11Ln9!!L12Ln9!!L13Ln9!!L14Ln9!!L15Ln9!!L16Ln9!!L17Ln9!!L18Ln9!!L19Ln9!!L20Ln9!!L21Ln9!!L22Ln9!!L23Ln9!!L24Ln9!!L25Ln9!!L26Ln9!!L27Ln9!!L28Ln9!!L29Ln9!!L30Ln9!!L31Ln9!!L32Ln9!
echo.         !L1Ln10!!L2Ln10!!L3Ln10!!L4Ln10!!L5Ln10!!L6Ln10!!L7Ln10!!L8Ln10!!L9Ln10!!L10Ln10!!L11Ln10!!L12Ln10!!L13Ln10!!L14Ln10!!L15Ln10!!L16Ln10!!L17Ln10!!L18Ln10!!L19Ln10!!L20Ln10!!L21Ln10!!L22Ln10!!L23Ln10!!L24Ln10!!L25Ln10!!L26Ln10!!L27Ln10!!L28Ln10!!L29Ln10!!L30Ln10!!L31Ln10!!L32Ln10!
echo.         !L1Ln11!!L2Ln11!!L3Ln11!!L4Ln11!!L5Ln11!!L6Ln11!!L7Ln11!!L8Ln11!!L9Ln11!!L10Ln11!!L11Ln11!!L12Ln11!!L13Ln11!!L14Ln11!!L15Ln11!!L16Ln11!!L17Ln11!!L18Ln11!!L19Ln11!!L20Ln11!!L21Ln11!!L22Ln11!!L23Ln11!!L24Ln11!!L25Ln11!!L26Ln11!!L27Ln11!!L28Ln11!!L29Ln11!!L30Ln11!!L31Ln11!!L32Ln11!
timeout /T %nametimer% >nul
goto endscript


:ReinstallChoice
cls
echo  %ESC%[94mFILE%ESC%[0m: Are you sure, you want to reinstall this program? (Y/N)
>nul choice /C ny
	If Errorlevel 2 echo %ESC%[94mFILE%ESC%[0m: Starting reinstaller... & goto Reinstaller
	If Errorlevel 1 goto Edit


:Installer
cls
:Reinstaller
mode con:cols=100 lines=20
title SteamAccountSwitcher Installer
for /f "delims=" %%E in ('forfiles /p "%~dp0." /m "%~nx0" /c "cmd /c echo(0x1B"') do (
    set "ESC=%%E"
)
if not "%Installed%"=="true" (echo  %ESC%[94mFILE%ESC%[0m: Starting installer) else (echo  %ESC%[94mFILE%ESC%[0m: Starting reinstall)
setlocal EnableExtensions EnableDelayedExpansion
if not exist "%appdata%\SteamAccountSwitcher\" (mkdir "%appdata%\SteamAccountSwitcher" & echo  %ESC%[94mFILE%ESC%[0m: Creating %appdata%\SteamAccountSwitcher\) else (echo  %ESC%[94mFILE%ESC%[0m: Directory %appdata%\SteamAccountSwitcher\ already exists.)
if not exist "%appdata%\SteamAccountSwitcher\SASData.txt" (type nul >"%appdata%\SteamAccountSwitcher\SASData.txt" & echo  %ESC%[94mFILE%ESC%[0m: Creating SASData.txt) else (del "%appdata%\SteamAccountSwitcher\SASData.txt" & type nul >"%appdata%\SteamAccountSwitcher\SASData.txt" & echo  %ESC%[94mFILE%ESC%[0m: SASData.txt already exists.)
if not "%Installed%"=="true" (echo  %ESC%[94mFILE%ESC%[0m: Writing savefile.) else (echo  %ESC%[94mFILE%ESC%[0m: Overwriting savefile.)
(
	echo.%username-1%
	echo.%username-2%
	echo.%username-3%
	echo.%username-4%
	echo.%username-5%
	echo.0123456789ABCDEF
	echo.2
	echo.true
)> "%appdata%\SteamAccountSwitcher\SASData.txt"
echo  %ESC%[94mFILE%ESC%[0m: Installing content...
if not exist "%appdata%\SteamAccountSwitcher\SASIcon.ico" (powershell -Command "$ProgressPreference = 'SilentlyContinue'; Start-BitsTransfer -Source "https://raw.githubusercontent.com/R66muZ/SASIcon.ico/main/SASIcon.ico" -Destination "%appdata%\SteamAccountSwitcher"")
if not "%~f0"=="%appdata%\SteamAccountSwitcher\SteamAccountSwitcher.bat" (copy "%~f0" "%appdata%\SteamAccountSwitcher\SteamAccountSwitcher.bat" & set "OldBatLoc=%~f0")
start "" cmd /k ""%appdata%\SteamAccountSwitcher\SteamAccountSwitcher.bat" :ContinueInstall "%OldBatLoc%""
exit /b
:ContinueInstall

::Re-echoing latest messages
if not "%Installed%"=="true" (echo  %ESC%[94mFILE%ESC%[0m: Starting installer) else (echo  %ESC%[94mFILE%ESC%[0m: Starting reinstall)
if not exist "%appdata%\SteamAccountSwitcher\" (echo  %ESC%[94mFILE%ESC%[0m: Creating %appdata%\SteamAccountSwitcher\) else (echo  %ESC%[94mFILE%ESC%[0m: Directory %appdata%\SteamAccountSwitcher\ already exists.)
if not exist "%appdata%\SteamAccountSwitcher\SASData.txt" (echo  %ESC%[94mFILE%ESC%[0m: Creating SASData.txt) else (echo  %ESC%[94mFILE%ESC%[0m: SASData.txt already exists.)
if not "%Installed%"=="true" (echo  %ESC%[94mFILE%ESC%[0m: Writing savefile.) else (echo  %ESC%[94mFILE%ESC%[0m: Overwriting savefile.)
if defined OldBatLoc (del "%OldBatLoc%")
for /f "tokens=3*" %%a in ('reg query "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop"') do set "DesktopFolder=%%a"
(
echo.Option Explicit
echo.Dim obj, nLink
echo.
echo.Set obj = CreateObject^("wscript.shell"^)
echo.
echo.Set nLink = obj.CreateShortcut^("%DesktopFolder%\Steam Account Swithcer.lnk"^)
echo.
echo.nLink.TargetPath = "%appdata%\SteamAccountSwitcher\SteamAccountSwitcher.bat"
echo.nLink.Description = "Steam account switcher"
echo.nLink.IconLocation = "%appdata%\SteamAccountSwitcher\SASIcon.ico"
echo.nLink.Save
)> "%appdata%\SteamAccountSwitcher\SASShortcutCreator.vbs"
start /b "" "%appdata%\SteamAccountSwitcher\SASShortcutCreator.vbs"

if "%Installed%"=="true" (echo  %ESC%[32mSUCCESS%ESC%[0m: Reinstall completed^!) else (echo  %ESC%[32mSUCCESS%ESC%[0m: Install completed^!)
echo  %ESC%[94mFILE%ESC%[0m: Press any key to reload the file.
>nul pause
start %appdata%\SteamAccountSwitcher\SteamAccountSwitcher.bat
exit


:endscript
exit >nul