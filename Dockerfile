# Selecionar Sistema Operacional da imagem
FROM ubuntu:latest

# Porta que sera exposta
EXPOSE 8000

# pasta para salvar os arquivos no container
WORKDIR /app

# Iniciar variaveis de ambiente
ENV DBHOST=localhost DBPORT=5432
ENV DBUSER=root DBPASSWORD=root DBNAME==root

# Copia do programa compilado
COPY ./main main

# Executar o arquivo compilado
CMD [ "./main" ]
