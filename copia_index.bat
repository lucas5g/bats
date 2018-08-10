::@echo off
net use "\\10.20.0.21\Sala de Aula" /user:saladeaula 123456

title Copiar arquivo index bat e jogar na pasta inicializar do usuario
copy "\\10.20.0.21\Sala de Aula\index.bat" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy "\\10.20.0.21\Sala de Aula\ChangeWallPaper.exe" "%userprofile%"
copy "\\10.20.0.21\Sala de Aula\index.bat" "%userprofile%"

"%userprofile%\ChangeWallPaper.exe"
net use "\\10.20.0.21\Sala de Aula" /delete
pause
