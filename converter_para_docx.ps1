# Script para converter o projeto LaTeX para Word (.docx) usando Pandoc
# Certifique-se de ter o Pandoc instalado: https://pandoc.org/

Write-Host "Iniciando conversão para Docx..." -ForegroundColor Cyan

pandoc main.tex `
    --citeproc `
    --bibliography=pos-textual/referencias.bib `
    -o artigo_convertido.docx

if ($LASTEXITCODE -eq 0) {
    Write-Host "Conversão concluída com sucesso! Arquivo: artigo_convertido.docx" -ForegroundColor Green
} else {
    Write-Host "Erro na conversão. Verifique se o Pandoc está instalado e se os caminhos estão corretos." -ForegroundColor Red
}
