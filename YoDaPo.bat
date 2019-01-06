@echo off
color 70
mode 55,40
:inicio
set /a tot=1
set /a win=0
set /a los=0
set /a drw=0
cls
echo _______________________________________________________
set /p nom=Insira seu nome: 
if "%nom%" equ "" goto:inicio else
:regra 
echo _______________________________________________________
echo          Seja Bem Vindo(a) ao Yo-Da-Po, %nom%
echo _______________________________________________________
echo                         REGRAS                         
echo _______________________________________________________                           
echo.                                                    
echo [1]Luke Skywalker ganha do Darth Vader e Darth Maul
echo [2]Darth Vader ganha do Obi Wan Kenobi e Darth Maul
echo [3]Obi Wan Kenobi ganha do Qui Gon e Luke Skywalker
echo [4]Qui Gon ganha do Darth Vader e do Luke Skywalker
echo [5]Darth Maul ganha do Qui Gon e do Obi Wan Kenobi
echo.
echo _______________________________________________________
echo                        Jogada %tot%
echo _______________________________________________________
:perg
::Pergunta================================================
set /p num=Insira um numero correspondente a opcao: 
if "%num%" equ "" (
	cls
	goto:regra )
::Gera Numero=============================================
set /a numero=(%random% %% 5) +1
	if "%numero%" equ "1" set inimigo=Luke Skywalker
    if "%numero%" equ "2" set inimigo=Darth Vader
	if "%numero%" equ "3" set inimigo=Obi Wan Kenobi
	if "%numero%" equ "4" set inimigo=Qui Gon
	if "%numero%" equ "5" set inimigo=Darth Maul
	if "%num%" equ "1" goto:luk
	if "%num%" equ "2" goto:vad
	if "%num%" equ "3" goto:obi
	if "%num%" equ "4" goto:qui
	if "%num%" equ "5" goto:mau 
		goto:perg 
::Luke====================================================
:luk
echo.
echo Voce escolheu Luke Skywalker
echo.
echo A CPU escolheu %inimigo%
echo.
if "%numero%" equ "1" goto:emp
if "%numero%" equ "2" goto:gan
if "%numero%" equ "3" goto:per
if "%numero%" equ "4" goto:per
if "%numero%" equ "5" goto:gan
echo.

::Darth Vader=============================================
:vad
echo.
echo Voce escolheu Darth Vader
echo.
echo A CPU escolheu %inimigo%
echo.
if "%numero%" equ "1" goto:per
if "%numero%" equ "2" goto:emp
if "%numero%" equ "3" goto:gan
if "%numero%" equ "4" goto:per
if "%numero%" equ "5" goto:gan
echo.

::Obi Wan Kenobi=============================================
:obi
echo.
echo Voce escolheu Obi Wan Kenobi
echo.
echo A CPU escolheu %inimigo%
echo.
if "%numero%" equ "1" goto:gan
if "%numero%" equ "2" goto:per
if "%numero%" equ "3" goto:emp
if "%numero%" equ "4" goto:gan
if "%numero%" equ "5" goto:per
echo.

::Qui Gon=============================================
:qui
echo.
echo Voce escolheu Qui Gon
echo.
echo A CPU escolheu %inimigo%
echo.
if "%numero%" equ "1" goto:gan
if "%numero%" equ "2" goto:gan
if "%numero%" equ "3" goto:per
if "%numero%" equ "4" goto:emp
if "%numero%" equ "5" goto:per
echo.

::Darth Maul=============================================
:mau
echo.
echo Voce escolheu Darth Maul
echo.
echo A CPU escolheu %inimigo%
echo.
if "%numero%" equ "1" goto:per
if "%numero%" equ "2" goto:per
if "%numero%" equ "3" goto:gan
if "%numero%" equ "4" goto:gan
if "%numero%" equ "5" goto:emp
echo.

::Ganha===================================================
:gan
echo Voce ganhou!
echo.
set /a win+=1
echo Vitorias: %win%
echo Derrotas: %los%
echo Empates: %drw%
echo.
pause
cls
set /a tot+=1
if "%tot%" equ "11" goto:end
goto:regra

::Perde===================================================
:per
echo Voce perdeu!
set /a los+=1
echo.
echo Vitorias: %win%
echo Derrotas: %los%
echo Empates: %drw%
echo.
pause
cls
set /a tot+=1
if "%tot%" equ "11" goto:end
goto:regra

::Empata===================================================
:emp
echo Empate!
set /a drw+=1
echo.
echo Vitorias: %win%
echo Derrotas: %los%
echo Empates: %drw%
echo.
pause
cls
set /a tot+=1
if "%tot%" equ "11" goto:end
goto:regra

::Fim de Jogo==============================================
:end
cls
echo _______________________________________________________
echo                      Fim de Jogo!
echo _______________________________________________________
echo.
set /a drw+=1
echo Vitorias: %win%
echo Derrotas: %los%
echo Empates: %drw%
echo.
if "%win%" gtr "%los%" (
	if %win% gtr %drw% echo Voce ganhou o jogo!
	if %drw% gtr %win% echo Voce e a CPU empataram! )
if %los% gtr %win% (
	if %los% gtr %drw% echo Voce perdeu o jogo!
	if %drw% gtr %los% echo Voce e a CPU empataram! )
echo.
:sai
set /p resp=Deseja jogar novamente? [S/N]: 
if "%resp%" equ "S" goto:inicio
if "%resp%" equ "s" goto:inicio
if "%resp%" equ "N" exit
if "%resp%" equ "n" exit
goto:sai
pause


 