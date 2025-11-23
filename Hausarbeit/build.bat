@echo off
REM Erstelle Ausgabeordner, falls er nicht existiert
if not exist log (
    mkdir log
)

REM Latexmk mit LuaLaTeX aufrufen
latexmk -pdf -lualatex -shell-escape -interaction=nonstopmode -f -outdir=log hauptdatei.tex

REM PDF verschieben
if exist log\hauptdatei.pdf (
    move /Y log\hauptdatei.pdf .\
)

echo Fertig!
pause