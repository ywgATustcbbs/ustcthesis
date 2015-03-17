%
% University of Science and Technology of China Thesis Template
% For Bachelor Master and Doctor
%
%   Version
%       Beta
%   Created 
%       2014.03.26 by ywg@USTC
%   Last Modified
%       2015.03.17 by ywg@USTC
%
%       $Id$
%
\RequirePackage{times}
\RequirePackage[lined,boxed,linesnumbered,algochapter]{algorithm2e}
\RequirePackage{graphicx,psfrag}
\RequirePackage{enumerate}
\RequirePackage{subfig,epsfig}
\RequirePackage{float}
\RequirePackage{paralist}
\RequirePackage{booktabs}
\RequirePackage[perpage,symbol]{footmisc}
\RequirePackage[integrals]{wasysym}
\RequirePackage{longtable}
	% Set default longtable alignment
	\setlength\LTleft{0pt}
	\setlength\LTright{0pt}
\RequirePackage{bbm}
\RequirePackage{indentfirst}
\RequirePackage{ifthen}
%\RequirePackage{caption3}
\RequirePackage{array}
\RequirePackage{fancyvrb}
\RequirePackage{xcolor}
\ifustc@euler
	\usepackage[OT1,euler-digits]{eulervm}
\fi
\RequirePackage{url}	\def\UrlBreaks{\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z\do\[\do\\\do\]\do\^\do\_\do\`\do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z\do\0\do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\.\do\@\do\\\do\/\do\!\do\_\do\|\do\;\do\>\do\]\do\)\do\,\do\?\do\'\do+\do\=\do\#}



\ustc@define@term{ustcloaname}
\ifustc@notchinese
	\ustcloaname{List of Algorithm}
	\renewcommand{\algorithmcfname}{Algorithm}
\else
	\ustcloaname{算法索引}
	\renewcommand{\algorithmcfname}{算法}
\fi
\renewcommand{\listalgorithmcfname}{\ustc@ustcloaname}
\newcommand\ustcloa{\cleardoublepage\addcontentsline{toc}{chapter}{\ustc@ustcloaname}\listofalgorithms}

\ifustc@oldfontcfg
	\ifustc@adobefont
		\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
		\setCJKsansfont{Adobe Heiti Std}
		\setCJKmonofont{Adobe Fangsong Std}
	
		\setCJKfamilyfont{song}{Adobe Song Std}
		\setCJKfamilyfont{hei}{Adobe Heiti Std}
		\setCJKfamilyfont{kai}{Adobe Kaiti Std}
		\setCJKfamilyfont{fs}{Adobe Fangsong Std}
		%\setCJKfamilyfont{verthei}[RawFeature={vertical:}]{Adobe Heiti Std}%{Adobe Heiti Std} 这里还是改成Adobe Heiti Std吧，在Linux下面SimHei貌似不行，改成这个就好了
	\else
		\setCJKmainfont[BoldFont={SimHei}, ItalicFont={KaiTi}]{NSimSun}
		\setCJKsansfont{SimHei}
		\setCJKmonofont{FangSong}
	
		\setCJKfamilyfont{song}{NSimSun}
		\setCJKfamilyfont{hei}{SimHei}
		\setCJKfamilyfont{kai}{KaiTi}   % XP对应 KaiTi_GB2312，Vista对应KaiTi，注意根据系统切换
		\setCJKfamilyfont{fs}{FangSong} % XP对应 FangSong_GB2312，Vista对应FangSong，注意根据系统切换
	\fi
\fi

\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体

\setmainfont{Times New Roman}
\setsansfont[BoldFont={Courier New Bold}]{Courier New}
\setmonofont[BoldFont={Arial:style=Bold}]{Arial}



%在正文中无论是否在图形环境中，用 \figcaption 均可得到图形标题
%同样，无论是否在表格环境中，用 \tabcaption 均可得到表格标题。
\newcommand\figcaption{\def\@captype{figure}\caption} 
\newcommand\tabcaption{\def\@captype{table}\caption}

%提供表格环境下p{width}加强版命令，使用L{width}等可以在指定宽度的同时指定对齐方式。
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp} 
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}} 
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}} 
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}} 

%Superscript reference
\newcommand{\scite}[1]{\textsuperscript{\cite{#1}}}

\newenvironment{denotation}[1][2.5cm]{
  \ifustc@notchinese
  		\chapter{Nomenclature}
  \else
  		\chapter{主要符号对照表} % no tocline
  \fi
  \noindent\begin{list}{}%
    {\vskip-30bp%\xiaosihao[1.6]
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\dimexpr\labelwidth+\labelsep} % 左边界，zym@USTC说\dimexpr在texlive2011/12上不正常，替代方法是使用calc宏包
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt} % 标签与上文的间距
   }}{\end{list}}

%upStand Greek Letters
\DeclareMathSymbol{\upGamma}{\mathord}{operators}{0}
\DeclareMathSymbol{\upDelta}{\mathord}{operators}{1}
\DeclareMathSymbol{\upTheta}{\mathord}{operators}{2}
\DeclareMathSymbol{\upLambda}{\mathord}{operators}{3}
\DeclareMathSymbol{\upXi}{\mathord}{operators}{4}
\DeclareMathSymbol{\upPi}{\mathord}{operators}{5}
\DeclareMathSymbol{\upSigma}{\mathord}{operators}{6}
\DeclareMathSymbol{\upUpsilon}{\mathord}{operators}{7}
\DeclareMathSymbol{\upPhi}{\mathord}{operators}{8}
\DeclareMathSymbol{\upPsi}{\mathord}{operators}{9}
\DeclareMathSymbol{\upOmega}{\mathord}{operators}{10}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%自定义代码环境code codex 和codescript
%代码来自：陈硕 (giantchen@gmail.com)
%位于：用LaTeX排版编程技术书籍的一些个人经验
%经过小幅修改
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\labelfont}{\bfseries}%定义label字体

\def\FV@SetLineWidth{%
  \if@FV@ResetMargins\else
    \advance\leftmargin\@totalleftmargin
  \fi
  \advance\leftmargin\FV@XLeftMargin\relax
  \advance\rightmargin\FV@XRightMargin\relax
  \linewidth\hsize
  %\advance\linewidth-\leftmargin
  %\advance\linewidth-\rightmargin
  \hfuzz\FancyVerbHFuzz\relax}


\def\FV@SingleFrameLine#1{%
%% DG/SR modification end
  \hbox to\z@{%
    %\kern\leftmargin
%% DG/SR modification begin - Jun. 22, 1998
    \ifnum#1=\z@
      \let\FV@Label\FV@LabelBegin
    \else
      \let\FV@Label\FV@LabelEnd
    \fi
    \ifx\FV@Label\relax
%% DG/SR modification end
      \FancyVerbRuleColor{\vrule \@width\linewidth \@height\FV@FrameRule}%
%% DG/SR modification begin - Jun. 22, 1998
    \else
      \ifnum#1=\z@
        \setbox\z@\hbox{\strut\enspace\labelfont\FV@LabelBegin\strut}%
      \else
        \setbox\z@\hbox{\strut\enspace\labelfont\FV@LabelEnd\strut}%
      \fi
      \@tempdimb=\dp\z@
      \advance\@tempdimb -.5\ht\z@
      \@tempdimc=\linewidth
      \advance\@tempdimc -\wd\z@
      %\divide\@tempdimc\tw@
      \ifnum#1=\z@              % Top line
        \ifx\FV@LabelPositionTopLine\relax
          \FancyVerbRuleColor{\vrule \@width\linewidth \@height\FV@FrameRule}%
        \else
          \FV@FrameLineWithLabel
        \fi
      \else                     % Bottom line
        \ifx\FV@LabelPositionBottomLine\relax
          \FancyVerbRuleColor{\vrule \@width\linewidth \@height\FV@FrameRule}%
        \else
          \FV@FrameLineWithLabel
        \fi
      \fi
    \fi
%% DG/SR modification end
    \hss}}


%% DG/SR modification begin - May. 19, 1998
\def\FV@FrameLineWithLabel{%
  \ht\z@\@tempdimb\dp\z@\@tempdimb%
  \FancyVerbRuleColor{%
    \raise 0.5ex\hbox{\vrule \@width\@tempdimc \@height\FV@FrameRule}%
    \raise\@tempdimb\box\z@}}
%% DG/SR modification end


\def\FV@EndListFrame@Lines{%
  \begingroup
    %\vskip 0.5ex
    \baselineskip\z@skip
    \kern\FV@FrameSep\relax
%% DG/SR modification begin - May. 19, 1998
%%    \FV@SingleFrameLine
    \FV@SingleFrameLine{\@ne}%
%% DG/SR modification end
  \endgroup}

\newskip\mytopsep
\setlength{\mytopsep}{4pt plus 2pt minus 3pt}

\def\FV@ListVSpace{%
  \@topsepadd\mytopsep
  \if@noparlist\advance\@topsepadd\partopsep\fi
  \if@inlabel
    \vskip\parskip
  \else
    \if@nobreak
      \vskip\parskip
      \clubpenalty\@M
    \else
      \addpenalty\@beginparpenalty
      \@topsep\@topsepadd
      \advance\@topsep\parskip
      \addvspace\@topsep
    \fi
  \fi
  %\showthe \@topsepadd
  %\showthe \topsep
  %\showthe \partopsep
  %\showthe \parskip
  \global\@nobreakfalse
  \global\@inlabelfalse
  \global\@minipagefalse
  \global\@newlistfalse}

\def\FV@EndList{%
  \FV@ListProcessLastLine
  \FV@EndListFrame
  %\showthe \@topsepadd
  \@endparenv
  \endgroup
  \@endpetrue}

\def\theFancyVerbLine{\sffamily\scriptsize\arabic{FancyVerbLine}}

\DefineVerbatimEnvironment%
  {Codex}{Verbatim}
  {fontsize=\small,baselinestretch=0.9,xleftmargin=3mm,%
  frame=lines,labelposition=all,framesep=5pt}

\DefineVerbatimEnvironment%
  {Code}{Verbatim}
  {fontsize=\small,baselinestretch=0.9,xleftmargin=3mm}

\DefineVerbatimEnvironment%
  {CodeScript}{Verbatim}
  {fontsize=\scriptsize,baselinestretch=0.9,xleftmargin=3mm}
\DefineVerbatimEnvironment%
  {CodexScript}{Verbatim}
  {fontsize=\scriptsize,baselinestretch=0.9,xleftmargin=3mm,%
  frame=lines,labelposition=all,framesep=5pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%code environment, from ctex-faq
%没有经过实际测试，注意大小写
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{example@bkcolor}{gray}{.875}
%
\newwrite\example@out
\def\example@start{%
  \begingroup% Lets Keep the Changes Local
  \@bsphack
  \immediate\openout \example@out \jobname.exa
  \let\do\@makeother\dospecials\catcode`\^^M\active
  \def\verbatim@processline{%
    \immediate\write\example@out{\the\verbatim@line}}%
  \verbatim@start}
