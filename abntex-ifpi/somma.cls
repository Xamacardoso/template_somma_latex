%% abntex-ifpi/somma.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex-ifpi/somma}[2026/05/01 Template para a Revista Somma - IFPI]

% Passa opções para a classe abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax

% A base é a classe abntex2, configurada como artigo (article)
\LoadClass[article,12pt,oneside,a4paper,english,brazilian]{abntex2}

% --- Pacotes Base Necessários ---
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{caption}
\RequirePackage{indentfirst}
\RequirePackage{geometry}

% --- Margens ---
\geometry{
    a4paper,
    top=3.5cm,
    bottom=3cm,
    left=3cm,
    right=2cm,
    headheight=75pt,
    headsep=15pt,
    footskip=31pt    % Ajustado para descer levemente o rodapé com segurança
}

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

% --- Metadados da Revista (Parametrizáveis) ---
\newcommand{\sommavolume}[1]{\def\@sommavolume{#1}}
\newcommand{\sommaano}[1]{\def\@sommaano{#1}}
\newcommand{\sommaelocation}[1]{\def\@sommaelocation{#1}}
\newcommand{\sommadoi}[1]{\def\@sommadoi{#1}}
\newcommand{\sommaissn}[1]{\def\@sommaissn{#1}}
\newcommand{\sommapagina}[1]{\setcounter{page}{#1}}

% Valores padrão
\sommavolume{10}
\sommaano{2024}
\sommaelocation{eXX1024}
\sommadoi{10.51361/somma.v10i1.XX}
\sommaissn{2447-701X}

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
\aliaspagestyle{headings}{fancy}
\aliaspagestyle{tabular}{fancy}
\aliaspagestyle{abntheadings}{fancy}
\aliaspagestyle{chapter}{fancy}
\aliaspagestyle{cleared}{fancy}

% Redefine \textual para garantir que o estilo fancy persista e a numeração continue
\let\oldtextual\textual
\renewcommand{\textual}{%
  \oldtextual%
  \pagestyle{fancy}%
  \aliaspagestyle{chapter}{fancy}%
}

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
            \rule{\textwidth}{0.5pt}\\[0.1cm]
            \begin{minipage}{0.12\textwidth}
                \includegraphics[height=0.5cm]{imagens/cc-by.png}
            \end{minipage}%
            \begin{minipage}{0.88\textwidth}
                \textcolor{CinzaSomma}{\fontsize{8}{10}\selectfont Somma | Teresina, PI | Volume \@sommavolume{} | \@sommaelocation{} | Ano \@sommaano{} | DOI:\@sommadoi \ | Pág. \thepage}
            \end{minipage}
        \end{minipage}
    }
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

% ==========================================
% ESTILO PARA A PRIMEIRA PÁGINA
% ==========================================
\fancypagestyle{somma_primeira}{
    \fancyhf{}
    \fancyhead[C]{
        \begin{minipage}{\textwidth}
            \begin{minipage}{0.12\textwidth}
                \includegraphics[height=1.4cm]{imagens/image5.jpg}
            \end{minipage}%
            \begin{minipage}{0.88\textwidth}
                \centering
                \textcolor{VerdeSomma}{\arialfont\fontsize{14}{16}\selectfont\textbf{Somma - Revista Científica do Instituto Federal de}} \\
                \textcolor{VerdeSomma}{\arialfont\fontsize{14}{16}\selectfont\textbf{Educação, Ciência e Tecnologia do Piauí}}
            \end{minipage}
            \par\vspace{2pt}
            \rule{\textwidth}{0.8pt}
            \par\vspace{1pt}
            \begin{minipage}{\textwidth}
                \raggedleft
                {\arialfont\fontsize{8}{10}\selectfont
                    \textcolor{gray}{ISSN: \@sommaissn} \\
                    \textcolor{gray}{\@sommaelocation} \\
                    \vspace{2pt}
                    \textcolor{VerdeEscuroSomma}{\fontsize{14}{16}\selectfont\textbf{[Incluir Seção]}}
                }
            \end{minipage}
        \end{minipage}
    }
    % Rodapé da primeira página (igual às outras)
    \fancyfoot[C]{
        \begin{minipage}{\textwidth}
            \centering
            \textcolor{VerdeEscuroSomma}{\fontsize{10}{12}\selectfont\textbf{Artigo submetido a sistemas de verificação de similaridade}}\\[0.1cm]
            \rule{\textwidth}{0.5pt}\\[0.1cm]
            \begin{minipage}{0.12\textwidth}
                \includegraphics[height=0.5cm]{imagens/cc-by.png}
            \end{minipage}%
            \begin{minipage}{0.88\textwidth}
                \textcolor{CinzaSomma}{\fontsize{8}{10}\selectfont Somma | Teresina, PI | Volume \@sommavolume{} | \@sommaelocation{} | Ano \@sommaano{} | DOI:\@sommadoi \ | Pág. \thepage}
            \end{minipage}
        \end{minipage}
    }
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Espaçamentos de legendas
\captionsetup{font=small, labelfont=bf, labelsep=colon}

\endinput
