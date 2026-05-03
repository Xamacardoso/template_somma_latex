# Template LaTeX - Revista Somma (IFPI)

Este repositório contém um template em LaTeX para submissão de artigos na **Revista Somma** do Instituto Federal do Piauí (IFPI). Este template está em desenvolvimento, sob manutenção da equipe do [LABoratory of Intelligent Robotics, Automation and Systems (LABIRAS)](https://br.linkedin.com/company/labiras), do próprio IFPI, para garantir a padronização visual e técnica exigida pela revista, além de facilidade de escrita pelos autores.

## 🚀 Como Começar

### Pré-requisitos

Para compilar este projeto, você precisará de:

1.  **Distribuição LaTeX**: [MiKTeX](https://miktex.org/) ou [TeX Live](https://www.tug.org/texlive/).
2.  **Perl**: Necessário para o funcionamento do `biber` (gestão de referências) e `latexmk`. Recomendamos o [Strawberry Perl](https://strawberryperl.com/) para Windows.
3.  **Editor LaTeX**: Recomendamos o [VS Code](https://code.visualstudio.com/) com a extensão [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

### Estrutura do Projeto

*   `main.tex`: Arquivo principal que deve ser compilado.
*   `abntex-ifpi/`: Contém a classe `somma.cls` e estilos customizados.
*   `configuracoes/`: Definições de pacotes (`pacotes.tex`) e comandos customizados (`comandos.tex`).
*   `pre-textual/`: Informações do autor, título, resumo e abstract.
*   `capitulos/`: Conteúdo principal do artigo (Introdução, Metodologia, etc).
*   `imagens/`: Pasta para armazenar as figuras do artigo.
*   `pos-textual/`: Referências bibliográficas (gerenciadas via BibLaTeX) e anexos.

## 🛠️ Compilação e Conversão

### Gerar PDF (Padrão)
O projeto utiliza o motor de compilação `pdflatex` com o gerenciador de bibliografias `biber`.

Se estiver usando o **VS Code + LaTeX Workshop**, a compilação será automática ao salvar o arquivo `main.tex`. Caso prefira a linha de comando:

```bash
latexmk -pdf main.tex
```

### Gerar Word (.docx)
Caso precise de uma versão em Word para revisão ou colaboração externa, utilizamos o **Pandoc**.

**Requisito**: Ter o [Pandoc](https://pandoc.org/installing.html) instalado.

Execute o script correspondente ao seu sistema no terminal:

**Windows (PowerShell):**
```powershell
./converter_para_docx.ps1
```

**Linux (Bash):**
```bash
chmod +x converter_para_docx.sh
./converter_para_docx.sh
```

Ou use o comando direto:
```bash
pandoc main.tex --citeproc --bibliography=pos-textual/referencias.bib -o artigo_convertido.docx
```

> [**AVISO! ⚠️⚠️**]
> A conversão para `.docx` foca no conteúdo e nas referências. Elementos visuais complexos (como o cabeçalho institucional específico da Revista Somma e o layout exato das colunas) podem não ser preservados perfeitamente no Word.

## 🤝 Colaboração

Este template é um esforço colaborativo. Sinta-se à vontade para:

1.  Fazer um **Fork** do projeto.
2.  Criar uma **Branch** para sua funcionalidade (`git checkout -b feature/nova-melhoria`).
3.  Fazer o **Commit** de suas alterações (`git commit -m 'Adiciona melhoria X'`).
4.  Fazer o **Push** para a Branch (`git push origin feature/nova-melhoria`).
5.  Abrir um **Pull Request**.

## 📝 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

---
**Desenvolvido pela equipe do LABIRAS para a comunidade acadêmica do IFPI.**
