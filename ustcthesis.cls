%
% University of Science and Technology of China Thesis Template
% For Bachelor Master and Doctor
%
%   Version
%       Beta
%   Created 
%       2014.03.26 by ywg@USTC
%   Last Modified
%       2014.03.27 by ywg@USTC
%
%       $Id$
%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{ustcthesis}[2014/03/26 USTCthesis document class. Created: 2014.03.26 by ywg@USTC, Last Modified: 2014.03.27 by ywg@USTC]

%new class options
\newif\ifustc@basic\ustc@basicfalse
\newif\ifustc@oldfontcfg\ustc@oldfontcfgfalse
\newif\ifustc@master\ustc@masterfalse
\newif\ifustc@doctor\ustc@doctorfalse
\newif\ifustc@bachelor\ustc@bachelorfalse
\newif\ifustc@adobefont\ustc@adobefontfalse
\newif\ifustc@euler\ustc@eulerfalse

\def\ustc@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname ustc@#1\endcsname{##1}}
  \csname #1\endcsname{}}

%默认情况下加载增强包，其中有常用宏包及实用命令，如果不需要增强包或者出现了兼容问题，可以尝试仅加载基础宏包的版本。
\DeclareOption{basic}{\ustc@basictrue}
%CTeX中已经对字体进行了设置，因此不必再另行定义。但是为了对原硕博模板提供一定程度的兼容，可以通过此选项继续使用原字体设置
\DeclareOption{oldfontcfg}{\ustc@oldfontcfgtrue}
%论文的目标学位
\DeclareOption{master}{\ustc@mastertrue}
\DeclareOption{doctor}{\ustc@doctortrue}
\DeclareOption{bachelor}{\ustc@bachelortrue}
%使用Euler数学字体
\DeclareOption{euler}{\ustc@eulertrue}

%增强容错性
\DeclareOption{adobefonts}{\ustc@adobefonttrue\PassOptionsToClass{adobefonts}{ctexbook}}
\DeclareOption{adobefont}{\ustc@adobefonttrue\PassOptionsToClass{adobefonts}{ctexbook}}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
%
\PassOptionsToPackage{CJKchecksingle,PlainEquation}{xeCJK}
\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexbook}

\ifustc@basic\relax\else\input{ustcxtra.cls}\relax\fi

% Alter some LaTeX defaults for better treatment of figures:
% See p.105 of "TeX Unbound" for suggested values.
% See pp. 199-200 of Lamport's "LaTeX" book for details.
%   General parameters, for ALL pages:
\renewcommand{\topfraction}{0.9}	% max fraction of floats at top
\renewcommand{\bottomfraction}{0.8}	% max fraction of floats at bottom
%   Parameters for TEXT pages (not float pages):
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}     % 2 may work better
\setcounter{dbltopnumber}{2}    % for 2-column pages
\renewcommand{\dbltopfraction}{0.9}	% fit big float above 2-col. text
\renewcommand{\textfraction}{0.07}	% allow minimal text w. figs
%   Parameters for FLOAT pages (not text pages):
\renewcommand{\floatpagefraction}{0.7}	% require fuller float pages
% N.B.: floatpagefraction MUST be less than topfraction !!
\renewcommand{\dblfloatpagefraction}{0.7}	% require fuller float pages
%remember to use [htp] or [htpb] for placement


\ifustc@master\relax\else
	\ifustc@doctor\relax\else
		\ifustc@bachelor\relax\else
			\ClassError{USTCthesis}{You have to specify one of thesis options: bachelor, master or doctor.}{}
		\fi
	\fi
\fi

\newcommand\ustc@error{\ClassError{USTCthesis}{You can ONLY specify ONE KEY option: bachelor, master or doctor!}{}}
\ifustc@doctor
	\ifustc@master
		\ustc@error
	\else
		\ifustc@bachelor
			\ustc@error
		\fi
	\fi
\else
	\ifustc@master
		\ifustc@bachelor
			\ustc@error
		\fi
	\fi
\fi
	

%load basic packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
\RequirePackage{titletoc}
\RequirePackage{titlesec}
\RequirePackage[
	left=3.17cm,
	right=3.17cm,
	top=2.54cm,
	bottom=2.54cm,
	headsep=0.25cm,
	headheight=1.5cm,
	footskip=0.79cm,
%	showframe
	]{geometry}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{hyperref}
