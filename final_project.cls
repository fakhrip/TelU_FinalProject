\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{final_project}[2021/04/27 Telkom University Style for Final Project]

% -------------------------------------------
% Initially created on 2021/04/27 by        |
% Muhammad Fakhri (f4r4w4y) Putra Supriyadi |
% -------------------------------------------

% Load the default class of `article`
\LoadClass[onecolumn, a4paper, 12pt]{article}

% ---------------------------------
% All packages used in this class |
% ---------------------------------
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{fontspec}
\RequirePackage{enumitem}
\RequirePackage{titletoc}
\RequirePackage{caption}
\RequirePackage{lipsum}

% -----------------------------------------
% Custom commands available in this class |
% -----------------------------------------
\newcommand{\csection}[2]{
    \clearpage
    \newpage
    \thispagestyle{specialpage}
    \setcounter{section}{#1}
    \setcounter{subsection}{0}
    \setcounter{subsubsection}{0}
    \section*{#2}
    \addcontentsline{toc}{section}{#2}
}
\newcommand{\cbsection}[3]{
    \clearpage
    \newpage
    \thispagestyle{specialpage}
    \setcounter{section}{#1}
    \setcounter{subsection}{0}
    \setcounter{subsubsection}{0}
    \section*{#2\\#3}
    \addcontentsline{toc}{section}{#2 #3}
}
\newcommand{\abstrak}[2]{%
    \setcounter{page}{3}
    \csection{0}{ABSTRAK}
    #1
    \vspace*{10mm}\\
    \textbf{Kata Kunci:} \textit{#2}
    \clearpage%
}
\newcommand{\daftarpustaka}{
    \clearpage
    \newpage
    \thispagestyle{specialpage}
    \renewcommand\refname{DAFTAR PUSTAKA}
    \bibliographystyle{ieeetr}
    \bibliography{data_pustaka}
}
\newcommand{\addalllist}{
    \renewcommand{\baselinestretch}{0.5}\normalsize
    \renewcommand\contentsname{DAFTAR ISI}
    \thispagestyle{specialpage}
    \tableofcontents
    \clearpage
    \renewcommand\listfigurename{DAFTAR GAMBAR}
    \thispagestyle{specialpage}
    \listoffigures
    \clearpage
    \renewcommand\listtablename{DAFTAR TABEL}
    \thispagestyle{specialpage}
    \listoftables
    \clearpage
    \renewcommand{\baselinestretch}{1.25}\normalsize
}

% ---------------------------------
% Custom styles for this document |
% ---------------------------------
\setmainfont{Times New Roman}

% Document styling (ToC, LoF, LoT)
\addtocontents{lot}{\protect\addvspace{1pc}}
\addtocontents{lof}{\protect\addvspace{1pc}}
\titlecontents{section}[0pt]{\addvspace{1pc}\bfseries}
    {\contentslabel{2em}}
    {} 
    {\titlerule*[1pc]{}\contentspage}
\titlecontents{subsection}[35pt]{}
    {\contentslabel{20pt}}
    {} 
    {\titlerule*[1pc]{.}\contentspage}
\titlecontents{subsubsection}[65pt]{}
    {\contentslabel{30pt}}
    {} 
    {\titlerule*[1pc]{.}\contentspage}
\titlecontents{figure}[0pt]{}
    {\textbf{Gambar~\thecontentslabel}\hspace{5pt}}
    {} 
    {\titlerule*[1pc]{}\contentspage}
\titlecontents{table}[0pt]{}
    {\textbf{Tabel~\thecontentslabel}\hspace{5pt}}
    {} 
    {\titlerule*[1pc]{}\contentspage}

% Document styling (text and font)
\titleformat{\section}
    {\normalfont\large\bfseries\filcenter}
    {\thesection}
    {0em}
    {}
\titleformat{\subsection}
    {\normalfont\normalsize\bfseries}
    {\thesubsection}
    {1em}
    {}
\titleformat{\subsubsection}
    {\normalfont\normalsize\bfseries}
    {\thesubsubsection}
    {1em}
    {}
\titlespacing\chapter{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

% Document styling (paragraph and line spacing)
\setlength{\parskip}{0.5em}
\setlength{\parindent}{1.9em}

% Document styling (page numbering)
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{0cm}
\fancyhead[R]{\thepage}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyhead[R]{\thepage}%
}
\fancypagestyle{specialpage}{%
    \fancyhf{}%
    \fancyfoot[C]{\thepage}%
}

% Document styling (list)
\setlist{
    align=left, 
    labelwidth=*, 
    labelsep*=-1pt, 
    itemindent=0pt, 
    leftmargin=\dimexpr\labelwidth + \labelsep\relax, 
    parsep=0pt, 
    itemsep=0pt,
    topsep=0pt
}

% Document styling (table and figures)
\renewcommand{\thetable}{\thesection.\arabic{table}}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
\renewcommand{\theequation}{\thesection.\arabic{equation}}
\captionsetup[figure]{name=Gambar}
\captionsetup[table]{name=Tabel}
\captionsetup{
    skip=10pt, 
    labelfont=bf,
    labelsep=space
}
\setlength{\arrayrulewidth}{0.5mm}
\setlength{\tabcolsep}{10pt}
\renewcommand{\arraystretch}{1.5}
\makeatletter
\setlength{\@fptop}{0pt}
\setlength{\@fpbot}{0pt plus 1fil}
\makeatother