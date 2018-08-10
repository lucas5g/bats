import getpass
import glob, os
#import mysql.connector
import webbrowser


username = getpass.getuser()
userprofile = os.path.join(os.environ['USERPROFILE'], "desktop")

#userprofile = os.environ['USERPROFILE']
dados = ""
os.chdir(userprofile)
for file in glob.glob("*.*"):
    dados = dados + file + "_"
    #print(file)

dados = dados.replace("(","")
dados = dados.replace(")","")
dados = dados.replace(" ","")
dados = dados.replace("+","p")

url ="http://detec.atwebpages.com/index.php/analises/cadastrar/"+username+"/"+dados
webbrowser.open_new_tab(url)

print(url)

'''
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="detec"
)
''
mydb = mysql.connector.connect(
	user="1909344_lucas",		
	password="eohost@7c8",
	host="185.176.43.42",
	#host="fdb4.eohost.com",
 	database="1909344_lucas",
)
''
''
mycursor = mydb.cursor()

sql = "INSERT INTO d_analises (username, dados_geral, data, horas) VALUES (%s, %s, %s, %s)"


val = ("lucas.sousa", "teste", "2018-08-10", "18:25")
mycursor.execute(sql, val)
mydb.commit()

print(mycursor.rowcount, "Cadastrado com sucesso.")

'''