\hypersetup{
	CJKbookmarks=true,%
	bookmarksnumbered=true,%
	bookmarksopen=true,
	breaklinks=true,
	colorlinks=true,%
	linkcolor=black,%
	citecolor=black,%
	plainpages=false,%
	pdfstartview=FitH}
\RequirePackage[numbers,sort&compress,square]{natbib}

%Chinese font size
\newcommand{\chuhao}    {\fontsize{42pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochu}   {\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\yihao}     {\fontsize{28pt}   {\baselineskip}\selectfont}
\newcommand{\erhao}     {\fontsize{21pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoer}    {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoerhao} {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\sanhao}    {\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}   {\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\sihao}     {\fontsize{14pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosi}    {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosihao} {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\wuhao}     {\fontsize{10.5pt} {\baselineskip}\selectfont}
\newcommand{\xiaowu}    {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\xiaowuhao} {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\liuhao}    {\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}     {\fontsize{5.25pt} {\baselineskip}\selectfont}

%定义竖排黑体
\ifustc@adobefont
	\setCJKfamilyfont{verthei}[RawFeature={vertical:}]{Adobe Heiti Std}\relax
\else%
	\setCJKfamilyfont{verthei}[RawFeature={vertical:}]{SimHei}\relax
\fi
\newcommand{\ustc@verthei}{\CJKfamily{verthei}}

%titleformat
\setcounter{secnumdepth}{3}

%\titleformat{\section}{\flushleft\hei\sihao}{\thesection}{1em}{}
%\titleformat{\subsection}{\flushleft\hei\xiaosi}{\thesubsection}{1em}{}
%\titleformat{\subsubsection}{\flushleft\hei\wuhao}{\thesubsubsection}{1em}{}
%\renewcommand\chaptername{第\,\chinese{chapter}\,章}
%\titleformat{\chapter}{\centering\sanhao\hei}{\chaptername}{1em}{}
%\titlespacing{\chapter}{0cm}{.5cm}{1.5cm} %left above below


\CTEXsetup[format={\centering}]{chapter}%规定16pt，三号为15.75pt
\CTEXsetup[nameformat={\bfseries\sanhao}]{chapter}
\CTEXsetup[titleformat={\bfseries\sanhao}]{chapter}
\CTEXsetup[format={\flushleft\bfseries\sihao}]{section}%规定14pt，即四号
\CTEXsetup[format={\flushleft\bfseries\fontsize{13pt}\baselineskip}]{subsection}%规定13pt
\CTEXsetup[format={\flushleft\bfseries\xiaosihao}]{subsubsection}%规定12pt，即小四号
\CTEXsetup[beforeskip={0pt}]{chapter}
\CTEXsetup[afterskip={18pt}]{chapter}

\ustc@define@term{ustclofname}
\ustc@define@term{ustclotname}
\ustclofname{插图索引}
\ustclotname{表格索引}
\CTEXoptions[listfigurename={\ustc@ustclofname}]
\CTEXoptions[listtablename={\ustc@ustclotname}]
\newcommand\ustclot{\listoftables\addcontentsline{toc}{chapter}{\ustc@ustclotname}}
\newcommand\ustclof{\listoffigures\addcontentsline{toc}{chapter}{\ustc@ustclofname}}

%\titlespacing{\chapter}{0cm}{0pt}{0pt} %left above below

\newtheorem{theorem}{\textbf{\hspace{0.7cm}定理}}[section]
\newtheorem{lemma}{\textbf{\hspace{0.7cm}引理}}[section]
\newtheorem{example}{\textbf{\hspace{0.7pt}例}}[section]
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
\renewcommand{\proofname}{证明}
\renewcommand\appendixname{附录}
\def\equationautorefname{式}
\def\footnoteautorefname{脚注}
\def\itemautorefname{项}
\def\figureautorefname{图}
\def\subfigureautorefname{图}
\def\tableautorefname{表}
\def\partautorefname{篇}
\def\appendixautorefname{附录}
\def\chapterautorefname{章}
\def\sectionautorefname{节}
\def\subsectionautorefname{小节}
\def\theoremautorefname{定理}
\def\assumptionautorefname{假设}
\def\propertyautorefname{性质}

%似乎CTeX中的行距设置已经比较完善了，不知道为什么还要把这个设置成1.4，对应的应该是12pt*1.4=16.8pt
%\renewcommand\baselinestretch{1.4}
\newcommand\ustc@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\setlength{\parskip}{0pt plus3pt minus0pt}%{1ex plus1.5ex minus0.5ex}%{0.5\baselineskip}%{1.5pt plus1pt minus1pt}
\setlength{\parindent}{2\ccwd}
%\setlength{\parskip}{3pt plus1pt minus2pt}
%\setlength{\baselineskip}{22pt plus1pt minus1pt}
%\setlength{\textheight}{21true cm}
%\setlength{\headsep}{1 cm}
%\setlength{\textwidth}{14.5true cm} 
%\setlength{\belowcaptionskip}{5pt}


\newcommand\USTCHUGE{\fontsize{56}{67.2}\selectfont}%中文扉页第二行
\newcommand\USTCLARGE{\fontsize{26}{30}\selectfont}%英文扉页第二行
\newcommand\USTCLarge{\fontsize{20}{30}\selectfont}%英文扉页第一行
\newcommand\USTCTspace{\protect\CTEX@spaceChar}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\renewcommand{\floatpagefraction}{0.80}

\renewcommand\title[1]{\def\ustc@title{#1}}
\renewcommand\author[1]{\def\ustc@author{#1}}
\ustc@define@term{advisor}
\ustc@define@term{coadvisor}
\ustc@define@term{major}%硕士博士论文适用专业全称，不可用缩写。本科论文不需要此项
\ustc@define@term{submitdate}
\ustc@define@term{depart}%硕士博士论文用院系代号，仅用于书脊。本科论文用院系全称，仅用于扉页

\ustc@define@term{entitle}
\ustc@define@term{enauthor}
\ustc@define@term{enadvisor}
\ustc@define@term{encoadvisor}
\ustc@define@term{ensubmitdate}
\ustc@define@term{enmajor}
\ustc@define@term{endepart}%硕士博士论文用院系代号，仅用于书脊。本科论文用院系全称，仅用于扉页

\ustc@define@term{studentid}%学号，仅本科论文
\ustc@define@term{spinetitle}%书脊使用的标题，当title里含有控制字符时使用此命令输入文本标题

%\ustc@define@term{degree}%暂时没有用

\renewcommand\maketitle{%
	\ifustc@bachelor%
		\make@cntitle
		\make@entitle
	\else
		\make@cntitle
		\make@entitle
		\make@bookspine
		\make@authorization
	\fi}

%中文扉页
\newcommand\make@cntitle{%
  \newgeometry{%
  top=3.8cm,
  bottom=3.8cm,
  left=3.2cm,
  right=3.2cm
  }
  \pdfbookmark[-1]{\ustc@title}{title}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
  	\vspace*{0.5cm plus 0.5cm minus 1cm}
      \includegraphics[width=10cm]{ustc_logo_text.eps}
    \vskip -0.5cm
    \bfseries\USTCHUGE\ifustc@doctor
      {博士学位论文}
    \else\ifustc@master
      {硕士学位论文}  
    \else
      {学士学位论文}
    \fi\fi
    
    \ifustc@bachelor\vskip 1cm\relax\else\vskip 1.5cm\fi
      \includegraphics[width=4.7cm]{ustc_logo_fig.eps}
    \ifustc@bachelor\relax\else\vskip 0.5cm\fi %0.75cm
      \renewcommand{\baselinestretch}{0.5}%行距
        \parbox[c]{11cm}%\begin{minipage}
        {\center\bfseries\yihao\ustc@title}
      %\end{minipage}
  \end{center}
  \vskip 1.0cm %0.6cm 0.7cm 2.3cm
  \begin{center}
  {\sanhao
  \ifustc@bachelor\begin{tabular}{lc}%
	  \bfseries{姓\hspace{2\ccwd}名：} & \ustc@underline[6cm]{\ustc@author}\\
	  \bfseries{院\hspace{2\ccwd}系：} & \ustc@underline[6cm]{\ustc@depart}\\
	  \bfseries{学\hspace{2\ccwd}号：} & \ustc@underline[6cm]{\ustc@studentid}\\
	  \bfseries{导\hspace{2\ccwd}师：} & \ustc@underline[6cm]{\ustc@advisor}\\
	  \ifx\ustc@coadvisor\@empty\else & \ustc@underline[6cm]{\ustc@coadvisor}\\\fi
	  \bfseries{完成时间：} & \ustc@underline[6cm]{\ustc@submitdate}
	\end{tabular}
  \else	\begin{tabular}{lc}%
	  \bfseries{作者姓名：} & \ustc@underline[6cm]{\ustc@author}\\
	  \bfseries{学科专业：} & \ustc@underline[6cm]{\ustc@major}\\
	  \bfseries{导师姓名：} & \ustc@underline[6cm]{\ustc@advisor}\\
	  \ifx\ustc@coadvisor\@empty\else
	                        & \ustc@underline[6cm]{\ustc@coadvisor}\\\fi
	  \bfseries{完成时间：} & \ustc@underline[6cm]{\ustc@submitdate}
	\end{tabular}
  \fi}
  \end{center}
  \clearpage
  \restoregeometry
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

%英文扉页
\newcommand\make@entitle{%
  \newgeometry{%
  top=3.8cm,
  bottom=3.8cm,
  left=3.2cm,
  right=3.2cm
  }
  %\pdfbookmark{英文标题}{etitle}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{0cm}
      \USTCLarge{\ttfamily{University of Science and Technology of China}}
    \vskip -0.2cm %-0.6cm
    \USTCLARGE{\ttfamily\ifustc@doctor
      {A dissertation for doctor's degree}
    \else\ifustc@master
      {A dissertation for master's degree}
    \else
      {A dissertation for bachelor's degree}
    \fi\fi}
    \vskip 1.5cm %1.25cm
      \includegraphics[width=4.7cm]{ustc_logo_fig.eps}
    \vskip 1.5cm %2.4cm
      \renewcommand{\baselinestretch}{1}
      \bfseries\yihao\ustc@entitle
  \end{center}
  \vskip 1.0cm %1.8cm 2cm 3.1cm
  \begin{center}
  {\sanhao
  \ifustc@bachelor
	  \begin{tabular}{lc}
	  	Author :& \ustc@underline[6cm]{\ustc@enauthor}\\
	  	Department :& \ustc@underline[6cm]{\ustc@endepart}\\
	  	Student ID :& \ustc@underline[6cm]{\ustc@studentid}\\
		Supervisor :& \ustc@underline[6cm]{\ustc@enadvisor}\\
		\ifx\ustc@encoadvisor\@empty\else
	                     & \ustc@underline[6cm]{\ustc@encoadvisor}\\
	    \fi
	  	Finished Time :& \ustc@underline[6cm]{\ustc@ensubmitdate}
	  \end{tabular}
  \else
	  \begin{tabular}{lc}
	  	Author :& \ustc@underline[6cm]{\ustc@enauthor}\\
	  	Speciality :& \ustc@underline[6cm]{\ustc@enmajor}\\
	  	Supervisor :& \ustc@underline[6cm]{\ustc@enadvisor}\\
		\ifx\ustc@encoadvisor\@empty\else
	                     & \ustc@underline[6cm]{\ustc@encoadvisor}\\
	    \fi
	  	Finished Time :& \ustc@underline[6cm]{\ustc@ensubmitdate}
	  \end{tabular}
  \fi}
  \end{center}
  \clearpage
  \restoregeometry
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand\make@bookspine{
  \newgeometry{%
  top=3.8cm,
  bottom=3.8cm,
  left=3.2cm,
  right=3.2cm
  }
%\pdfbookmark{书\hspace{1em}脊}{bookmark}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
   \rotatebox{-90}{
   \framebox[0.97\textheight][c]{\ziju{0.17}\ustc@verthei\zihao{-4} \raisebox{10pt}{ \ifx\ustc@spinetitle\@empty\ustc@title\else\ustc@spinetitle\fi
   \hspace*{20pt}  \ustc@depart \hspace*{20pt}  \ustc@author  \hspace*{30pt}{中国科学技术大学} }}
   }
  \end{center}
  \clearpage
  \restoregeometry
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
\newcommand{\ustc@declaretext}{%
本人声明所呈交的学位论文,是本人在导师指导下进行研究工作所取得的成果。
除已特别加以标注和致谢的地方外，论文中不包含任何他人已经发表或撰写过
的研究成果。与我一同工作的同志对本研究所做的贡献均已在论文中作了明确的说明。
}
\newcommand{\ustc@authorization}{%
作为申请学位的条件之一，学位论文著作权拥有者授权中国科学技术大学拥有
学位论文的部分使用权，即：学校有权按有关规定向国家有关部门或机构送交
论文的复印件和电子版，允许论文被查阅和借阅，可以将学位论文编入《中国
学位论文全文数据库》等有关数据库进行检索，可以采用影印、缩印或扫描等
复制手段保存、汇编学位论文。本人提交的电子文档的内容和纸质论文的内容
相一致。

保密的学位论文在解密后也遵守此规定。
}
\def\ustc@secret@newtitle{%
   □\ 公开\hspace{0.5cm}□\ 保密\ \ustc@underline[4em]\relax\hspace{0.1em}年}
\newcommand\make@authorization{%
 % \pdfbookmark{原创与授权声明}{authorization}
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}\sanhao\bfseries{中国科学技术大学学位论文原创性声明}\end{center}
  \par\ustc@declaretext\par
  \vskip1.0cm
  {\begin{tabular}{p{6cm}p{6cm}}
  作者签名：\ustc@underline{} & 签字日期：\ustc@underline{}
  \end{tabular}}
   \vskip2.0cm
  \begin{center}\sanhao\bfseries{中国科学技术大学学位论文授权使用声明}\end{center}
  \par\ustc@authorization\par
  \vskip0.5cm
  \ustc@secret@newtitle\par
  \vskip1.0cm
  {\renewcommand{\arraystretch}{2.0}%行高
  \begin{tabular}{p{6cm}p{6cm}}
  作者签名：\ustc@underline{} & 导师签名：\ustc@underline{}\\
  签字日期：\ustc@underline{} & 签字日期：\ustc@underline{}
  \end{tabular}}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\fancypagestyle{plain}{}
\pagestyle{fancy}
  \fancyhf{}
  \ifustc@bachelor\fancyhead[C]{\xiaowuhao{中国科学技术大学学士学位论文}}\relax\else\fancyhead[C]{\small \leftmark}\fi
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

\newcommand{\ustc@enabstractname}{ABSTRACT}
\newcommand{\ustc@cnabstractname}{摘\rule{\ccwd}{0pt}要}
\newcommand{\ustc@thanksname}{致\rule{\ccwd}{0pt}谢}
\newcommand\keywords[1]{%
  \vspace{3.5ex}\noindent{\bfseries 关键词：~} #1}
\newcommand\enkeywords[1]{%
  \vspace{3.5ex}\noindent{\bf Keywords:~} #1}
\newenvironment{cnabstract}
  {\chapter{\texorpdfstring{\ustc@cnabstractname}{摘要}}}
  {}
\newenvironment{enabstract}
  {\chapter{ABSTRACT}}
  {}
\renewenvironment{thanks}
  {\chapter{\texorpdfstring{\ustc@thanksname}{致谢}}}
  {}
  
%tableofcontents
\renewcommand{\contentsname}{\texorpdfstring{目\rule{\ccwd}{0pt}录}{目录}}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter{\contentsname}%
    \renewcommand{\baselinestretch}{1}
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
%% tableofcontent
\titlecontents{chapter}[0em]
  {\vspace{6bp}\sihao}%14pt，如果希望美观一些，可以无视章节标题用宋体的规定，自行添加\bfseries
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{section}[1.1\ccwd]
  {\vspace{1bp} \xiaosi}
  {\thecontentslabel\hspace*{0.5em}}
  {}
  {\titlerule*[0.5pc]{$\cdot$}\contentspage}
\titlecontents{subsection}[2.5\ccwd]%原来是2.3
  {\vspace{1bp} \wuhao}%规定三级标题是10.5pt
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
{
  \if@mainmatter
     \@appendixinbackmatterfalse\OLDappendix
  \else
      \@appendixinbackmattertrue\@mainmattertrue\OLDappendix
  \fi
	\renewcommand\chaptername{\appendixname~\thechapter}}
  {\if@appendixinbackmatter\@mainmatterfalse\fi
}



\endinput
%%
%% End of file `USTCthesis.cls'.
