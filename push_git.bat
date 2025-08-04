@echo off
:: Vai nella cartella del progetto (quella dove si trova questo .bat)
cd /d "%~dp0"

:: Aggiungi tutti i file tracciabili
git add .

:: Chiedi all'utente un messaggio di commit
set /p msg=Inserisci il messaggio di commit: 

:: Fai il commit
git commit -m "%msg%"

:: Allinea con la versione remota
git pull --rebase origin main

:: Manda tutto su GitHub
git push

:: Attendi input prima di chiudere
echo.
echo Operazione completata. Premi un tasto per chiudere...
pause >nul
