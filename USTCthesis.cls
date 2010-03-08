%%
%% This is file `USTCthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% CASthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright 2004-2006
%% CTEX.ORG and any individual authors listed elsewhere in this file.
%% 
%% This file was generated from file(s) of the CASthesis package project.
%% ----------------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%% 
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{USTCthesis}
  [2007/01/09 v0.1h USTCthesis document class]
\newif\ifUSTCT@dvips \USTCT@dvipstrue
\DeclareOption{dvips}{\USTCT@dvipstrue}
\DeclareOption{dvipdfm}{\USTCT@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook}[2005/11/25]
%% using times font
\RequirePackage{times}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% using the MathTimeProfessional Font Supplement A
%\let\Bbbk\relax
%\let\heavymath\relax
%\RequirePackage{mtpro,mtpams}
%% graphics packages
\RequirePackage{graphicx,psfrag}
\RequirePackage[small,bf,labelsep=space]{caption}
%% content format
\RequirePackage{titletoc}
%% page setup
\RequirePackage[left=3.2cm,right=3.2cm,top=3.8cm,bottom=3.8cm,footskip=0.8cm,headsep=7.5pt]{geometry}
%% check pdfTeX mode
\RequirePackage{ifpdf}
%% hyperref package
\ifpdf   % We're running pdfTeX in PDF mode
  \RequirePackage[pdftex]{hyperref}
\else    % We're not running pdfTeX, or running pdfTeX in DVI mode
  \ifUSTCT@dvips
    \RequirePackage[dvips]{hyperref}
  \else
    \RequirePackage[dvipdfm]{hyperref}
  \fi
 % \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
\fi
\RequirePackage[numbers,sort&compress,super,square]{natbib}
\RequirePackage{hypernat}
\hypersetup{CJKbookmarks,%
      bookmarksnumbered,%
      colorlinks,%
      linkcolor=blue,%
      citecolor=blue,%
      plainpages=false,%
      pdfstartview=FitH}
\AtEndOfPackage{\makeatletter\input{USTCthesis.cfg}\makeatother}
\def\baselinestretch{1.4}
%\parskip 0.5ex plus 0.25ex minus 0.25ex
\newcommand\USTCHUGE{\fontsize{56}{67.2}\selectfont}
\newcommand\USTCLARGE{\fontsize{20}{30}\selectfont}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
\bibliographystyle{unsrtnat}
\newcommand\USTCTspace{\protect\CTEX@spaceChar}
\newcommand\school[1]{\def\USTCT@value@school{#1}}
\newcommand\depart[1]{\def\USTCT@value@depart{#1}}
\newcommand\degree[1]{\def\USTCT@value@degree{#1}}
\renewcommand\title[1]{\def\USTCT@value@title{#1}}
\renewcommand\author[1]{\def\USTCT@value@author{#1}}
\newcommand\advisor[1]{\def\USTCT@value@advisor{#1}}
\newcommand\major[1]{\def\USTCT@value@major{#1}}
\newcommand\submitdate[1]{\def\USTCT@value@date{#1}}
\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  	\vspace*{0cm}
      \xk\zihao{-0} \USTCT@value@school
    \vskip -0.5cm
      \hei\USTCHUGE \USTCT@value@degree\USTCT@label@thesis
    \vskip 1.75cm
      \includegraphics[scale=0.225]{ustc_logo_new.eps}
    \vskip 1cm %0.75cm
      \def\baselinestretch{1.5}
      \bf\hei\zihao{1} \USTCT@value@title
  \end{center}
  \vskip 0.7cm %0.6cm 0.7cm 2.3cm
  \normalfont\zihao{3}
  \def\tabcolsep{1pt}
  \def\arraystretch{1.16}
  \hspace{1.25cm}
  \begin{tabular}{lp{8cm}}
    \hei\USTCT@label@author & \song {\hfill \USTCT@value@author \hfill} \\
    \hei\USTCT@label@major & \song {\hfill \USTCT@value@major \hfill} \\
    \hei\USTCT@label@advisor & \song {\hfill \USTCT@value@advisor \hfill} \\
    \hei\USTCT@label@date & \song {\hfill \USTCT@value@date \hfill}
  \end{tabular}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand\englishschool[1]{\def\USTCT@value@englishschool{#1}}
\newcommand\englishtitle[1]{\def\USTC@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\USTC@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\USTC@value@englishadvisor{#1}}
\newcommand\englishdate[1]{\def\USTC@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\USTC@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\USTC@value@englishmajor{#1}}
\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{0cm}
      \sf\USTCLARGE \USTC@value@englishschool
    \vskip -0.5cm %-0.6cm
      \sf\zihao{1} \USTC@label@englishthesis\USTC@value@englishdegree\USTC@label@englishdegree
    \vskip 1.7cm %1.25cm
      \includegraphics[scale=0.225]{ustc_logo_new.eps}
    \vskip 2.0cm %2.4cm
      \def\baselinestretch{1}
      \sffamily \bfseries \zihao{1}\USTC@value@englishtitle
  \end{center}
  \vskip 2cm %1.8cm 2cm 3.1cm
  \normalfont\zihao{3}
  \def\tabcolsep{1pt}
  \def\arraystretch{1.1}
  \hspace{1.8cm}
  \begin{tabular}{lc}
  	\USTC@label@englishauthor & \rm \USTC@value@englishauthor \\
  	\USTC@label@englishmajor & \rm \USTC@value@englishmajor \\
  	\USTC@label@englishadvisor& \rm \USTC@value@englishadvisor \\
  	\USTC@label@englishdate & \rm \USTC@value@englishdate
  \end{tabular}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand\makebookspine{
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  \framebox{
   \rotatebox{-90}{\hb@xt@ 0.97\textheight{\ziju{0.17}\verthei\zihao{-4} \USTCT@value@title 
   \hspace*{20pt} \USTCT@value@depart \hspace*{20pt} \USTCT@value@author \hfill \USTCT@value@school \hspace*{30pt} }}
   }
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
  }


\newcommand\makeauthorization{%
  \cleardoublepage
  \thispagestyle{empty}
  \def\baselinestretch{1.85}
  \vspace*{5pt}
  \hei\zihao{3} \USTC@label@authorization
  \vskip 30pt
  \song\zihao{4} \USTC@value@authorization
  \def\baselinestretch{1.4}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
  \normalfont\zihao{-4}
}
\fancypagestyle{plain}{}
\pagestyle{fancy}
  \fancyhf{}
  \fancyhead[C]{\small \leftmark}
  \renewcommand{\headrulewidth}{0.7pt}
\renewcommand\frontmatter{%
    \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}
  \fancyfoot{}
  \fancyfoot[C]{\small \thepage}}
\renewcommand\mainmatter{%
    \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}
  \fancyfoot{}
  \fancyfoot[RO,LE]{\small \thepage}}
\newenvironment{abstract}
  {\chapter{\USTCT@label@abstract}}
  {}
\newcommand\keywords[1]{%
  \vspace{3.5ex}\noindent{\bf\song \USTCT@label@keywords} #1}
\newenvironment{englishabstract}
  {\chapter{\USTCT@label@englishabstract}}
  {}
\newcommand\englishkeywords[1]{%
  \vspace{3.5ex}\noindent{\bf \USTCT@label@englishkeywords} #1}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter{\contentsname}%
    \def\baselinestretch{1}
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    \def\baselinestretch{1.4}
    }
%% chang font in content
\titlecontents{chapter}[0em]
  {\vspace{6bp} \zihao{4}}
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{section}[1.1\ccwd]
  {\vspace{6bp} \zihao{-4}}
  {\thecontentslabel\hspace*{1em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[2.3\ccwd]
  {\vspace{6bp} \zihao{-4}}
  {\thecontentslabel\hspace*{1em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}
%\renewenvironment{thebibliography}[1]
%     {\chapter{\bibname}%
%      \small
%      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
%      \list{\@biblabel{\@arabic\c@enumiv}}%
%           {\settowidth\labelwidth{\@biblabel{#1}}%
%            \leftmargin\labelwidth
%            \advance\leftmargin\labelsep
%            \@openbib@code
%            \usecounter{enumiv}%
%            \let\p@enumiv\@empty
%            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%      \sloppy
%      \clubpenalty4000
%      \@clubpenalty \clubpenalty
%      \widowpenalty4000%
%      \sfcode`\.\@m}
%     {\def\@noitemerr
%       {\@latex@warning{Empty `thebibliography' environment}}%
%      \endlist}
%\newcommand{\bibfont}{\small}
\renewcommand{\bibsection}{
  \chapter{\bibname}%
  \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}
\setlength{\bibsep}{1ex}
\let\OLDappendix\appendix
\newif\if@appendixinbackmatter
\renewenvironment{appendix}
  {\if@mainmatter
     \@appendixinbackmatterfalse\OLDappendix
   \else
      \@appendixinbackmattertrue\@mainmattertrue\OLDappendix
    \fi}
  {\if@appendixinbackmatter\@mainmatterfalse
    \fi}
\renewenvironment{thanks}
  {\chapter{\USTCT@label@thanks}}
  {}
\newenvironment{publications}[1]
     {\chapter{\USTCT@label@publications}%
      \@mkboth{\MakeUppercase\USTCT@label@publications}
              {\MakeUppercase\USTCT@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}
\setcounter{secnumdepth}{4}
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `USTCthesis.cls'.
