# Use uma imagem base oficial do Nginx
FROM nginx:alpine

# Instale o Git para clonar o repositório
RUN apk add --no-cache git

# Crie um diretório temporário para o repositório
WORKDIR /tmp

# Clone o repositório do GitHub
RUN git clone https://github.com/GustavoSantos29/So.git

# Copie os arquivos do repositório para o diretório padrão do Nginx
RUN cp -r /tmp/So/* /usr/share/nginx/html/

# Limpe o diretório temporário
RUN rm -rf /tmp/So

# Exponha a porta 8080
EXPOSE 8080

# Comando para iniciar o Nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]
