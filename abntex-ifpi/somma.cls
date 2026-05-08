%% abntex-ifpi/somma.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex-ifpi/somma}[2026/05/01 Template para a Revista Somma - IFPI]

% Passa opções para a classe abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax

% A base é a classe abntex2, configurada como artigo (article)
\LoadClass[article,12pt,oneside,a4paper,english,brazilian]{abntex2}

% --- Pacotes Base Necessários ---
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{caption}
\RequirePackage{indentfirst}

% --- Margens ---
% Configura margens conforme padrão (superior 3cm, inferior 3cm, esquerda 3cm, direita 2cm)
\geometry{a4paper, top=3cm, bottom=3cm, left=3cm, right=2cm}

% --- Configurações de Parágrafo ---
% Recuo de 1,25 cm na primeira linha e espaçamento de 6pt depois do parágrafo
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{12pt}
\SingleSpacing % Espaçamento simples entre linhas

% --- Cores ---
% Cor principal dos títulos da Revista Somma IFPI
\definecolor{VerdeSomma}{HTML}{538134}
\definecolor{VerdeEscuroSomma}{HTML}{375623}
\definecolor{VerdeCabecalho}{HTML}{41904e}
\definecolor{CinzaSomma}{HTML}{808080}

% --- Títulos de Seção ---
% Arial Narrow, negrito, 12 pts, cor verde, maiúsculas
\titleformat{\section}
  {\normalfont\fontsize{12}{14}\bfseries\color{VerdeSomma}\MakeUppercase}
  {\thesection}
  {1em}
  {}

% Subtópico 1 - Arial Narrow, 12 pts, cor preta
\titleformat{\subsection}
  {\normalfont\fontsize{12}{14}\color{black}}
  {\thesubsection}
  {1em}
  {}

% Subtópico 2 - Arial Narrow, 12 pts, itálico
\titleformat{\subsubsection}
  {\normalfont\fontsize{12}{14}\itshape\color{black}}
  {\thesubsubsection}
  {1em}
  {}

% Ajusta os espaçamentos das seções (6pt antes, 6pt depois, ignorando parskip extra)
\titlespacing*{\section}{0pt}{6pt}{6pt}
\titlespacing*{\subsection}{0pt}{6pt}{6pt}
\titlespacing*{\subsubsection}{0pt}{6pt}{6pt}

% --- Cabeçalho e Rodapé ---
\pagestyle{fancy}
\fancyhf{} % Limpa tudo
\aliaspagestyle{headings}{fancy} % Faz com que o estilo padrão de páginas seja o fancy
\aliaspagestyle{tabular}{fancy}
\aliaspagestyle{abntheadings}{fancy} % Alias para o estilo usado pelo abntex2

% Redefine \textual para garantir que o estilo fancy persista
\let\oldtextual\textual
\renewcommand{\textual}{\oldtextual\pagestyle{fancy}}

% ==========================================
% ESTILO PARA PÁGINAS NORMAIS (Pág 2 em diante)
% ==========================================
\fancypagestyle{fancy}{
    \fancyhf{}
    \fancyhead[C]{
        \begin{minipage}{\textwidth}
            \centering
            \textcolor{VerdeSomma}{\arialfont\fontsize{11}{13}\selectfont\textbf{Somma}} 
            {\calibrifont\fontsize{11}{13}\selectfont |} 
            \textcolor{VerdeSomma}{\bodonifont\fontsize{11}{13}\selectfont \titulocabecalho}
        \end{minipage}
    }
    \fancyfoot[C]{
        \begin{minipage}{\textwidth}
            \centering
            \textcolor{CinzaSomma}{\fontsize{9}{11}\selectfont Somma | Teresina, PI | Volume 10 | eXX1024 | Ano 2024 | DOI:10.51361/somma.v10i1.XX}
        \end{minipage}
    }
}

% ==========================================
% ESTILO PARA A PRIMEIRA PÁGINA
% ==========================================
\fancypagestyle{somma_primeira}{
    \fancyhf{}
    % Cabeçalho da Primeira Página
    \fancyhead[C]{
        \begin{minipage}{\textwidth}
            \begin{minipage}{0.15\textwidth}
                \vspace{-0.5cm}
                \includegraphics[height=1.5cm]{imagens/image5.jpg}
            \end{minipage}%
            \begin{minipage}{0.85\textwidth}
                \vspace{-0.5cm}
                \centering
                \textcolor{VerdeCabecalho}{\fontsize{14}{16}\selectfont\textbf{Somma - Revista Científica do Instituto Federal de}}\\
                \textcolor{VerdeCabecalho}{\fontsize{14}{16}\selectfont\textbf{Educação, Ciência e Tecnologia do Piauí}}\\[0.2cm]
                \textcolor{VerdeSomma}{\rule{\textwidth}{1pt}}
                \begin{flushright}
                    \vspace{-0.1cm}
                    \fontsize{9}{11}\selectfont \textcolor{gray}{ISSN: 2447-701X}\\
                    \fontsize{9}{11}\selectfont \textcolor{gray}{eXX1024}
                \end{flushright}
            \end{minipage}
        \end{minipage}
    }
    % Rodapé da Primeira Página
    \fancyfoot[C]{
        \begin{minipage}[b]{\textwidth}
            \centering
            \textcolor{VerdeEscuroSomma}{\fontsize{10}{12}\selectfont\textbf{Artigo submetido a sistemas de verificação de similaridade}}\\[0.2cm]
            \rule{\textwidth}{0.5pt}\\[0.2cm]
            \begin{minipage}{0.14\textwidth}
                \includegraphics[height=0.6cm]{imagens/cc-by.png}
            \end{minipage}%
            \begin{minipage}{0.86\textwidth}
                \textcolor{CinzaSomma}{\fontsize{9}{11}\selectfont Somma | Teresina, PI | Volume 10 | eXX1024 | Ano 2024 | DOI:10.51361/somma.v10i1.XX}
            \end{minipage}
        \end{minipage}
    }
}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Ajusta a altura do cabeçalho
\setlength{\headheight}{75pt}
\setlength{\headsep}{5pt} % Reduz o espaço entre cabeçalho e corpo do texto
\setlength{\footskip}{52pt}

% --- Legendas de Figuras e Tabelas ---
\captionsetup{font=small, labelfont=bf, labelsep=colon}

\endinput
