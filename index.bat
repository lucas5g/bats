@echo off
net use "\\10.20.0.21\Sala de Aula" /user:saladeaula 123456
::"\\10.20.0.21\Sala de Aula\server.bat"
server.bat
net use "\\10.20.0.21\Sala de Aula" /delete
