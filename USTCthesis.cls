%
% University of Science and Technology of China Thesis Template
%
%   $Id$
%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{USTCthesis}[2011/01/01 USTCthesis document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook}
\RequirePackage{times}
\RequirePackage{ccaption}
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
\RequirePackage{graphicx,psfrag}
\RequirePackage[small,bf,labelsep=space]{caption}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage[left=3.17cm,right=3.17cm,top=2.54cm,bottom=2.54cm]{geometry}
\RequirePackage{enumerate}
\RequirePackage{subfig,epsfig}
\RequirePackage{float}
\RequirePackage{paralist}
\RequirePackage{booktabs}
\RequirePackage{setspace}
\RequirePackage[perpage,symbol]{footmisc}
\RequirePackage{pifont}
\RequirePackage{hyperref}
\RequirePackage[numbers,sort&compress,super,square]{natbib}
\RequirePackage{hypernat}
\hypersetup{
	CJKbookmarks=true,%
	bookmarksnumbered=true,%
	breaklinks=true,
	colorlinks=true,%
	linkcolor=black,%
	citecolor=black,%
	plainpages=false,%
	pdfstartview=FitH}
	
	
\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
\setCJKsansfont{Adobe Heiti Std}
\setCJKmonofont{Adobe Fangsong Std}
\setCJKfamilyfont{Adobe Song Std}{Adobe Song Std}
\setCJKfamilyfont{Adobe Heiti Std}{Adobe Heiti Std}
\setCJKfamilyfont{Adobe Kaiti Std}{Adobe Kaiti Std}
\setCJKfamilyfont{Adobe Fangsong Std}{Adobe Fangsong Std}
\setmainfont{Times New Roman}
\setsansfont[BoldFont={Courier New Bold}]{Courier New}
\setmonofont[BoldFont={Arial:style=Bold}]{Arial}

\setCJKfamilyfont{song}{Adobe Song Std}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{fs}{Adobe Fangsong Std} % XP对应 FangSong_GB2312，Vista对应FangSong，注意根据系统切换
\setCJKfamilyfont{kai}{Adobe Kaiti Std}   % XP对应 KaiTi_GB2312，Vista对应KaiTi，注意根据系统切换
\setCJKfamilyfont{li}{LiSu}
\setCJKfamilyfont{xk}{STXingkai}
\setCJKfamilyfont{verthei}[RawFeature={vertical:}]{Adobe Heiti Std}%{SimHei}
\newcommand{\song}{\CJKfamily{song}}    % 宋体   (Windows自带simsun.ttf)
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体 (Windows自带simfs.ttf)
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体   (Windows自带simkai.ttf)
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体   (Windows自带simhei.ttf)
\newcommand{\li}{\CJKfamily{li}}        % 隶书   (Windows自带simli.ttf)
\newcommand{\xk}{\CJKfamily{xk}}				% 行楷，暂用黑体替代
\newcommand{\verthei}{\CJKfamily{verthei}}


%Chinese font size
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}


%titleformat
\titleformat{\section}{\flushleft\bfseries\sihao}{\thesection}{1em}{}
\titleformat{\subsection}{\flushleft\bfseries\xiaosi}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\flushleft\bfseries\wuhao}{\thesubsubsection}{1em}{}
\titleformat{\chapter}{\centering\sanhao\bfseries}{第\,\thechapter\,章}{1em}{}
\titlespacing{\chapter}{0cm}{0cm}{.4cm}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}.}

