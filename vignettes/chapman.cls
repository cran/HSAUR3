% CHAPMAN.STY
% v0.17 --- released 6th April 1993
% v0.16 --- released 11th November 1991
% v0.15 --- released 8th November 1991
% v0.14 --- first release 3rd November 1991
%
% A LaTeX style file for Chapman and Hall books
% Copyright 1993 Cambridge University Press
%Modified Sept 1995 to work under Latex 2e
%
% based on the BOOK DOCUMENT STYLE -- Released 26 April 88
% for LaTeX version 2.09
% Copyright (C) 1988 by Leslie Lamport
%
\typeout{Document Style `chapman' v0.17 <6th April 1993>}
%
%  Books use two-sided printing.
%

%\usepackage{times,mathtime}%for latex 2e user to use mathtimes font


\@twosidetrue
\@mparswitchtrue
%
%  draft option
%
\def\ds@draft{\overfullrule 5pt}
\@options
%  ****************************************
%  *               FONTS                  *
%  ****************************************
%
\lineskip 1pt
\normallineskip 1pt
\def\baselinestretch{1}
\def\normalsize{\@setsize\normalsize{12pt}\xpt\@xpt
 \abovedisplayskip 6pt plus 1pt minus 1pt%
 \belowdisplayskip \abovedisplayskip
 \abovedisplayshortskip  \z@ plus3pt%
 \belowdisplayshortskip  3.25pt plus 1pt minus 1pt%
 \let\@listi\@listI}
\def\small{\@setsize\small{11pt}\ixpt\@ixpt
 \abovedisplayskip 5.5pt plus 2pt minus 2pt%
 \belowdisplayskip \abovedisplayskip
 \abovedisplayshortskip  \z@ plus3pt%
 \belowdisplayshortskip  3.25pt plus 1pt minus 1pt%
 \def\@listi{\leftmargin\leftmargini
 \topsep 3pt plus 2pt minus 2pt\parsep 2pt plus 1pt minus 1pt
 \itemsep \z@ plus 2pt}}
\def\footnotesize{\@setsize\footnotesize{9pt}\viiipt\@viiipt
 \abovedisplayskip 5pt plus 2pt minus 2pt%
 \belowdisplayskip \abovedisplayskip
 \abovedisplayshortskip \z@ plus 1pt%
 \belowdisplayshortskip 3pt plus 1pt minus 2pt
 \def\@listi{\leftmargin\leftmargini
 \topsep 3pt plus 1pt minus 1pt\parsep 2pt plus 1pt minus 1pt
 \itemsep \z@ plus 2pt}}
\def\scriptsize{\@setsize\scriptsize{8pt}\viipt\@viipt}
\def\tiny{\@setsize\tiny{6pt}\vpt\@vpt}
\def\large{\@setsize\large{14pt}\xiipt\@xiipt}
\def\Large{\@setsize\Large{16pt}\xivpt\@xivpt}
\def\LARGE{\@setsize\LARGE{19pt}\xviipt\@xviipt}
\def\huge{\@setsize\huge{22pt}\xxpt\@xxpt}
\def\Huge{\@setsize\Huge{28pt}\xxvpt\@xxvpt}
\normalsize

%  ****************************************
%  *            PAGE LAYOUT               *
%  ****************************************
%
% All margin dimensions measured from a point one inch from top and side
% of page.
%
% SIDE MARGINS:
%
\oddsidemargin  6pc %5pc
\evensidemargin 5.7pc %5pc
\marginparwidth 4pc
\marginparsep   1pc
\topmargin  12pt %0pt
\headheight 12pt
\headsep    8pt
\footskip   2pc
%
% DIMENSION OF TEXT:
%

\textheight = 45\baselineskip
  %\advance\textheight by \topskip
\addtolength\textheight{3pt}
  \textwidth 28pc
\addtolength\textwidth{.5pt}
%  \textheight = 43\baselineskip
%  %\advance\textheight by \topskip
%\addtolength\textheight{3pt}
%  \textwidth 26pc
%\addtolength\textwidth{.5pt}


\columnsep 1pc
\columnseprule 0pt
%
% FOOTNOTES
%
\footnotesep 6.65pt
\skip\footins 12pt plus 3pt minus 1.5pt
%
% FLOATS
%
%  FOR FLOATS ON A TEXT PAGE:
%    ONE-COLUMN MODE OR SINGLE-COLUMN FLOATS IN TWO-COLUMN MODE:
\floatsep 12pt plus 2pt minus 2pt
\textfloatsep 18pt plus 2pt minus 4pt
\intextsep 12pt plus 2pt minus 2pt

%    TWO-COLUMN FLOATS IN TWO-COLUMN MODE:
\dblfloatsep 12pt plus 2pt minus 2pt
\dbltextfloatsep 18pt plus 2pt minus 4pt

%
%  FOR FLOATS ON A SEPARATE FLOAT PAGE OR COLUMN:
%    ONE-COLUMN MODE OR SINGLE-COLUMN FLOATS IN TWO-COLUMN MODE:
\@fptop 0pt plus 0fil
\@fpsep 12pt plus 0fil
\@fpbot 0pt plus 3fil
%
%   DOUBLE-COLUMN FLOATS IN TWO-COLUMN MODE.
\@dblfptop 0pt plus 0fil
\@dblfpsep 12pt plus 0fil
\@dblfpbot 0pt plus 3fil
%
% MARGINAL NOTES:
%
\marginparpush 5pt

%  ****************************************
%  *           PARAGRAPHING               *
%  ****************************************
%
\parskip 0pt plus .25pt
\parindent 1em
\partopsep 2pt plus 1pt minus 1pt
%
% The following page-breaking penalties are defined
%
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
%
\clubpenalty=0         % 'Club line'  at bottom of page.
\widowpenalty=10000    % 'Widow line' at top of page.
% \displaywidowpenalty % Math display widow line.
% \predisplaypenalty   % Breaking before a math display.
% \postdisplaypenalty  % Breaking after a math display.
% \interlinepenalty    % Breaking at a line within a paragraph.
% \brokenpenalty       % Breaking after a hyphenated line.
%
\def\thin@rule{{\parindent0pt\par\rule{\textwidth}{0.5pt}\par}}
\def\thick@rule{{\parindent0pt\par\rule{\textwidth}{1pt}\par}}

%    ****************************************
%    *        CHAPTERS AND SECTIONS         *
%    ****************************************
%
% DEFINE COUNTERS:
%
\newcounter{part}
\newcounter{chapter}
\newcounter{section}[chapter]
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\def\thepart         {\Roman{part}}
\def\thechapter      {\arabic{chapter}}
\def\thesection      {\thechapter.\arabic{section}}
\def\thesubsection   {\thesection.\arabic{subsection}}
\def\thesubsubsection{\thesubsection .\arabic{subsubsection}}
\def\theparagraph    {\thesubsubsection.\arabic{paragraph}}
\def\thesubparagraph {\theparagraph.\arabic{subparagraph}}
\def\@chapapp{CHAPTER}

%    ****************************************
%    *                 PARTS                *
%    ****************************************
%
\def\part{%
  \cleardoublepage
  \thispagestyle{empty}%
  \if@twocolumn
    \onecolumn \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \secdef\@part\@spart
}
%
% Heading for the \part command.
%
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax
    \refstepcounter{part}%
    \addcontentsline{toc}{part}{\thepart \hspace{1em}#1}%
    \typeout{PART \number\c@part.}%
  \else
    \addcontentsline{toc}{part}{#1}%
  \fi
  \markboth{}{}%
  \vspace*{-17pt}%
  \vbox{\thin@rule\par
    \parindent 0pt \centering
    \vskip 17pt%
    \ifnum \c@secnumdepth >\m@ne
      \normalfont PART \thepart\par
    \else
      \normalfont \phantom{PART \thepart}\par
    \fi
    \vskip 17pt%
    \LARGE \bfseries #1\par
    \nobreak
    \addvspace{-4pt}%
    \thick@rule
    \vskip 25pt}%
  \@endpart
}
%
% Heading for the \part* command.
%
\def\@spart#1{%
  \vspace*{-17pt}%
  \vbox{\thin@rule\par
    \parindent 0pt \centering
    \vskip 17pt%
    \normalfont\phantom{PART \thepart}\par
    \vskip 17pt%
    \LARGE \bfseries #1\par
    \nobreak
    \addvspace{-4pt}%
    \thick@rule
    \vskip 25pt}%
  \@endpart
}
%
% \@endpart finishes the part page.
%
\def\@endpart{%
  \vfil\newpage
  \if@twoside
    \hbox{}%
    \thispagestyle{empty}%
    \newpage
  \fi
  \if@tempswa \twocolumn\fi
}

%    ****************************************
%    *               CHAPTERS               *
%    ****************************************
%
% Chapter text macros
%
\newif\if@chptxt
\newbox\@chptxtbox
%
\def\chaptertext{\global\@chptxttrue\global\setbox\@chptxtbox=\vbox\bgroup%
  \hsize=\textwidth\normalfont\small\noindent\ignorespaces}
\def\endchaptertext{\egroup}
%
% Heading for the \chapter command.
%
\def\@makechapterhead#1{%
  \vspace*{-17pt}%
  \vbox{\thin@rule\par
    \parindent 0pt \centering
    \vskip 17pt%
    \ifnum \c@secnumdepth >\m@ne
      \normalfont \@chapapp{} \thechapter\par
    \else
      \normalfont \phantom{\@chapapp{} \thechapter}\par
    \fi
    \vskip 17pt%
    \LARGE \bfseries #1\par
    \nobreak
    \addvspace{-4pt}%
    \thick@rule
    \if@chptxt
      \addvspace{24pt plus 2pt}\unvbox\@chptxtbox
      \addvspace{6pt}\global\@chptxtfalse
    \else
      \vskip 23.5pt%
    \fi}%
}
%
% Heading for the \chapter* command.
%
\def\@makeschapterhead#1{%
  \vspace*{-17pt}%
  \vbox{\thin@rule\par
    \parindent 0pt \centering
    \vskip 17pt%
    \normalfont\phantom{\@chapapp{} \thechapter}\par
    \vskip 17pt%
    \LARGE \bf #1\par
    \nobreak
    \addvspace{-4pt}%
    \thick@rule
    \if@chptxt
      \addvspace{24pt plus 2pt}\unvbox\@chptxtbox
      \addvspace{6pt}\global\@chptxtfalse
    \else
      \vskip 23.5pt%
    \fi}%
}
%
% \secdef{UNSTARCMDS}{STARCMDS} :
%
\def\chapter{%
  \cleardoublepage
  \thispagestyle{plain}%
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter
}
%
\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \refstepcounter{chapter}%
    \typeout{\@chapapp\space\thechapter.}%
    \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#1}%
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10pt}}%
  \addtocontents{lot}{\protect\addvspace{10pt}}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}\@afterheading
  \fi
}
%
\def\@schapter#1{%
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10pt}}%
  \addtocontents{lot}{\protect\addvspace{10pt}}%
  \thispagestyle{empty}%
%%  \if@nocntentry
%%  \else
%%    \addcontentsline{toc}{chapter}{#1}%
%%  \fi
  \if@twocolumn
    \@topnewpage[\@makeschapterhead{#1}]%
  \else
    \@makeschapterhead{#1}\@afterheading
  \fi
}

%    ****************************************
%    *                SECTIONS              *
%    ****************************************
%
% \@startsection {NAME}{LEVEL}{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}
%            optional * [ALTHEADING]{HEADING}
%
\def\section{\@startsection{section}{1}{\z@}
 {-1.5pc plus -1pt minus -2pt}
 {6pt plus 1pt}
 {\normalsize\bf\raggedright}}
\def\subsection{\@startsection{subsection}{2}{\z@}
 {-1.5pc plus -1pt minus -2pt}
 {6pt plus 1pt}
 {\normalsize\it\raggedright}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}
 {-1.0pc plus -1pt minus -2pt}
 {6pt plus 1pt}
 {\normalsize\it\raggedright}}
\def\paragraph{\@startsection{paragraph}{4}{\z@}
 {3.25pt plus 1pt minus .2pt}
 {-1em}
 {\normalsize\it}}
\def\subparagraph{\@startsection{subparagraph}{4}{\parindent}
 {3.25pt plus 1pt minus.2pt}
 {-1em}
 {\normalsize\normalfont}}
%
% Default initializations of \...mark commands
%
\def\chaptermark#1{}
\setcounter{secnumdepth}{2}
%
% APPENDIX
%
\def\appendix{\par
 \setcounter{chapter}{0}
 \setcounter{section}{0}
 \def\@chapapp{APPENDIX}
 \def\thechapter{\Alph{chapter}}}

%    ****************************************
%    *                LISTS                 *
%    ****************************************
%
\leftmargini   1pc
\leftmarginii  1pc
\leftmarginiii 1pc
\leftmarginiv  1pc
\leftmarginv   1pc
\leftmarginvi  1pc
\leftmargin\leftmargini
\labelsep 0.5em
\labelwidth\leftmargini\advance\labelwidth-\labelsep
\def\@listI{\leftmargin\leftmargini \parsep 3pt plus 1pt minus 1pt%
 \topsep 3pt plus 1pt minus 2pt%
 \itemsep \z@ plus 2pt}
\let\@listi\@listI
\@listi
\def\@listii{\leftmargin\leftmarginii
   \labelwidth\leftmarginii\advance\labelwidth-\labelsep
   \topsep 3pt plus 2pt minus 1pt
   \parsep 2pt plus 1pt minus 1pt
   \itemsep \z@ plus 2pt}
\def\@listiii{\leftmargin\leftmarginiii
    \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
    \topsep 3pt plus 1pt minus 1pt
    \parsep \z@ \partopsep 1pt plus 0pt minus 1pt
    \itemsep \z@ plus 2pt}
\def\@listiv{\leftmargin\leftmarginiv
     \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}
\def\@listv{\leftmargin\leftmarginv
     \labelwidth\leftmarginv\advance\labelwidth-\labelsep}
\def\@listvi{\leftmargin\leftmarginvi
     \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}
%
% ENUMERATE -- with optional argument to set left margin
%
% label macros for Range-Left and Range-Right labels
\def\makeRLlabel#1{\rlap{#1}\hss}
\def\makeRRlabel#1{\hss\llap{#1}}
%
\def\enumerate{\ifnum \@enumdepth >3 \@toodeep \else
  \advance\@enumdepth \@ne
  \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
 \fi
 \@ifnextchar [{\@enumeratetwo}{\@enumerateone}%
}
\def\@enumeratetwo[#1]{%
 \list{\csname label\@enumctr\endcsname}%
  {\settowidth\labelwidth{[#1]}
   \leftmargin\labelwidth \advance\leftmargin\labelsep
   \usecounter{\@enumctr}
   \let\makelabel\makeRRlabel}
}
\def\@enumerateone{%
 \list{\csname label\@enumctr\endcsname}%
  {\usecounter{\@enumctr}
   \let\makelabel\makeRRlabel}}
%
\def\labelenumi{\theenumi}
\def\theenumi{\arabic{enumi}.}
\def\labelenumii{\theenumii}
\def\theenumii{(\alph{enumii})}
\def\p@enumii{\theenumi}
\def\labelenumiii{\theenumiii}
\def\theenumiii{\roman{enumiii}.}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{\theenumiv}
\def\theenumiv{\Alph{enumiv}.}
\def\p@enumiv{\p@enumiii\theenumiii}
%
% ITEMIZE
%
\def\labelitemi{$\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}
%
% VERSE
%
\def\verse{\let\\=\@centercr
  \list{}{\itemsep\z@ \itemindent -1em\listparindent \itemindent
          \rightmargin\leftmargin\advance\leftmargin 1em}\item[]}
\let\endverse\endlist
%
% QUOTATION
%
\def\quotation{\list{}{\listparindent 1em
  \itemindent\listparindent
  \rightmargin\z@
  \parsep 0pt plus 1pt}\item[]\small}
\let\endquotation=\endlist
%
% QUOTE
%
\def\quote{\list{}{\rightmargin\z@}\item[]\small}
\let\endquote=\endlist
%
% DESCRIPTION
%
\def\descriptionlabel#1{\hspace\labelsep \bf #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
       \let\makelabel\descriptionlabel}}
\let\enddescription\endlist
\newdimen\descriptionmargin
\descriptionmargin=3em

%    ****************************************
%    *         OTHER ENVIRONMENTS           *
%    ****************************************
%
% PROOF
\def\proof{\normalfont \trivlist \item[\hskip \labelsep{\itshape Proof.}]}
\def\endproof{\hspace*{1em}{\begin{picture}(6.5,6.5)%
  \put(0,0){\framebox(6.5,6.5){}}\end{picture}}\endtrivlist}
\@namedef{proof*}{\normalfont\trivlist \item[\hskip \labelsep{\itshape 
Proof.}]}
\@namedef{endproof*}{\endtrivlist}
\def\proofbox{\begin{picture}(6.5,6.5)%
  \put(0,0){\framebox(6.5,6.5){}}\end{picture}}
%
% ARRAY AND TABULAR
%
\arraycolsep    5pt
\tabcolsep      6pt
\arrayrulewidth .5pt
\doublerulesep  0pt
%
% TABBING
%
\tabbingsep \labelsep
%
% MINIPAGE
%
% \skip\@mpfootins : plays same role for footnotes in a minipage as
%                    \skip\footins does for ordinary footnotes
\skip\@mpfootins = \skip\footins
\def\thempfootnote{\mbox{{$\fnsymbol{mpfootnote}$}}}
%
% FRAMEBOX
%
\fboxsep = 3pt
\fboxrule = .5pt

%    ****************************************
%    *         TABLE OF CONTENTS, ETC.      *
%    ****************************************
%
\def\@pnumwidth{2.5em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{1}
%
% \@dottedtocline{LEVEL}{INDENT}{NUMWIDTH}{TITLE}{PAGE} :
%
\def\@dottedtocline#1#2#3#4#5{%
 \ifnum #1>\c@tocdepth
 \else
  \vskip \z@ plus .2pt
  {\leftskip #2\relax \rightskip \@tocrmarg plus2em% v.0.16
   \parfillskip -\rightskip
   \parindent #2\relax
   \@afterindenttrue
   \interlinepenalty\@M
   \leavevmode
   \@tempdima #3\relax \advance\leftskip \@tempdima \hbox{}\hskip -\leftskip
   #4\nobreak
% \leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep mu$}
   \hfill \nobreak
   \hbox to\@pnumwidth{\hfil\normalfont #5}\par}%
 \fi
}
% TABLEOFCONTENTS
%
\newif\if@nocntentry
%
\def\tableofcontents{\@restonecolfalse
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \fi
  \@nocntentrytrue
  \chapter*{Contents}%
  \@nocntentryfalse
% \@mkboth{Contents}{Contents}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}

\def\l@chapter#1#2{\pagebreak[3]
   \vskip 12pt plus 1pt
   \@tempdima 1.5em
   \begingroup
     \parindent \z@
     \rightskip \@pnumwidth
     \parfillskip -\@pnumwidth
     \bf \leavevmode
     \advance\leftskip\@tempdima
     \hskip -\leftskip
     {\raggedright #1}\nobreak
     \hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
   \endgroup}
%
\let\l@part=\l@chapter
%
\def\l@section      {\@dottedtocline{1}{15.0pt}{22.5pt}}
\def\l@subsection   {\@dottedtocline{2}{37.5pt}{30.0pt}}
\def\l@subsubsection{\@dottedtocline{3}{67.5pt}{20.0pt}}
\def\l@paragraph    {\@dottedtocline{4}{87.5pt}{20.0pt}}
\def\l@subparagraph {\@dottedtocline{5}{107.5pt}{20.0pt}}
%
% The default width of TOC entries for sections in CHAPMAN.STY
% will only cater for sections with numbers up to 10.9. Numbers larger
% than this result in the section number leaving no space between the
% number and the title.
%
% This can be fixed by placing the \widetocentries command before
% the \tableofcontents command (but after the \documentstyle line).
%
\def\widetocentries{%
  \def\l@section      {\@dottedtocline{1}{15.0pt}{27.5pt}}%
  \def\l@subsection   {\@dottedtocline{2}{42.5pt}{40.0pt}}%
  \def\l@subsubsection{\@dottedtocline{3}{82.5pt}{20.0pt}}%
  \def\l@paragraph    {\@dottedtocline{4}{102.5pt}{20.0pt}}%
  \def\l@subparagraph {\@dottedtocline{5}{120.5pt}{20.0pt}}%
}
%
% LIST OF FIGURES
%
\def\listoffigures{\@restonecolfalse
 \if@twocolumn \@restonecoltrue\onecolumn \fi
 \chapter*{List of Figures}
% \@mkboth{List of Figures}{List of Figures}
 \@starttoc{lof}
 \if@restonecol \twocolumn \fi
}
\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
%
% LIST OF TABLES
%
\def\listoftables{\@restonecolfalse
 \if@twocolumn \@restonecoltrue \onecolumn \fi
 \chapter*{List of Tables}
% \@mkboth{List of Tables}{List of Tables}
 \@starttoc{lot}
 \if@restonecol \twocolumn\fi
}
\let\l@table\l@figure

%    ****************************************
%    *             BIBLIOGRAPHY             *
%    ****************************************
%
\newcounter{dummy}
%
\def\thebibliography#1{%
  \chapter*{References}
% \@mkboth{References}{References}
  \typeout{References.}
  \list{}{\labelwidth\z@
    \leftmargin 1em
    \itemsep \z@ plus .1pt
    \itemindent-\leftmargin
  \usecounter{dummy}}
  \small
  \parindent\z@
  \parskip\z@ plus .1pt\relax
  \def\newblock{\hskip .11em plus .33em minus .07em}
  \sloppy\clubpenalty4000\widowpenalty4000
  \sfcode`\.=1000\relax
}

