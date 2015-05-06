:start
@echo off
cls
color 0c
title TOTAL WAR : NUKE
set version=Version 2.2.1
rem echo Welcome to Total War : Nuke, by Heacien.
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo %version%
echo.
pause
:players
cls
set player=
set replay=
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo Type '1' Singleplayer
echo Type '2' two player
echo Type '3' changelog
set /p player=Choose:
if '%player%'=='1' goto name
if '%player%'=='2' goto p1name
if '%player%'=='3' goto changelog
if '%player%'=='lost' goto end
if '%player%'=='win' goto win
if '%player%'=='score' goto score
goto players
:name
cls
set name=
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
set /p name=Please type in your name (One word):
if '%name%'=='' goto name
rem Easter Egg:
if '%name%'=='Vincent' goto win
if '%name%'=='Heacien' goto win
:country
cls
set country=
set enemy=
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo Welcome %name%!
echo.
set /p country=Choose your country; USA, Germany, Russia, or Canada:
if '%country%'=='usa' goto enemy1
if '%country%'=='USA' goto enemy1
if '%country%'=='Usa' goto enemy1
if '%country%'=='Russia' goto enemy2
if '%country%'=='russia' goto enemy2
if '%country%'=='canada' goto enemy3
if '%country%'=='Canada' goto enemy3
if '%country%'=='Germany' goto enemy4
if '%country%'=='germany' goto enemy4
goto country
:enemy1
set country=USA
goto enemy
:enemy2
set country=Russia
goto enemy
:enemy3
set country=Canada
goto enemy
:enemy4
set country=Germany
:enemy
set /a cpucountryrand=%random% %%5 +1
if '%cpucountryrand%'=='0' goto enemy
if '%cpucountryrand%'=='1' set enemy=Russia
if '%cpucountryrand%'=='2' set enemy=USA
if '%cpucountryrand%'=='3' set enemy=Canada
if '%cpucountryrand%'=='4' set enemy=Germany
if '%cpucountryrand%'=='5' goto enemy
if '%enemy%'=='%country%' goto enemy
:difficulty
set difficulty=
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo Select Noobmode(0), Normal(1), Hard(2) or Overkill(x).
set /p difficulty=
if '%difficulty%'=='Noobmode' goto difnoob
if '%difficulty%'=='noobmode' goto difnoob
if '%difficulty%'=='0' goto difnoob
if '%difficulty%'=='Normal' goto difnorm
if '%difficulty%'=='normal' goto difnorm
if '%difficulty%'=='1' goto difnorm
if '%difficulty%'=='Hard' goto difhard
if '%difficulty%'=='hard' goto difhard
if '%difficulty%'=='2' goto difhard
if '%difficulty%'=='Overkill' goto difover
if '%difficulty%'=='overkill' goto difover
if '%difficulty%'=='x' goto difover
goto difficulty
:difnoob
title Loading ...
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo loading Noobmode ...
ping localhost -n 2 >nul
tite TOTAL WAR : NUKE
set user=99999
set cpu=20000
set money=99999
set nuke=999
set airstrike=999
set missiles=999
set cpunuke=9999
set cpuairstrike=9999
set cpumissiles=9999
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo Noobmode loaded
ping localhost -n 2 >nul
goto gameplay
:difnorm
title Loading ...
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo loading Normalmode ...
ping localhost -n 2 >nul
tite TOTAL WAR : NUKE
set user=2000
set cpu=1500
set money=100
set nuke=1
set airstrike=2
set missiles=3
set cpunuke=1
set cpuairstrike=5
set cpumissiles=9999
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo Normalmode loaded
ping localhost -n 2 >nul
goto gameplay
:difhard
title Loading ...
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo loading Noobmode ...
ping localhost -n 2 >nul
tite TOTAL WAR : NUKE
set user=2000
set cpu=2000
set money=100
set nuke=1
set airstrike=2
set missiles=3
set cpunuke=5
set cpuairstrike=999
set cpumissiles=9999
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo Noobmode loaded
ping localhost -n 2 >nul
goto gameplay
:difover
title Loading ...
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo loading Overkill ...
ping localhost -n 2 >nul
tite TOTAL WAR : NUKE
set user=20000
set cpu=30000
set money=0
set nuke=1
set airstrike=2
set missiles=999
set cpunuke=9999
set cpuairstrike=9999
set cpumissiles=9999
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo.
echo Overkill loaded
ping localhost -n 2 >nul
goto gameplay
:begin
set user=1000
set cpu=1000
set money=100
set nuke=1
set airstrike=2
set missiles=3
set cpunuke=1
set cpuairstrike=2
set cpumissiles=3
:gameplay
cls
title TOTAL WAR : NUKE
set move=
set choice=
set cpucount=0
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo %name%, your turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %nuke%
echo                                                               Money: %money% $
echo 2. Fire Airstrike x %airstrike%
echo.
echo 3. Fire Missiles x %missiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo.
set /p move=Select your option:
if '%move%'=='1' goto nuke
if '%move%'=='2' goto airstrike
if '%move%'=='3' goto missiles
if '%move%'=='4' goto shop
if '%move%'=='5' goto surrender
if '%move%'=='6' goto cpu1
goto gameplay
:shop
title Shop
cls
:shopa
set buy=
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo %name%, you can buy anything if you have the money for that.
echo                                                               %country%: %user% DEF
echo Shop:
echo                                                               %enemy%: %cpu% DEF
echo 1. NUKE      (400$)
echo                                                               Money: %money% $
echo 2. AIRSTRIKE (325$)
echo.
echo 3. MISSLES   (250$)
echo.
echo 4. 500 DEF   (500$)
echo.
echo 5. 1000 DEF  (800$)
echo.
echo 6. 200% AP  (2000$)
echo.
echo 7. Leave Shop
echo.
set /p buy=Select your option:
if '%buy%'=='1' goto buynuke
if '%buy%'=='2' goto buyairstrike
if '%buy%'=='3' goto buymissles
if '%buy%'=='4' goto buydefa
if '%buy%'=='5' goto buydefb
if '%buy%'=='6' goto buyap
if '%buy%'=='7' goto gameplay
goto shop
rem Shop
:nomoney
cls
echo.
echo You don't have enough money to buy.
echo.
pause
goto shop
:buynuke
cls
set buyhistory=+1 Nuke for 400$
echo %buyhistory% >> buyhistory.txt
if '%money%' LSS '400' goto nomoney
set /a money=%money% - 400
set /a nuke=%nuke% + 1
echo +1 Nuke
goto shopa
:buyairstrike
cls
set buyhistory=+1 Airstrike for 325$
echo %buyhistory% >> buyhistory.txt
if '%money%' LSS '325' goto nomoney
set /a money=%money% - 325
set /a airstrike=%airstrike% + 1
echo +1 Airstrike
goto shopa
:buymissles
cls
set buyhistory=+1 Missles for 250
echo %buyhistory% >> buyhistory.txt
if '%money%' LSS '250' goto nomoney
set /a money=%money% - 250
set /a missiles=%missiles% + 1
echo +1 Missles
goto shopa
:buydefa
cls
set buyhistory=+500 DEF for 500$
echo %buyhistory% >> buyhistory.txt
if '%money%' LSS '500' goto nomoney
set /a money=%money% - 500
set /a user=%user% + 500
echo +500 DEF
goto shopa
:buydefb
cls
set buyhistory=+1000 DEF for 800$
echo %buyhistory% >> buyhistory.txt
if '%money%' LSS '800' goto nomoney
set /a money=%money% - 800
set /a user=%user% + 1000
echo +1000 DEF
goto shopa
:buyap
cls
echo.
echo RESTRICTED!
pause
goto shopa

