#!/bin/bash

read -p "Digite o nome da pasta: " PASTA

if [ -z "$PASTA" ]; then
    echo "Erro: Você precisa fornecer um nome."
    exit 1
fi

mkdir "$PASTA"

if [ $? -eq 0 ]; then
    echo "Pasta '$PASTA' criada!"
    tar -czf "$PASTA.tar.gz" "$PASTA"

    if [ $? -eq 0 ]; then
        echo "Pasta '$PASTA' compactada com sucesso como '$PASTA.tar.gz'."
    else
        echo "Erro ao compactar a pasta '$PASTA'."
    fi
else
    echo "Erro ao criar a pasta '$PASTA'."
fi
