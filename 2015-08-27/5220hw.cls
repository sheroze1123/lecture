\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{5220hw}

\LoadClass{article}

\RequirePackage{fancyhdr}
\RequirePackage[usenames]{color}
\RequirePackage{alltt}
\RequirePackage[letterpaper,margin=1in]{geometry}

\renewcommand\@maketitle{
\setlength\parindent{0in}
\addtolength\parskip{1ex}
\setlength\fboxrule{.5mm}\setlength{\fboxsep}{1.2mm}
\newlength\courseheader
\setlength\courseheader\textwidth
\addtolength\courseheader{-4mm}
\begin{center}
\framebox{\parbox\courseheader{\large
Applications of Parallel Computers\hfill\@name\ (\@netid)\\ 
CS 5220 Fall 2015\hfill}}
\end{center}
\bigskip
}

\fancypagestyle{plain}{\fancyhead{}
\renewcommand\headrulewidth{0pt}
\renewcommand\footrulewidth{0.3pt}
\rfoot{\scriptsize{\thepage/\pageref{LastPage}}}}

\newcommand\name[1]{\gdef\@name{#1}}
\newcommand\netid[1]{\gdef\@netid{#1}}

\gdef\@name{\ClassError{5220hw}{No \noexpand\name given}{You must specify your name using the command \noexpand\name{your name}}}
\gdef\@netid{\ClassError{5220hw}{No \noexpand\netid given}{You must specify your Cornell netId using the command \noexpand\netid{your netId}}}

\pagestyle{fancy}
\fancyhf{}
\lhead{\small{CS 5220\ Fall 2015}}
\chead{\small{\@name\ (\@netid)}}
\rhead{\small{\thepage/\pageref{LastPage}}}

\AtEndDocument{\label{LastPage}}

\definecolor{Code}{rgb}{1,0,0}
\newenvironment{codeblock}{\begin{alltt}\color{Code}\bfseries}{\end{alltt}}
\newcommand\code[1]{\textcolor{Code}{\tt\bfseries #1}}

\definecolor{Userinputcolor}{rgb}{0,0.5,0}
\newcommand\userinput[1]{\textcolor{Userinputcolor}{\tt\bfseries #1}}

\definecolor{Output}{rgb}{0.0, 0.0, 0.1}
\newenvironment{outputblock}{\begin{alltt}\color{Output}\bfseries}{\end{alltt}}

\definecolor{File}{rgb}{0,0,1}
\newcommand\file[1]{\textcolor{File}{\frenchspacing\tt\bfseries#1}}

\definecolor{Definition}{rgb}{1.0,0.5,0.0}
\newcommand\define[1]{\textcolor{Definition}{\tt\bfseries\textit{#1}}}

\definecolor{Blue}{rgb}{0,0,1}
\newcommand\blue[1]{\textcolor{Blue}{\tt\bfseries{#1}}}

\newcommand\Emph[1]{\emph{\textcolor[rgb]{1,0,1}{#1}}}

\definecolor{Red}{rgb}{1,0,0}
\newcommand\red[1]{\textcolor{Red}{\tt\bfseries{#1}}}

\newlength{\oldleftmargini}
\newenvironment{exercises}{\oldleftmargini=\leftmargini\leftmargini=3ex\begin{enumerate}}{\end{enumerate}\leftmargini=\oldleftmargini}

\parindent=0pt
\parskip=1ex
