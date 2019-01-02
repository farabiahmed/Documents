%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ITU PHD Proposal Template
% Created by Farabi Ahmed TARHAN
% @2017 12 09
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ituphdreport}[2017/12/09 Custom ITU PhD Report Template]
\LoadClass[a4paper,onecolumn,12pt]{article}[1996/10/31]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages
\RequirePackage{ifthen}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}
\RequirePackage[hang]{caption}
\RequirePackage{calc}
\RequirePackage{appendix}
\usepackage[absolute]{textpos}
\usepackage{lscape}
\usepackage{url}
\usepackage{color}
\usepackage[pdftex]{graphicx}
\usepackage{url}
\usepackage{cite}
\usepackage{amsmath}
\usepackage[pdftex]{graphicx}   %Enable pdflatex
\usepackage{pgfgantt}
\usepackage{pdflscape}
\usepackage{amssymb}
\usepackage{braket} % needed for \Set
\usepackage{caption}
\usepackage{algorithm}
\usepackage[noend]{algpseudocode}
\usepackage[open,openlevel=3]{bookmark}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Configure images path
\graphicspath{ {images/} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% General Definitions
\newcommand{\th@StoreIn}[2]{\gdef#1{#2}}  %% Stores the second arg in the command specified by the first arg.

\numberwithin{equation}{section} %% Number equations by sections.

% Math Definitions
\DeclareMathOperator*{\argmin}{\arg\!\min}
\DeclareMathOperator*{\argmax}{\arg\!\max}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colors
\definecolor{light-gray}{gray}{0.45}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Spacings
\newlength{\defbaselineskip}
\setlength{\defbaselineskip}{\baselineskip}
\newcommand{\setlinespacing}[1]{\setlength{\baselineskip}{#1\defbaselineskip}}
\newcommand{\doublespacing}{\setlength{\baselineskip}{2.0\defbaselineskip}}            %%\doublespacing = 2*\defbaselineskip
\newcommand{\singlespacing}{\setlength{\baselineskip}{\defbaselineskip}}                %%\singlespacing = 1*\defbaselineskip
\newcommand{\oneandonehalf}{\setlength{\baselineskip}{1.5\defbaselineskip}}            %%\oneandonehalf = 1.5*\defbaselineskip
\newcommand{\LoFspacing}{\setlength{\baselineskip}{1.0\defbaselineskip}}               %%\LoFspacing = 1.2*\defbaselineskip 08-05-2006
\newcommand{\LoTspacing}{\setlength{\baselineskip}{1.0\defbaselineskip}}               %%\LoTspacing = 1.2*\defbaselineskip 08-05-2006
\newcommand{\ToCspacing}{\setlength{\baselineskip}{1.0\defbaselineskip}}               %%\ToCspacing = 1.2*\defbaselineskip 08-05-2006
\newcommand{\Baslikspacing}{\setlength{\baselineskip}{1.3\defbaselineskip}}            %%\Baslikspacing = 1.2*\defbaselineskip 08-05-2006

\newlength{\ChapterUstenBosluk}
\setlength{\ChapterUstenBosluk}{18.5mm}
\newlength{\UstenBosluk}
\setlength{\UstenBosluk}{14mm}

\newlength{\LoFparskip}     %% List of Figure parskip 08-05-2006
\setlength{\LoFparskip}{0em}

\newlength{\LoTparskip}     %% List of Table parskip 08-05-2006
\setlength{\LoTparskip}{0em}

\newlength{\ToCparskip}     %% Table of Content parskip 08-05-2006
\setlength{\ToCparskip}{0em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Table of Contents

\newcommand*{\chapternameToC}{\fontfamily{ptm}\normalsize\selectfont CHAPTER \normalfont}
\newcommand*{\contentsnameToC}{\fontfamily{ptm}\normalsize\selectfont CONTENTS \normalfont}

\setcounter{secnumdepth}{2} % levels under \section are not numbered
\setcounter{tocdepth}{1}    % levels under \subsection are not listed in the TOC

\renewcommand{\l@section}[2]%
{\@dottedtocline{1}{.5em}{1.3em}%
 {{\bfseries\selectfont#1}}{#2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cover Page
\newcommand\cover
{
    \clearpage
    \thispagestyle{empty}
    {
        \centering

        % University Name
        \textbf{ISTANBUL TECHNICAL UNIVERSITY} \\
        \vspace{3mm}
        \textbf{GRADUATE SCHOOL OF SCIENCE, ENGINEERING AND TECHNOLOGY} \\

        \vspace{25mm}
        \textbf{THESIS PROGRESS REPORT} \\

        % Name and Department
        {
            \color{light-gray}
            \vspace{55mm}
            \setlength{\baselineskip}{25pt}
            \textbf{\th@namesurname} \\
            \textbf{\th@studentid} \\
            \textbf{\th@department} \\
            \textbf{\th@programme} \\

            % Date
            \vspace{65mm}
            \textbf{\th@date} % Left a blank line after this statement. Don't know why but otherwise it doesn't aligned center.

        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis Info
\newcommand*{\thesistitle}[1]{
    \th@StoreIn{\th@thesistitle}{#1}
}

\newcommand*{\writer}[2]{
    \th@StoreIn{\th@namesurname}{#1 #2}
    \th@StoreIn{\th@surnamename}{#2, #1}
}

\newcommand*{\studentid}[1]{
    \th@StoreIn{\th@studentid}{#1}
}


\newcommand*{\department}[1]{
    \th@StoreIn{\th@department}{#1}
}

\newcommand*{\programme}[1]{
    \th@StoreIn{\th@programme}{#1}
}

\newcommand*{\ddate}[1]{
    \th@StoreIn{\th@date}{#1}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Jury (sorry for ridiculous names...)
\newcommand{\tezyoneticisi}[2]{
      \th@StoreIn{\th@TezYoneticisi}{#1}
      \th@StoreIn{\th@TezYoneticisiUniv}{#2}
}

\newcommand*{\juriBir}[2]{
  \th@StoreIn{\th@juribir}{#1}
  \th@StoreIn{\th@juribiruniv}{#2}
}

\newcommand*{\juriIki}[2]{
  \th@StoreIn{\th@juriiki}{#1}
  \th@StoreIn{\th@juriikiuniv}{#2}
}

\newcommand*{\juriUc}[2]{
  \th@StoreIn{\th@juriuc}{#1}
  \th@StoreIn{\th@juriucuniv}{#2}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\th@onaypage}
{
    \newpage
    \singlespacing

    \vspace*{28mm}

    \hspace{-3mm}
    \begin{tabular}{p{35mm} p{115mm}}
    \textbf{THESIS TITLE:}  & \MakeUppercase{\th@thesistitle}
    \end{tabular}


    \vspace*{24mm}
    \textbf{MEMBERS OF THESIS STEERING COMMITTEE:}

    \vspace*{14mm}
    \hspace{-3mm}
    \begin{tabular}{p{33mm} l l}
     &  &  \\
     &  &  \\
     &  &  \\
    \textbf{Thesis Advisor :} & \textbf{\th@TezYoneticisi}  &  .............................. \\
      & \th@TezYoneticisiUniv  &  \\     &  &  \\     &  &  \\

    \textbf{Member :}         & \textbf{\th@juribir}        &  .............................. \\
     & \th@juribiruniv        &  \\     &  &  \\     &  &  \\

    \textbf{Member :}              & \textbf{\th@juriiki}   &  .............................. \\
     & \th@juriikiuniv        &  \\     &  &  \\     &  &  \\

    \end{tabular}

    \hspace{-3mm}

    \sloppy
}

%%%%%%%%%%%%%%%%%%%%%%%%%%\renewcommand*\l@section{\@tocline{1}{1.1em}{1.5em}}%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand \tableofcontents{

    \newpage
    \vspace*{\ChapterUstenBosluk}
    {
        \addcontentsline{toc}{part}{
            \bf{\protect\contentsnameToC}
        }
        \vspace*{-20pt}
        \hfill\vspace*{0.5truecm}{\bf\underline{Page}}
    }

    \let\orig@numberline\numberline
    \@mkboth{\MakeUppercase\listtablename}{\MakeUppercase\listtablename}
    \newlength{\th@oldparskip}
    \setlength{\th@oldparskip}{\parskip}
    \setlength{\parskip}{\ToCparskip}
    \@starttoc{toc}
    \setlength{\parskip}{\th@oldparskip}

    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
        %\setlength{\voffset}{0.0m}
        \setlength{\voffset}{-4mm}
 %       \setlength{\hoffset}{16mm}
        %\setlength{\oddsidemargin}{14.6mm}      %% Sayfa Solu = 1in(25.4 mm) + 15.6mm = 40 mm%% [A4 297mm-210mm]
        %\setlength{\oddsidemargin}{10mm}
        \setlength{\oddsidemargin}{2mm}
        \setlength{\evensidemargin}{2mm}     %% Sayfa Sağı = 1in(25.4 mm) + 15.6mm = 40 mm
        %\setlength{\topmargin}{-3.0mm}
        \setlength{\topmargin}{3mm}
        \setlength{\headheight}{0.0mm}         %% Sayfa Başlığı (Numarası) = 10 mm
        \setlength{\headsep}{0.0mm}             %% Sayfa Başlığı ile Sayfa Metni Arası Boşluk
        \setlength{\textheight}{248mm}%252mm          %% Sayfa Metni Yüksekliği
%        \setlength{\textheight}{232mm}          %% Sayfa Metni Yüksekliği
%        \setlength{\textwidth}{145mm}           %% Sayfa Metni Genişliği
        \setlength{\textwidth}{160mm}           %% Sayfa Metni Genişliği
        \setlength{\marginparsep}{0mm}
        \setlength{\marginparwidth}{0mm}
        \setlength{\leftmargini}{1.25em}
        \setlength{\leftmarginii}{2.2em}
        \setlength{\leftmarginiii}{2.2em}
        \setlength{\leftmarginiv}{2.2em}
        \setlength{\leftmarginv}{2.2em}
        \setlength{\leftmarginvi}{2.2em}
        \setlength{\leftmargin}{0mm}
        \setlength{\labelsep}{.5em}
        \setlength{\labelwidth}{1.5em}
        %\setlength{\footskip}{0pt}
        \setlength{\footskip}{24pt}
        %\setlength{\footskip}{60pt}
        %\setlength{\topskip}{0mm}
        \setlength{\parindent}{0pt}             %% Paragrafların ilk satırlarının ne kadar içeri gireceği
        \setlength\parskip{6pt}
        %\pagestyle{fancy}
        \markright{}
        \onecolumn
        \raggedbottom
        \normalsize
        \normalfont
        %\oneandonehalf
        %\setcounter{tocdepth}{5}
        %\setcounter{secnumdepth}{4}            %% Bütün başlıklar numaralanacak
        \fontfamily{ptm}
        \selectfont
        }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtEndDocument{
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copy default document properties.
\let\th@OldBeginDocument\document
% Run new properties over default one.
\renewcommand*{\document}{
    \th@OldBeginDocument
    \pagenumbering{roman}
    \cover
    \th@onaypage
    \tableofcontents
    %\th@MakeThesisPrologue
    %\oneandonehalf
    %\pagenumbering{arabic}




    \newpage
    \pagenumbering{arabic}
    \singlespacing
    \Baslikspacing
}

\endinput
