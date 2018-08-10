if exist %userprofile%\desktop\dia_estudante.mp4 (
	::echo Ja possui o video
	echo %userprofile% >> "\\10.20.0.21\Sala de Aula\bat\host.txt"
) else (
	copy "%servidor%%arquivo%" %pc% 
	echo %userprofile% >> "\\10.20.0.21\Sala de Aula\bat\host.txt"
)
	

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



