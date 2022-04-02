
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cfm_paper}
 
% inherit from extarticle
\LoadClass[a4paper, english, 9pt,twocolumn]{extarticle}

\pagestyle{empty}

\usepackage[utf8]{inputenc} %Encoding
\usepackage[T1]{fontenc} %Encoding
\usepackage[a4paper, portrait, margin=2cm]{geometry} %This specifies A4 paper in portrait mode with 2cm margins
\usepackage{amsmath} %Mathematical typesetting
\usepackage{amsfonts} %Mathematical font
\usepackage{graphicx} %Necessary for \includegraphics more options
\usepackage[english]{babel} %Language support
\usepackage{mathptmx} %Times new roman LaTeX version
\usepackage{multicol} %Necessary to create the two columns and adjust space between them
\usepackage{titlesec} %Necessary for section and subsection formatting
\usepackage{tabularx} %Necessary for full column width tabular definition
\usepackage{caption} %Necessary for \captionof use
\usepackage[style = ieee, sorting = nyt, backend=biber]{biblatex} %Biblatex, with predefined ieee style referencing.
\usepackage{csquotes} %This is used for citations
\usepackage{hhline} %For double lines in tables
\usepackage{paralist}
\usepackage{siunitx}
\usepackage{cuted}
\usepackage{hyperref}
\usepackage{float}
\usepackage{booktabs}



\let\underscore\_                                           % underscore sign
\let\xor\^                                                  % xor sign
\renewcommand\_[2][1]{\ifmmode _{\textnormal{\scalebox{#1}{#2}}}\else\underscore#2\fi} %roman subscript
\renewcommand\^[2][1]{\ifmmode ^{\textnormal{\scalebox{#1}{#2}}}\else\xor#2\fi} %roman superscript
\def\smallind{0.8}

\setlength{\columnsep}{1cm} %Columns separated by 1cm
\setlength{\parindent}{0pt} %No indent when starting paragraph
\renewcommand{\arraystretch}{1.2}
\setlength\doublerulesep{.5pt} %Spacing of doublelines in tables

\titleformat{\section}{\normalsize}{\thesection}{}{} %Sections are normalsized and not bold
\titlespacing*{\section}{0pt}{0.1cm}{0cm} %Fixes the amount of white-space above/below section headers

\titleformat{\subsection}{\normalsize\bfseries}{\thesection}{}{} %Subsections are bold but normalsized
\titlespacing*{\subsection}{0pt}{0.1cm}{0cm} %Fixes the amount of white-space above/below subsection headers

\newcommand{\eq}[1]{
  \begin{equation}
    #1
  \end{equation}
}

\newcommand{\University}{}

\newcommand{\university}[1]{
    \renewcommand{\University}{#1}
}

\newcommand{\School}{}

\newcommand{\school}[1]{
    \renewcommand{\School}{#1}
}

\newcommand{\Programme}{}

\newcommand{\programme}[1]{
    \renewcommand{\Programme}{#1}
}

\renewcommand{\maketitle}{
    \begin{strip}
    \begin{center}
        {\huge 
        \@title
        } \vspace{0.4cm} \\
        \@author \\
       \University  \\
       \School \\
        \Programme
        \vspace{0.4cm}
    \end{center}
    \end{strip}
}