%theorems
\newtheorem{theorem}{\textbf{\hspace{0.7cm}定理}}[section]
\newtheorem{lemma}{\textbf{\hspace{0.7cm}引理}}[section]
\newtheorem{example}{\textbf{\hspace{0.7pt}例}}[section]
\newtheorem{algorithm}{\textbf{\hspace{0.7pt}算法}}[section]
\newtheorem{definition}{\textbf{\hspace{0.7pt}定义}}[section]
\newtheorem{axiom}{\textbf{\hspace{0.7pt}公理}}[section]
\newtheorem{property}{\textbf{\hspace{0.7pt}性质}}[section]
\newtheorem{proposition}{\textbf{\hspace{0.7pt}命题}}[section]
\newtheorem{corollary}{\textbf{\hspace{0.7pt}推论}}[section]
\newtheorem{remark}{\textbf{\hspace{0.7pt}注解}}[section]
\newtheorem{condition}{\textbf{\hspace{0.7pt}条件}}[section]
\newtheorem{conclusion}{\textbf{\hspace{0.7pt}结论}}[section]
\newtheorem{assumption}{\textbf{\hspace{0.7pt}假设}}[section]
\newtheorem{prove}{\textbf{\hspace{0.7cm}证明}}[section]

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
\newcommand\depart[1]{\def\USTC@value@depart{#1}}
\newcommand\degree[1]{\def\USTC@value@degree{#1}}
\renewcommand\title[1]{\def\USTC@value@title{#1}}
\renewcommand\author[1]{\def\USTC@value@author{#1}}
\newcommand\advisor[1]{\def\USTC@value@advisor{#1}}
\newcommand\major[1]{\def\USTC@value@major{#1}}
\newcommand\submitdate[1]{\def\USTC@value@date{#1}}
\renewcommand\maketitle{%
  \pdfbookmark[-1]{\USTC@value@title}{title}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  	\vspace*{0cm}
      %\xk\zihao{-0}{中国科学技术大学}
      \includegraphics[scale=0.8]{ustc_logo_text.eps}
    \vskip -0.5cm
      \hei\USTCHUGE {博士学位论文}
    \vskip 1.75cm
      \includegraphics[scale=0.225]{ustc_logo_fig.eps}
    \vskip 1cm %0.75cm
      \def\baselinestretch{1.5}
      \hei\zihao{1}\USTC@value@title
  \end{center}
  \vskip 0.7cm %0.6cm 0.7cm 2.3cm
  \normalfont\zihao{3}
  \def\tabcolsep{1pt}
  \def\arraystretch{1.16}
  \hspace{1.25cm}
  \begin{tabular}{lp{8cm}}
    \hei{作者姓名：} & \song {\hfill \USTC@value@author \hfill} \\
    \hei{学科专业：} & \song {\hfill \USTC@value@major \hfill} \\
    \hei{导师姓名：} & \song {\hfill \USTC@value@advisor \hfill} \\
    \hei{完成时间：} & \song {\hfill \USTC@value@date \hfill}
  \end{tabular}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand\englishtitle[1]{\def\USTC@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\USTC@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\USTC@value@englishadvisor{#1}}
\newcommand\englishdate[1]{\def\USTC@value@englishdate{#1}}
\newcommand\englishmajor[1]{\def\USTC@value@englishmajor{#1}}
\newcommand\makeenglishtitle{%
  %\pdfbookmark{英文标题}{englishtitle}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{0cm}
      \USTCLARGE{University of Science and Technology of China}
    \vskip -0.5cm %-0.6cm
      \zihao{1} {A dissertation for doctor degree}
    \vskip 1.7cm %1.25cm
      \includegraphics[scale=0.225]{ustc_logo_fig.eps}
    \vskip 2.0cm %2.4cm
      \def\baselinestretch{1}
      \bfseries \zihao{1}\USTC@value@englishtitle
  \end{center}
  \vskip 2cm %1.8cm 2cm 3.1cm
  \normalfont\zihao{3}
  \def\tabcolsep{1pt}
  \def\arraystretch{1.1}
  \hspace{1.8cm}
  \begin{tabular}{lc}
  	Author: & \rm \USTC@value@englishauthor \\
  	Speciality: & \rm \USTC@value@englishmajor \\
  	Supervisor: & \rm \USTC@value@englishadvisor \\
  	Finished Time: & \rm \USTC@value@englishdate
  \end{tabular}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand\makebookspine{
%\pdfbookmark{书\hspace{1em}脊}{bookmark}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
   \rotatebox{-90}{
   \framebox[0.97\textheight][c]{\ziju{0.17}\verthei\zihao{-4} \raisebox{10pt}{\USTC@value@title
   \hspace*{20pt} \USTC@value@depart \hspace*{20pt} \USTC@value@author \hspace*{30pt}{中国科学技术大学} }}
   }
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
  }

%% 定义页眉横线
\newcommand{\makeheadrule}{%
    \rule[.7\baselineskip]{\headwidth}{1.2pt}\vskip-0.97\baselineskip%
    \rule[.6\baselineskip]{\headwidth}{0.4pt}}%

%\makeatletter
\renewcommand{\headrule}{%
    {\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi}%
     \makeheadrule}
%\makeatother

\DefineFNsymbols{circled}{{\ding{192}}{\ding{193}}{\ding{194}}{\ding{195}}}
\setfnsymbol{circled}
%\renewcommand{\thefootnote}{\textcircled{\arabic{footnote}}}	% 带圈数字型脚注
%\renewcommand{\thefootnote}{\arabic{footnote}}		% 数字型脚注
%\renewcommand{\thefootnote}{\alph{footnote}}		% 小写字母型脚注
%\renewcommand{\thefootnote}{\fnsymbol{footnote}}	% 符号型脚注

\newcommand{\USTC@declarename}{中国科学技术大学学位论文原创性声明}
\newcommand{\USTC@authtitle}{中国科学技术大学学位论文授权使用声明}
\newcommand{\USTC@declaretext}{%
本人声明所呈交的学位论文,是本人在导师指导下进行研究工作所取得的成果。除已特别加以标注和致谢的地方外，论文中不包含任何他人已经发表或撰写过的研究成果。与我一同工作的同志对本研究所做的贡献均已在论文中作了明确的说明。
}
\newcommand{\USTC@authorization}{%
作为申请学位的条件之一，学位论文著作权拥有者授权中国科学技术大学拥有学位论文的部分使用权，即：学校有权按有关规定向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅，可以将学位论文编入《中国学位论文全文数据库》等有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。本人提交的电子文档的内容和纸质论文的内容相一致。

保密的学位论文在解密后也遵守此规定。
}
\def\USTC@secret@newtitle{%
   □\ 公开\hspace{0.5cm}□\ 保密\ \USTC@underline[4em]\relax\hspace{0.1em}年}
\newcommand{\USTC@authorsig}{作者签名：}
\newcommand{\USTC@teachersig}{导师签名：}
\newcommand{\USTC@frontdate}{签字日期：}
\newcommand\USTC@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\makeauthorization{%
 % \pdfbookmark{原创与授权声明}{authorization}
  \cleardoublepage
  \thispagestyle{empty}
  \def\baselinestretch{1.0}
  \begin{center}\sanhao\hei\USTC@declarename\end{center}
  \xiaosi\par\USTC@declaretext
  \vskip1.0cm
      {\parindent0pt\xiaosi
      \hspace*{1.5cm}\USTC@authorsig\USTC@underline[7em]\relax\hfill%
                     \USTC@frontdate\USTC@underline[7em]\relax\hspace*{1cm}
                     }
   \vskip2.0cm
  \begin{center}\sanhao\hei\USTC@authtitle\end{center}
  \par\USTC@authorization\par
  \vskip0.5cm
  \USTC@secret@newtitle\par
  \vskip1.0cm
      {\parindent0pt\xiaosi
      \hspace*{1.5cm}\USTC@authorsig\USTC@underline[7em]\relax\hfill%
                     \USTC@teachersig\USTC@underline[7em]\relax\hspace*{1cm}\\
      \hspace*{1.5cm}\USTC@frontdate\USTC@underline[7em]\relax\hfill%
                     \USTC@frontdate\USTC@underline[7em]\relax\hspace*{1cm}
                     }
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
  {\chapter{摘\hspace{1em}要}}
  {}
\newcommand\keywords[1]{%
  \vspace{3.5ex}\noindent{\bf\song 关键词：} #1}
\newenvironment{englishabstract}
  {\chapter{ABSTRACT}}
  {}
\newcommand\englishkeywords[1]{%
  \vspace{3.5ex}\noindent{\bf Keywords:~} #1}

%tableofcontents
\renewcommand{\contentsname}{目\hspace{1em}录}
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
  {\vspace{3bp}\hei\xiaosi}
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{section}[1.1\ccwd]
  {\vspace{3bp} \xiaosi}
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[2.3\ccwd]
  {\vspace{3bp} \xiaosi}
  {\thecontentslabel\hspace*{0.5em}}
  {}
 {\titlerule*[0.5pc]{$\cdot$}\contentspage}

%\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}
%\newdimen\bibspace
%\setlength\bibspace{3pt}
%\renewenvironment{thebibliography}[1]
%     {\chapter{\bibname}%
%\renewcommand{\baselinestretch}{0.5}
 %     \xiaowu%\linestretch{1.0}
%	  %\addtolength{\bibsep}{-0.5cm}
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
%\def\bibpreamble{\linespread{0.2}}
\renewcommand{\bibsection}{
  \chapter{\bibname}
\renewcommand{\baselinestretch}{0.8}
  %\setlength{\linestretch}{1.0}
  \xiaowu%%\small
  %\linespread{1.36}
  \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}
%\setlength{\bibsep}{0ex}
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
  {\chapter{致$\quad$谢}}
  {}

\newenvironment{denotation}[1][2.5cm]{
  \chapter{主要符号对照表} % no tocline
  \noindent\begin{list}{}%
    {\vskip-30bp%\xiaosihao[1.6]
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt} % 标签与上文的间距
   }}{\end{list}}


\newcounter{pubctr} %自定义新计数器
\newenvironment{publications}{%%%%%定义新环境
\begin{list}{\@biblabel{\@arabic\c@pubctr}} %%标签格式
    {
     \usecounter{pubctr}
     \setlength{\leftmargin}{4em}     % 左边界 \leftmargin =\itemindent + \labelwidth + \labelsep
     \setlength{\itemindent}{0em}     % 标号缩进量
     \setlength{\labelwidth}{1em}     % 标号宽度
     \setlength{\labelsep}{1em}       % 标号和列表项之间的距离,默认0.5em
     \setlength{\rightmargin}{0em}    % 右边界
     \setlength{\topsep}{0ex}         % 列表到上下文的垂直距离
%     \setlength{\partopsep}{0ex}      % 列表是一个新的段落时，加的额外到上下文的距离
     \setlength{\parsep}{0ex}         % 段落间距
     \setlength{\itemsep}{0ex}        % 标签间距
     \setlength{\listparindent}{26pt} % 段落缩进量
    }}
{\end{list}}%%%%%

\endinput
%%
%% End of file `USTCthesis.cls'.
