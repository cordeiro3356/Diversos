# Como usar o script:
# Definir o host, nome do banco de dados na variavel, modificar senha do postgres e mudar o caminho do backup se preciso
# Para alterar a versão do PostgreSQL basta mudar o diretorio do executavel.
# EXEMPLO: C:\Program Files\PostgreSQL\16\bin para versão 16 




# Define o diretorio para o executavel PG_Dump
cd C:\Program Files\PostgreSQL\15\bin

# Variáveis de conexão com o banco de dados
SET PGHOST=localhost
SET PGPORT=5432
SET PGDATABASE=NOME_DO_BANCO
SET PGUSER=postgres
SET PGPASSWORD=SENHA_DO_POSTGRES

# Define o diretório de backup
SET DESTDIR=C:\Backups\

# Executavel

pg_dump.exe -F c -b -v -f %DESTDIR%_%PGDATABASE%.backup