\def\example@finish{\immediate\closeout\example@out\@esphack\endgroup}
\def\example@code#1#2{%
  \colorbox{#1}{%
    \begin{minipage}[c]{#2}%
      \small\verbatiminput{\jobname.exa}%
    \end{minipage}%
  }%
}
\def\example@output#1{%
  \let\savefboxrule\fboxrule%
  \let\savefboxsep\fboxsep%
  \setlength{\fboxrule}{0.1pt}%
  \setlength{\fboxsep}{3mm}%
  \fbox{%
    \begin{minipage}[c]{#1}%
      \setlength{\fboxrule}{\savefboxrule}%
      \setlength{\fboxsep}{\savefboxsep}%
      \setlength{\parskip}{1ex plus 0.4ex minus 0.2ex}%
      \begin{trivlist}\item\small\input{\jobname.exa}\end{trivlist}
    \end{minipage}
  }%
}
\newenvironment{code}%
  {\example@start}%
  {\example@finish%
   \list{}{\itemindent-\leftmargin}\item\relax%
   \makebox[\textwidth][c]{%
     \example@code{example@bkcolor}{0.96\textwidth}%
   }%
   \endlist}

%%
%% End of file `USTCthesis.cls'.
%% Project page:
%%   https://github.com/ywgATustcbbs?tab=repositories
%% Backup Mirror:
%%   https://gitlab.lug.ustc.edu.cn/ywg/ustcthesis