\let\endthebibliography=\endlist

% \def\@biblabel#1{[#1]\hfill}
% \def\@cite#1{[#1]}

%    ****************************************
%    *              THE INDEX               *
%    ****************************************
%
% The theindex, theauthorindex and thesubjectindex environment's
%
\newif\if@restonecol
\newif\if@royalflag

\def\theindex{\the@index{Index}}
\def\endtheindex{\par\endthe@index}
\def\theauthorindex{\the@index{Author index}}
\def\endtheauthorindex{\par\endthe@index}
\def\thesubjectindex{\the@index{Subject index}}
\def\endthesubjectindex{\par\endthe@index}

\def\the@index#1{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
 \columnseprule \z@
 \columnsep 1pc%
 %%\twocolumn[\vspace*{11pt}\@makeschapterhead{#1}]%
 \twocolumn[\vspace*{11pt}]
 \if@royalflag % If royal 1 or 2 is in use
   \chapter*{Index}%
   %%TH \@mkboth{#1}{#1}%
 \else
   \chapter*{Index}%
   %%TH \@mkboth{\uppercase{#1}}{\uppercase{#1}}%
 \fi
 \typeout{#1.}%
 %%TH \addcontentsline{toc}{chapter}{#1}%
 %%TH \thispagestyle{empty}%
 \parindent\z@
 \parskip\z@ plus .3pt%
 \small\raggedright
 \relax
 \let\item\@idxitem
}

\def\endthe@index{\if@restonecol\onecolumn\else\clearpage\fi}

\def\@idxitem{\par\hangindent 10pt}
\def\subitem{\par\hangindent 20pt \hspace*{10pt}}
\def\subsubitem{\par\hangindent 30pt \hspace*{20pt}}
\def\indexspace{\par\vskip 16pt plus 2pt minus 2pt\relax}


%    ****************************************
%    *             FOOTNOTES                *
%    ****************************************
%
\newskip\@footindent
\@footindent=1em

\def\footnoterule{\kern-3\p@ \hrule width 0\columnwidth \kern 2.6\p@}

\@addtoreset{footnote}{chapter}

\long\def\@makefntext#1{\@setpar{\@@par\@tempdima \hsize
 \advance\@tempdima-\@footindent
 \parshape \@ne \@footindent \@tempdima}\par
 \noindent \hbox to \z@{\hss$^{\@thefnmark}$\ }#1}

\renewcommand{\thefootnote}{\mbox{{$\fnsymbol{footnote}$}}}

\def\@fnsymbol#1{\ifcase#1\or * \or \dagger\or \ddagger\or
   \S \or \P \or \|\or **\or \dagger\dagger
   \or \ddagger\ddagger \or \S\S \or \P\P \else\@ctrerr\fi\relax}


%    ****************************************
%    *         FIGURES AND TABLES           *
%    ****************************************
%
% Float placement parameters.
%
\setcounter{topnumber}{2}
\def\topfraction{.9}
\setcounter{bottomnumber}{2}
\def\bottomfraction{.5}
\setcounter{totalnumber}{4}
\def\textfraction{.1}
\def\floatpagefraction{.8}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.9}
\def\dblfloatpagefraction{.8}
%
% \@makecaption{NUMBER}{TEXT} : Macro to make a figure or table caption.
%

%\long\def\@makecaption#1#2{%
%   \vskip 10pt%
%   \setbox\@tempboxa\hbox{\small \normalfont #1\enskip \itshape #2}%
%   \ifdim \wd\@tempboxa >\hsize
%       \small \normalfont #1\enskip \itshape #2\par
%     \else
%       \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
%   \fi%
%}

\long\def\@makecaption#1#2{%
   \vskip 10pt%
   \setbox\@tempboxa\hbox{\small \normalfont #1\unskip\hskip10pt #2}%
   \ifdim \wd\@tempboxa >\hsize
\small \normalfont 
\@hangfrom{#1\unskip\hskip10pt\ignorespaces}#2\par
     \else
       \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
   \fi%
}

%
% FIGURE
%
\newcounter{figure}[chapter]
\def\thefigure{\thechapter.\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{{\bf Figure \thefigure}}
\def\figure{\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
%
% TABLE
%
\newcounter{table}[chapter]
\def\thetable{\thechapter.\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{{\bf Table \thetable}}
\def\table{\@float{table}}
\let\endtable\end@float
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

%    ****************************************
%    *                TITLE                 *
%    ****************************************
%
% TITLEPAGE
%
\def\titlepage{\@restonecolfalse
 \if@twocolumn \@restonecoltrue\onecolumn
         \else \newpage
 \fi
 \thispagestyle{empty}
}
\def\endtitlepage{\if@restonecol\twocolumn \else \newpage \fi}
%
\def\maketitle{\make@cornermarks\begin{titlepage}
  \let\footnotesize\small
  \let\footnoterule\relax
  \setcounter{page}{1}
  \null
  \vspace*{-17pt}%
  {\parindent 0pt \centering
   \par
   \LARGE \bfseries \@title
   \par
   \nobreak
   \vskip 0pt
   \thick@rule
   \vskip 25pt
   \par
   \large \normalfont
   \begin{tabular}[t]{c}
     \@author
   \end{tabular}\par
  }
  \vfill
  \@thanks
  \null
 \end{titlepage}
 \setcounter{footnote}{0}
 \let\thanks\relax
 \gdef\@thanks{}
 \gdef\@author{}
 \gdef\@title{}
 \let\maketitle\relax
}

%    ****************************************
%    *            PAGE STYLES               *
%    ****************************************

\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifodd\c@page
    \else
      \hbox{}%
      \pagestyle{empty}%
      \newpage
      \if@twocolumn
        \hbox{}%
        \newpage\fi\fi\fi}
\newdimen\htrim
\newdimen\vtrimtop
\newdimen\vtrimbot
%  \htrim.75in
%  \vtrimtop.8607in
%  \vtrimbot1.027in
%  \hoffset-.49in
%  \voffset-.63in%.04in
  \htrim4.42pc
  \vtrimtop6.26pc
  \vtrimbot6.37pc
%  \hoffset-5pt
  \voffset39pt
%\fi
\newsavebox\ul@box
\newsavebox\ur@box
\newsavebox\ll@box
\newsavebox\lr@box
\def\top@cornermarks{%
  \hskip-\htrim
  \vbox to 0\p@{\vskip-\vtrimtop\llap{\copy\ul@box}\vss}%
  \vbox to 0\p@{\vskip-\vtrimtop\rlap{\hskip\textwidth\hskip2\htrim\copy\ur@box}\vss}%
  \vbox to 0\p@{\vskip\textheight\vskip\vtrimbot\llap{\copy\ll@box}\vss}%
  \vbox to 0\p@{\vskip\textheight\vskip\vtrimbot\rlap{\hskip\textwidth\hskip2\htrim\copy\lr@box}\vss}%
  \hskip\htrim}
\def\make@cornermarks{%
  \sbox\ul@box{\rule{18\p@}{.25\p@}\hskip8\p@\hbox to.25\p@{\vbox to26\p@{\noindent\rule{.25\p@}{18\p@}}}}%
  \sbox\ur@box{\hbox to.25\p@{\vbox to26\p@{\noindent\rule{.25\p@}{18\p@}}}\hskip8\p@\rule{18\p@}{.25\p@}}%
  \sbox\ll@box{\rule{18\p@}{.25\p@}\hskip8\p@\lower34\p@\hbox to.25\p@{\vbox to26\p@{\noindent\rule{.25\p@}{18\p@}}}}%
  \sbox\lr@box{\lower34\p@\hbox to.25\p@{\vbox to26\p@{\noindent\rule{.25\p@}{18\p@}}}\hskip8\p@\rule{18\p@}{.25\p@}}}
\def\even@head{%
\top@cornermarks
    \@the@page
{%\RunningHeadFont
\hfil
{%\MakeUppercase
\leftmark
}
    }}%\hfil
\def\odd@head{%
\top@cornermarks
  {%\RunningHeadFont
{%\MakeUppercase
\rightmark
}
    }
\hfil
    \@the@page
  }
\def\@the@page{{\thepage}}
%\def\@the@page{{\PageNumFont\thepage}}
\def\ps@empty{%
  \let\@mkboth\@gobbletwo
    \let\@oddhead\top@cornermarks
    \let\@evenhead\top@cornermarks
    \let\@oddfoot\@empty
    \let\@evenfoot\@empty
  }
\def\ps@folio{%
  \let\@mkboth\@gobbletwo
\let\@oddhead\top@cornermarks
    \def\@oddfoot{%
      \parindent\z@
      \baselineskip7\p@
      \hbox{%
        \textwidth\@ciprulewidth
        \vbox{%
          \if@cip\rule{\@ciprulewidth}{.25pt}\par
            \hbox{\vbox{\noindent\copy\@cipboxa\par\noindent\copy\@cipboxb}}\fi}}
      \hfill\@the@page}
    \let\@evenhead\odd@head
    \let\@evenfoot\@oddfoot
  }
\def\ps@headings{%
  \let\@mkboth\@gobbletwo
\let\@oddfoot\@empty
\let\@evenfoot\@empty
    \let\@evenhead\even@head
    \let\@oddhead\odd@head
\def\chaptermark##1{\markboth {\uppercase{##1}}{\uppercase{##1}}}
\def\sectionmark##1{\markright{\uppercase{##1}}}
  }
\def\ps@opening{%
  \let\@mkboth\@gobbletwo
    \make@cornermarks
    \let\@oddhead\top@cornermarks
    \let\@evenhead\top@cornermarks
    \def\@oddfoot{%
      \parindent\z@
      \baselineskip7\p@
      \hbox{%
        \textwidth\@ciprulewidth
        \vbox{%
          \if@cip\rule{\@ciprulewidth}{.25pt}\par
            \hbox{\vbox{\noindent\copy\@cipboxa\par\noindent\copy\@cipboxb}}\fi}}
      \hfill\@the@page}
    \let\@evenfoot\@oddfoot
  }


%
% Initializes TeX's marks
%
\mark{{}{}}
%
% \ps@empty and \ps@plain defined in LATEX.TEX
%
\def\ps@plain{%
     \let\@mkboth\@gobbletwo
     \let\@oddhead\top@cornermarks
    \let\@evenhead\top@cornermarks
     \def\@oddfoot{\hfil{\footnotesize\rm \thepage}\hfil}%
     \def\@evenfoot{\hfil{\footnotesize\rm \thepage}\hfil}%
}
%
%
% Definition of 'headings' page style
%
%\def\ps@headings{\let\@mkboth\markboth
% \def\@oddhead{\footnotesize\normalfont \rightmark \hfill \thepage}
% \def\@oddfoot{}
% \def\@evenhead{\footnotesize\normalfont \thepage \hfill \leftmark}
% \def\@evenfoot{}
% \def\chaptermark##1{\markboth {\uppercase{##1}}{\uppercase{##1}}}
% \def\sectionmark##1{\markright{\uppercase{##1}}}
%}
%
% Definition of 'myheadings' page style.
%
\def\ps@myheadings{\let\@mkboth\@gobbletwo
 \def\@oddhead{\footnotesize\normalfont \rightmark \hfill \thepage}
 \def\@oddfoot{}
 \def\@evenhead{\footnotesize\normalfont\thepage \hfill \leftmark}
 \def\@evenfoot{}
 \def\chaptermark##1{}
% \def\sectionmark##1{}
% \def\subsectionmark##1{}
}

%    ****************************************
%    *            MISCELLANEOUS             *
%    ****************************************
%
% DATE
%
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
%
% EQUATION and EQNARRAY -- put here because it must follow \chapter definition
%
\@addtoreset{equation}{chapter}
\def\theequation{\thechapter.\arabic{equation}}
% \jot = 3pt % Extra space added between lines of an eqnarray environment

%    ****************************************
%    *            CUP SPECIALS              *
%    ****************************************
%
% cleardoublepage with empty page
%
\def\cleardoublepage{\clearpage
 \if@twoside \ifodd \c@page
             \else  \thispagestyle{empty}
                    \hbox{}\newpage
                    \if@twocolumn \thispagestyle{plain}\hbox{}\newpage
                    \fi
             \fi
 \fi}
%
% redefinition of sections to get en space after chapter number
%
\def\@sect#1#2#3#4#5#6[#7]#8{%
 \ifnum #2>\c@secnumdepth
  \def\@svsec{}%
 \else
  \refstepcounter{#1}
%  \ifnum #2>1
%   \edef\@svsec{{\normalfont \csname the#1\endcsname\hskip 0.5em}}
%  \else
   \edef\@svsec{\csname the#1\endcsname\hskip 0.5em}
%  \fi
 \fi
 \@tempskipa #5\relax
 \ifdim \@tempskipa>\z@
  \begingroup #6\relax
   \@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty \@M #8\par}
  \endgroup
  \csname #1mark\endcsname{#7}%
  \addcontentsline{toc}{#1}{\ifnum #2>\c@secnumdepth \else
   \protect\numberline{\csname the#1\endcsname}\fi #7}
 \else
  \def\@svsechd{#6\hskip #3\@svsec #8\csname #1mark\endcsname
    {#7}\addcontentsline{toc}{#1}{\ifnum #2>\c@secnumdepth \else
      \protect\numberline{\csname the#1\endcsname}\fi#7}}%
 \fi
 \@xsect{#5}}
%
% redefinition of \hline to get extra space
%
\def\hline{\noalign{\ifnum0=`}\fi \vskip 6pt
 \hrule \@height \arrayrulewidth \vskip 6pt
 \futurelet \@tempa\@xhline}
\def\@xhline{\ifx\@tempa\hline \vskip -12pt
 \vskip \doublerulesep \fi \ifnum0=`{\fi}}
%
% redefinition of tabular to get rid of vertical lines in tables
%
\def\tabular{\def\@halignto{}
 \def\hline{\noalign{\ifnum0=`}\fi
  \vskip 3pt
  \hrule \@height \arrayrulewidth
  \vskip 3pt
  \futurelet \@tempa\@xhline}
 \def\@xhline{\ifx\@tempa\hline
   \vskip -6pt
   \vskip \doublerulesep
  \fi
  \ifnum0=`{\fi}}
  \def\@arrayrule{\@addtopreamble{\hskip -.5\arrayrulewidth
%                                  \vrule \@width \arrayrulewidth
                                  \hskip .5\arrayrulewidth}}
\@tabular
}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand{\mit}{\@fontswitch{\relax}{\mathnormal}}

\RequirePackage{latexsym}


%    ****************************************
%    *           INITIALIZATION             *
%    ****************************************
%
% Default initializations
\ps@headings
\pagenumbering{arabic}
\onecolumn
\frenchspacing
\flushbottom

% end of chapman.sty
