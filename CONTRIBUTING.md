# Guia de Contribuição

Obrigado por se interessar em colaborar com o template da Revista Somma!

## Como contribuir

### 1. Reportando bugs ou Sugerindo Melhorias
Abra uma **Issue** no GitHub descrevendo o problema ou a sugestão. Seja o mais detalhado possível.

### 2. Enviando Alterações de Código
1. Faça o fork do repositório.
2. Crie uma branch para sua alteração: `git checkout -b minha-melhoria`.
3. Faça suas alterações nos arquivos `.tex` ou na classe `.cls`.
4. **Importante**: Antes de enviar, certifique-se de que o projeto compila sem erros (Warnings são aceitáveis, mas erros impedem o PR).
5. Envie o push para sua branch: `git push origin minha-melhoria`.
6. Abra um Pull Request.

## Padrões de Código LaTeX

- Use indentação consistente (4 espaços ou 1 tab).
- Comente blocos complexos de código na classe `.cls`.
- Mantenha a separação lógica: conteúdo nos `capitulos/` e estrutura no `main.tex`.

## Organização de Pastas

- `imagens/`: Todas as imagens devem estar aqui. Use formatos preferencialmente `.pdf` (vetorial), `.png` ou `.jpg`.
- `configuracoes/`: Não adicione pacotes diretamente no `main.tex`. Use o arquivo `pacotes.tex`.

---
Esperamos sua contribuição!