:nuke
cls
if '%nuke%'=='0' goto nonuke
echo.
echo %name% has fired a NUKE headed towards the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 400 DEF!
echo.
pause
set /a money=%money% + 400
set /a cpu=%cpu% - 400
set /a nuke=%nuke% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nonuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto gameplay
:airstrike
cls
if '%airstrike%'=='0' goto noairstrike
echo.
echo %name% has fired an airstrike on the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 300 DEF!
echo.
pause
set /a money=%money% + 300
set /a cpu=%cpu% - 300
set /a airstrike=%airstrike% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:noairstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto gameplay
:missiles
cls
if '%missiles%'=='0' goto nomissiles
echo.
echo %name% has fired multiple missiles headed towards the %enemy%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %enemy% has lost 200 DEF!
echo.
pause
set /a money=%money% + 200
set /a cpu=%cpu% - 200
set /a missiles=%missiles% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nomissiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto gameplay
:surrender
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
pause
:end
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto end
goto players
:win
set winscore=1
cls
echo.
echo You have won Total War!!!
echo.
pause
:win2
cls
echo.
echo You have won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto win2
goto players
:cpu1
cls
set /a cpucount=%cpucount% + 1
if '%cpucount%'=='10' goto cpu2
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo Select your option:/
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo Select your option:/
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo Select your option:/
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
goto cpu1
:cpu2
cls
set /a choice=%random% %%7
if '%choice%'=='0' goto cpu2
if '%choice%'=='4' goto cpu2
if '%choice%'=='5' goto cpu2
if '%choice%'=='6' goto cpu2
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo Select your option:%choice%
ping localhost -n 4 >nul
if '%choice%'=='1' goto cpunuke
if '%choice%'=='2' goto cpuairstrike
if '%choice%'=='3' goto cpumissiles
if '%choice%'=='6' goto gameplay
:cpunuke
cls
if '%cpunuke%'=='0' goto nocpunuke
echo.
echo I have fired a NUKE headed towards the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 400 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 400
set cpunuke=0
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpunuke
echo.
echo I can't use a nuke since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuairstrike
cls
if '%cpuairstrike%'=='0' goto nocpuairstrike
echo.
echo I have fired an airstrike on the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 300 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 300
set /a cpuairstrike=%cpuairstrike% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpuairstrike
echo.
echo I can't use an airstrike since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpumissiles
cls
if '%cpumissiles%'=='0' goto nocpumissiles
echo.
echo I have fired multiple missiles headed towards the %country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %country% has lost 200 DEF!
echo.
ping localhost -n 4 >nul
set /a user=%user% - 200
set /a cpumissiles=%cpumissiles% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpumissiles
echo.
echo I can't use missiles since I don't have any more left!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuwin
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
pause
:cpuwin2
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto cpuwin2
goto players
:p1name
cls
set p1name=
echo.
set /p p1name=Player 1, please type in your name (One word):
if '%p1name%'=='' goto p1name
:p2name
cls
set p2name=
echo.
set /p p2name=Player 2, please type in your name (One word):
if '%p2name%'=='%p1name%' goto p2name
if '%p2name%'=='' goto p2name
rem Easter Egg:
if '%p1name%'=='Vincent' goto p1win
if '%p2name%'=='Vincent' goto p2win
if '%p1name%'=='Heacien' goto p1win
if '%p2name%'=='Heacien' goto p2win
:p1country
cls
set p1country=
echo.
echo Welcome %p1name%!
echo.
set /p p1country=Choose your country; USA, Russia, or Canada:
if '%p1country%'=='usa' goto p1country1
if '%p1country%'=='USA' goto p1country1
if '%p1country%'=='Usa' goto p1country1
if '%p1country%'=='Russia' goto p1country2
if '%p1country%'=='russia' goto p1country2
if '%p1country%'=='canada' goto p1country3
if '%p1country%'=='Canada' goto p1country3
goto p1country
:p1country1
set p1country=USA
goto p2country
:p1country2
set p1country=Russia
goto p2country
:p1country3
set p1country=Canada
:p2country
cls
set p2country=
echo.
echo Welcome %p2name%!
echo.
set /p p2country=Choose your country; USA, Russia, or Canada:
if '%p2country%'=='%p1country%' goto na
if '%p2country%'=='usa' goto p2country1
if '%p2country%'=='USA' goto p2country1
if '%p2country%'=='Usa' goto p2country1
if '%p2country%'=='Russia' goto p2country2
if '%p2country%'=='russia' goto p2country2
if '%p2country%'=='canada' goto p2country3
if '%p2country%'=='Canada' goto p2country3
goto p2country
:na
cls
echo.
echo You can't choose %p1country% because %p1name% has already chosen it.
pause >nul
goto p2country
:p2country1
set p2country=USA
goto begin2
:p2country2
set p2country=Russia
goto begin2
:p2country3
set p2country=Canada
:begin2
set p1health=1000
set p2health=1000
set p1nuke=1
set p1airstrike=2
set p1missiles=3
set p2nuke=1
set p2airstrike=2
set p2missiles=3
:p1gameplay
cls
set move=
set choice=
echo \---------------------------------------------------\
echo  \ %version%     TOTAL WAR : NUKE     by Heacien \
echo   \---------------------------------------------------\ 
echo %p1name%, your turn.
echo                                                               %p1country%: %p1health% DEF
echo Options:
echo                                                               %p2country%: %p2health% DEF
echo 1. Fire NUKE x %p1nuke%
echo.
echo 2. Fire Airstrike x %p1airstrike%
echo.
echo 3. Fire Missiles x %p1missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p1nuke
if '%move%'=='2' goto p1airstrike
if '%move%'=='3' goto p1missiles
if '%move%'=='4' goto p1surrender
if '%move%'=='5' goto p2gameplay
goto p1gameplay
:p1nuke
cls
if '%p1nuke%'=='0' goto nop1nuke
echo.
echo %p1name% has fired a NUKE headed towards %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 400 DEF!
echo.
pause
set /a p2health=%p2health% - 400
set p1nuke=0
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1nuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto p1gameplay
:p1airstrike
cls
if '%p1airstrike%'=='0' goto nop1airstrike
echo.
echo %p1name% has fired an airstrike on %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 300 DEF!
echo.
pause
set /a p2health=%p2health% - 300
set /a p1airstrike=%p1airstrike% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p1gameplay
:p1missiles
cls
if '%p1missiles%'=='0' goto nop1missiles
echo.
echo %p1name% has fired multiple missiles headed towards %p2country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p2country% has lost 200 DEF!
echo.
pause
set /a p2health=%p2health% - 200
set /a p1missiles=%p1missiles% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p1gameplay
:p1surrender
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p1surrender2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1surrender2
goto players
:p1win
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p1win2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1win2
goto players
:p2gameplay
cls
set move=
set choice=
echo                                                               %version%
echo %p2name%, your turn.
echo                                                               %p2country%: %p2health% DEF
echo Options:
echo                                                               %p1country%: %p1health% DEF
echo 1. Fire NUKE x %p2nuke%
echo.
echo 2. Fire Airstrike x %p2airstrike%
echo.
echo 3. Fire Missiles x %p2missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p2nuke
if '%move%'=='2' goto p2airstrike
if '%move%'=='3' goto p2missiles
if '%move%'=='4' goto p2surrender
if '%move%'=='5' goto p1gameplay
goto p2gameplay
:p2nuke
cls
if '%p2nuke%'=='0' goto nop2nuke
echo.
echo %p2name% has fired a NUKE headed towards %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 400 DEF!
echo.
pause
set /a p1health=%p1health% - 400
set p2nuke=0
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2nuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto p2gameplay
:p2airstrike
cls
if '%p2airstrike%'=='0' goto nop2airstrike
echo.
echo %p2name% has fired an airstrike on %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 300 DEF!
echo.
pause
set /a p1health=%p1health% - 300
set /a p2airstrike=%p2airstrike% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p2gameplay
:p2missiles
cls
if '%p2missiles%'=='0' goto nop2missiles
echo.
echo %p2name% has fired multiple missiles headed towards %p1country%!
echo.
ping localhost -n 4 >nul
echo Hit!
echo.
echo %p1country% has lost 200 DEF!
echo.
pause
set /a p1health=%p1health% - 200
set /a p2missiles=%p2missiles% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p2gameplay
:p2surrender
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p2surrender2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2surrender2
goto players
:p2win
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p2win2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2win2
goto players
:changelog
color f9
cls
echo.
echo Changelog:
echo  V 2.2.1
echo   -Suggestionsystem-Upgrade
echo   -Scoresystem in work
echo.
echo  V 2.2.0
echo   -Big overlay change
echo   -One new Easter Egg (now 3)
echo.
echo  V 2.1.6
echo   -Error-Freeze fixed
echo   -Some design changes
echo.
echo  V 2.1.5
echo   -Changelog complet fixed
echo   -Some design changes
echo.
echo  V 2.1.4
echo   -Changelog bugfix
echo.
echo  V 2.1.3
echo   -Changelog added
echo.
echo (Page 1/2)
pause > NUL
cls
echo Changelog:
echo  V 2.1.2
echo   -Overkill chrash fixed
echo.
echo  V 2.0.0 - V 2.1.1
echo   -Shopsystem was added
echo.
echo  V 1.0
echo   -isn't my work - pls check out Vincent Allain alias BATCHFILEMASTER
echo.
echo (Page 2/2)
pause > NUL
goto start
:score
echo.
echo Sry bro it's right now in work.
echo If you wanna help me, pls take a look at the sourcecode
echo and maby you can tell me what's wrong with that xD.
echo Thx bye.
rem if '%difficulty%'=='noobmode' set difficulty=Noobmode
rem if '%difficulty%'=='0' set difficulty=Noobmode
rem if '%difficulty%'=='normal' set difficulty=Normal
rem if '%difficulty%'=='1' set difficulty=Normal
rem if '%difficulty%'=='hard' set difficulty=Hard
rem if '%difficulty%'=='2' set difficulty=Hard
rem if '%difficulty%'=='overkill' set difficulty=Overkill
rem if '%difficulty%'=='x' set difficulty=Overkill
rem if %winscore%==1 set winscore=won else set winscore=lost
rem set /a score=Player:%name% has %winscore% as %country% agains %enemy% in %difficulty%
rem echo %score% >> score.txt
rem cho %score%
pause > NUL
:suggest
cls
del buyhistory.txt
color f9
cls
echo.
echo %version% 
echo special thanks to Vincent Allain for writing the base for the game.
echo ___________________________________________________________________
echo.
echo Any suggestions bevor you leave? ('x' to leave)
echo (Please take a look in the suggestion.txt file)
echo (You can write 'cl' to get to the changelog)
echo (Write 'score' to save youre score) - In work
echo ___________________________________________________________________
echo.
set /p suggestion=
if '%suggestion%'=='' goto suggest
if '%suggestion%'=='score' goto score
if '%suggestion%'=='cl' goto changelog
if '%suggestion%'=='changelog' goto changelog
echo Pls send the suggestion.txt to hecker.hille@gmail.com with 'Suggestions' in the title line. > suggestions.txt
echo If you have any suggestions ;) >> suggestions.txt
echo #-----------------------------------------------------------------------------------------------------------# >> suggestions.txt
echo # >> suggestions.txt
echo # >> suggestions.txt
echo # >> suggestions.txt
echo #-----------------------------------------------------------------------------------------------------------# >> suggestions.txt
