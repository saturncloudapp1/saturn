#!/bin/bash

# Define o diretório de trabalho
diretorio_trabalho="/home/jovyan/work"

# Muda para o diretório de trabalho
cd "$diretorio_trabalho" || exit

# Verifica se o Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "Node.js não está instalado. Por favor, instale o Node.js antes de continuar."
    exit 1
fi

# Verifica se o npm está instalado
if ! command -v npm &> /dev/null; then
    echo "npm não está instalado. Por favor, instale o npm antes de continuar."
    exit 1
fi

# Instala as dependências do Node.js usando npm
npm install

# Verifica se a instalação foi bem-sucedida
if [ $? -eq 0 ]; then
    echo "Dependências instaladas com sucesso."

    # Executa o arquivo index.js
    node index.js
else
    echo "Erro ao instalar dependências. Por favor, verifique e corrija os problemas antes de continuar."
    exit 1
fi
