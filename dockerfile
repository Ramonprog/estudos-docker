# Usa a imagem oficial do Node.js como base
FROM node

# Cria o diretório da aplicação dentro do contêiner
RUN mkdir app

# Define o diretório de trabalho
WORKDIR ./app

# Copia o arquivo package.json para instalar dependências
COPY package.json .

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos da aplicação para o contêiner
COPY . .

# Expõe a porta que a aplicação usa
EXPOSE 3001

# Comando para iniciar a aplicação
CMD ["node", "index.js"]
