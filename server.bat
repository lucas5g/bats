
echo @off
set servidor=\\10.20.0.21\Sala de Aula\bat\
set arquivo=dia_estudante.mp4
set arquivo2=Dia estudante(1).mp4
set pc=%userprofile%\desktop\
set verifica_arquivo=%pc%%arquivo2%

::echo %verifica_arquivo%
:: listar de arquivos na pasta
::comando
dir /b  > lista_arquivos.txt 
::salvar lista em uma variavel
set /p lista_arquivos=< lista_arquivos.txt
::start http://localhost/detec/index.php/pcs/verificar/%username%/"%lista_arquivos%"
start http://localhost/detec/index.php/analises/cadastrar/%username%/"%lista_arquivos%"

