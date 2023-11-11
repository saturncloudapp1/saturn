#!/bin/bash
# Instala as dependências do Node.js usando npm
npm install --prefix /home/jovyan/work

# Verifica se a instalação foi bem-sucedida
if [ $? -eq 0 ]; then
    echo "Dependências instaladas com sucesso."

    # Executa o arquivo index.js
    node /home/jovyan/work/index.js
else
    echo "Erro ao instalar dependências. Por favor, verifique e corrija os problemas antes de continuar."
    exit 1
fi
