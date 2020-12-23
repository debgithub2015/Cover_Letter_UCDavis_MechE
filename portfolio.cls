\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{portfolio}[2005/06/15 Timo Thonhauser portfolio class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[11pt]{article}


\usepackage{fancyhdr}
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage[top=1in,includehead,letterpaper]{geometry}
\usepackage{calc}
\usepackage{ifthen}
\usepackage[bf,sf,small]{caption}
\usepackage{floatflt}
\usepackage{hyperref}
\hypersetup{colorlinks,
citecolor=blue
linkcolor = blue,
anchorcolor = blue,
citecolor = blue,
filecolor = blue,
urlcolor = blue
}

\newfont{\header}{cmssq8}
\newfont{\sheader}{cmssq6}


\newboolean{ResearchSchool}      \ResearchSchooltrue
\newboolean{PhysicsDepartment}   \PhysicsDepartmentfalse
\newboolean{ChemistryDepartment} \ChemistryDepartmenttrue
\newboolean{MSEDepartment}       \MSEDepartmentfalse
\newboolean{USSchool}            \USSchooltrue
\newboolean{LettersRequest}      \LettersRequesttrue

\newcommand{\ifResearch}[1]{\ifthenelse{\boolean{ResearchSchool}}{{#1}}{}}
\newcommand{\ifTeaching}[1]{\ifthenelse{\NOT{\boolean{ResearchSchool}}}{{#1}}{}}
\newcommand{\ifPhysics}[1]{\ifthenelse{\boolean{PhysicsDepartment}}{{#1}}{}}
\newcommand{\ifChemistry}[1]{\ifthenelse{\boolean{ChemistryDepartment}}{{#1}}{}}
\newcommand{\ifMSE}[1]{\ifthenelse{\boolean{MSEDepartment}}{{#1}}{}}
\newcommand{\ifUS}[1]{\ifthenelse{\boolean{USSchool}}{{#1}}{}}
\newcommand{\ifLetters}[1]{\ifthenelse{\boolean{LettersRequest}}{{#1}}{}}

\newcommand{\arialbf}{\bfseries\sffamily}
\newcommand{\sbullet}{{\tiny\raisebox{0.4ex}[0in][0in]{$\bullet$}}}
\newcommand{\lastpage}{\pageref{lastpage}}

\newcommand{\pagecount}{\@ifundefined{r@lastpage}{}{%
\ifthenelse{\equal{\lastpage}{1}}{}{\normalsize\normalfont\sffamily%
\thepage\smash{/}\lastpage}}}

\newcommand{\letterhead}{%
\begin{minipage}[b]{2in}\includegraphics[width=2.0in]{wfu_logo.jpg}\end{minipage}\hfill%
\begin{minipage}[b]{4in}\header\raggedleft%
Research Assistant Professor \sbullet\ Department of Physics\\[-0.7ex]
Wake Forest University \sbullet\ Olin Physics Buliding -- 303 C\\[-0.7ex]
1834 Wake Forest Road  \sbullet\ Winston-Salem \sbullet\ NC 27109 \sbullet\ USA\\[-0.7ex]
\href{https://thonhauser.physics.wfu.edu/Main/DebajitChakraborty}{www.wfu.edu/\symbol{126}chakrad} \sbullet\ \href{mailto:chakrad@wfu.edu}{debajitc@gmail.com} \sbullet\ (352) 363\,4191%
\end{minipage}\\[-0.12in]\hrule\par}

\renewcommand{\title}[1]{\thispagestyle{empty}%
{\vspace*{1in}\bfseries\sffamily\LARGE\noindent Debajit Chakraborty\\[0.75ex]%
#1\hfill\pagecount}\vspace{1ex}\hrule%
\lhead{\sffamily Debajit Chakraborty, \MakeLowercase{#1}}}

\renewcommand{\section}{\@startsection{section}{4}{\z@}%
{-3.5ex \@plus -1ex \@minus -.2ex}{2ex \@plus.2ex}%
{\normalfont\Large\bfseries\sffamily}}

\renewcommand{\descriptionlabel}[1]{\hspace{\labelsep}\bfseries\sffamily #1}


\chead{}
\rhead{\sffamily\thepage/\pageref{lastpage}}
\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}


\setlength{\tabcolsep}{0in}
\addtolength{\headheight}{2.5pt}
