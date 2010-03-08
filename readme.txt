本模板基于ctex上aloft的CASthesis，作了简单修改，在此感谢原作者。

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

提供了dvips、dvipdfm、pdftex的编译选项

提供了oneside、twoside的单双面选项

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

提供了使用MathTimePro字体的选择，由于是商业字体，缺省不使用。如希望使用，可去掉USTCthesis.cls中以下部分的注释。
%% using the MathTimeProfessional Font Supplement A
\let\Bbbk\relax
\let\heavymath\relax
\RequirePackage{mtpro,mtpams}

提供了目录中包含英文的章标题字体切换选择，缺省为helvetica。如希望使用普通times粗体，可注释掉USTCthesis.cls中以下部分：
%% chang chapter font in content 
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \usefont{T1}{phv}{m}{n} \hei \zihao{-4}
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

封面标题应使用行楷体，但大部分TeX系统没有安装，故缺省使用黑体。可以通过USTCthesis.cfg中的xk字体定义修改。

其他调节选项请参阅文件内注释自行选择。

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

模板使用了ctex宏包，建议升级至最新版本。
http://wikka.ctex.org/PackageCTeX

CJKpunct宏包，用于解决中文标点压缩，已经包含在新版ctex宏包内，单独的在这里
http://lsec.cc.ac.cn/cgi-bin/viewcvs.cgi/cct/CJKpunct/

cjk最新的是4.6，比4.5有很大改进，虽然新版不是必须，不过升了也没坏处。
http://cjk.ffii.org/cjk-current.tar.gz

此外还用了很多类似ams的宏包，因此希望使用者TeX系统比较完整。

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

已知bug

1.章节标题过长时，页眉部分文字可能出现重叠
  so，取短点的标题吧

2.

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝最后一个分隔线了＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

我的联系方式 maya@瀚海星云
