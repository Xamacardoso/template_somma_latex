#!/bin/bash
# Script para converter o projeto LaTeX para Word (.docx) usando Pandoc
# Certifique-se de ter o Pandoc instalado: https://pandoc.org/

echo "Iniciando conversão para Docx..."

pandoc main.tex \
    --citeproc \
    --bibliography=pos-textual/referencias.bib \
    -o artigo_convertido.docx

if [ $? -eq 0 ]; then
    echo "Conversão concluída com sucesso! Arquivo: artigo_convertido.docx"
else
    echo "Erro na conversão. Verifique se o Pandoc está instalado e se os caminhos estão corretos."
fi
