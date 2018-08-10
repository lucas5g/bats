if exist %userprofile%\desktop\dia_estudante.mp4 (
	::echo Ja possui o video
	echo %userprofile% >> "\\10.20.0.21\Sala de Aula\bat\host.txt"
) else (
	copy "%servidor%%arquivo%" %pc% 
	echo %userprofile% >> "\\10.20.0.21\Sala de Aula\bat\host.txt"
)
	