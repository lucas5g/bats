
echo @off
set servidor=\\10.20.0.21\Sala de Aula\bat\
set arquivo=dia_estudante.mp4
set arquivo2=Dia estudante(1).mp4
set pc=%userprofile%\desktop\
set verifica_arquivo=%pc%%arquivo2%

::echo %verifica_arquivo%

if  exist  %verifica_arquivo% (
	echo Ja possui o video
	echo %username% >> "\\10.20.0.21\Sala de Aula\bat\host.txt"	
) else if exist %pc%%arquivo% (
	echo Ja possui o arquivo
	echo %username% >> "\\10.20.0.21\Sala de Aula\bat\host.txt"		
) else (
	echo Copiando Arquivo...
	copy "%servidor%%arquivo%" %pc%
	echo %username% >> "\\10.20.0.21\Sala de Aula\bat\host.txt"
)



