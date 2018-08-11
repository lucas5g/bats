#!/usr/bin/python
# -*- coding: latin-1 -*-
# Importa o modulo de conexao com o mysql
import MySQLdb
 
# Gera a string de conexao ex.: seu host, seu usuario, sua senha e seu db
db = MySQLdb.connect(host="fbd4.eohost.com", user="1909344lucas", passwd="eohost@7c8", db="eohost@7c8")
# Posiciona o cursor
cursor = db.cursor()
# Executa a consulta na tabela selecionada
cursor.execute("SELECT * FROM d_analises")
# Conta o numero de linhas na tabela
numrows = int(cursor.rowcount)
# Obtendo resultados

# Laço for para retornar os valores, ex.: row[0] primeira coluna, row[1] segunda coluna, row[2] terceira coluna, etc.
#for row in cursor.fetchall():
#   print " ",row[0]," ",row[1]