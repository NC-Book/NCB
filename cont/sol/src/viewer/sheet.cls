\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{exercise}
\LoadClass[12pt]{article}

\RequirePackage[a4paper,top=2.5cm,bottom=2.5cm,left=2cm,right=2cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{amssymb}
\RequirePackage{amsmath}

\newsavebox{\solutionbuffer}


\newcommand{\thesheet}{0}
\newcommand{\sheet}[1]{\renewcommand{\thesheet}{#1}}
\newcounter{exercise}
\newcounter{subquestion}[exercise]
\newcounter{subsubquestion}[subquestion]
\renewcommand{\thesubquestion}{\alph{subquestion}}
\renewcommand{\thesubsubquestion}{\alph{subquestion}}

\newif{\ifinsolution}
\newif\ifshowsolutions
\showsolutionsfalse
\insolutionfalse

\newcommand{\oldquestioncolor}{black}
\newcommand{\solutioncolor}{blue!30!black}
\color{black}

\newcommand{\spaceout}[3]{
\ifx&#1&%
\let#2\empty
\else\def#2{#1\par\hspace{#3}}
\fi}
\newcommand{\spacewherebelongs}[1]{\if@nobreak \par\noindent\ignorespaces \else \par\vspace{#1}\par\noindent\ignorespaces \fi}

\newcommand{\theType}{Exercise Sheet}
\newcommand{\theUnit}{Networks and Complexity}
\newcommand{\theTopic}{Use \textbackslash topic\{\textit{num}\} to set the topic of the exercise sheet}
\newcommand{\theInstructions}{}

\newcommand{\unit}[1]{\renewcommand{\theUnit}{#1}}
\newcommand{\topic}[1]{\renewcommand{\theTopic}{#1}}
\newcommand{\instructions}[1]{\spaceout{#1}{\theInstructions}{1.6em}}
\newcommand{\showsolutions}{\showsolutionstrue}
\newcommand{\extype}[1]{\renewcommand{\theType}{#1}}

\newcommand{\rendersolution}{
\ifshowsolutions
\spacewherebelongs{\topsep}%
{\color{\solutioncolor}\underline{\it Solution}}
\vspace{2mm}\par\noindent\ignorespaces
\unvbox\solutionbuffer
\usebox\solutionbuffer
\fi
}

\newcommand{\qqq}{\quad\quad\quad}

\newcommand{\solutionend}{
\ifinsolution%
\egroup
\insolutionfalse
\rendersolution
\else \fi
\color{\oldquestioncolor}
}

\newcommand{\exercise}[2]{
\ifinsolution \solutionend \fi
\refstepcounter{exercise}
\setlength{\leftskip}{0cm}
\spacewherebelongs{\topsep}
{\bf Ex \thesheet .\theexercise : #1}\nopagebreak
\vspace{0.2em}\nopagebreak\par\nopagebreak\noindent\nopagebreak\ignorespaces
}

\newcommand{\subquestion}{%
\stepcounter{subquestion}%
\ifinsolution\solutionend\fi%
\par\noindent\ignorespaces%
\setlength{\leftskip}{1.0cm}%
\llap{\makebox[1.0cm]{\thesubquestion )}}\ignorespaces%
}

\newcommand{\subsubquestion}{%
\stepcounter{subsubquestion}%
\ifinsolution\solutionend\fi%
\par\noindent\ignorespaces%
\setlength{\leftskip}{2.0cm}%
\noindent\llap{\makebox[1.0cm]{\thesubsubquestion)}}\ignorespaces%
}

\newcommand{\solution}{
\ifinsolution \solutionend \fi
\setbox\solutionbuffer=\vbox\bgroup%
\colorlet{\oldquestioncolor}{.}%
\color{\solutioncolor}%
\insolutiontrue\par\noindent\ignorespaces
}

\let\oldsection\section
\renewcommand{\section}{%
\ifinsolution\solutionend\fi%
\setlength{\leftskip}{0cm}%
\oldsection%
}

\renewcommand{\maketitle}{
\begin{center}
{\large \sc \theUnit}\par\vspace{1em}
{\Large \theType{} \thesheet: \theTopic}\par\vspace{1.6em} 
{\it \theInstructions}
\end{center}
}

\AtEndDocument{
\ifinsolution\solutionend\fi%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\theenumi}{\alph{enumi}}
\newcommand{\eq}[1]{\begin{equation}#1\end{equation}}
\newcommand{\eqn}[1]{\begin{displaymath}#1\end{displaymath}}
\newcommand{\eqa}[1]{\begin{eqnarray}#1\end{eqnarray}}
\newcommand{\eqan}[1]{\begin{eqnarray*}#1\end{eqnarray*}}
\renewcommand{\exp}[1]{{\rm e}^{#1}}
\renewcommand{\vec}[1]{\boldsymbol{#1}}
\newcommand{\mat}[1]{{\bf #1}}
\newcommand{\avec}[1]{\left(\begin{array}{c}#1\end{array}\right)}
\newcommand{\avecc}[1]{\left(\begin{array}{c c}#1\end{array}\right)}
\newcommand{\aveccc}[1]{\left(\begin{array}{c c c}#1\end{array}\right)}
\newcommand{\avecccc}[1]{\left(\begin{array}{c c c c}#1\end{array}\right)}
\newcommand{\aveccccc}[1]{\left(\begin{array}{c c c c c}#1\end{array}\right)}
\newcommand{\avecccccc}[1]{\left(\begin{array}{c c c c c c}#1\end{array}\right)}
\newcommand{\colvec}[1]{(#1)^{\rm T}}
\newcommand{\dxdt}{\frac{{\rm d}x}{{\rm d}t}}

\newcommand{\exref}[1]{Ex.~\thesheet.\ref{#1}}

\usepackage{graphicx}
\usepackage{rotating}
\usepackage{censor}
\usepackage{enumitem}

% Colors 
\definecolor{bristolred}{RGB}{191,47,56}
\definecolor{darkred}{RGB}{192,0,0}
\definecolor{darkgreen}{RGB}{64,128,32}
\definecolor{darkblue}{RGB}{0,0,128}

% Coloured text
\def\rtext#1{{\color{darkred}#1}}
\def\gtext#1{{\color{darkgreen}#1}}
\def\btext#1{{\color{darkblue}#1}}
\def\stext#1{{\color{structure.fg}#1}}

\newcommand{\detc}[1]{\left|\begin{array}{c}#1\end{array}\right|}
\newcommand{\detcc}[1]{\left|\begin{array}{c c}#1\end{array}\right|}
\newcommand{\detccc}[1]{\left|\begin{array}{c c c}#1\end{array}\right|}
\newcommand{\detcccc}[1]{\left|\begin{array}{c c c c}#1\end{array}\right|}

% Some extra mathematical operators
\DeclareMathOperator{\e}{e}
\DeclareMathOperator{\cosec}{cosec}

% Use the nice looking epsilon
\def\epsilon{\varepsilon}

% Small gap to use between items
\newcommand{\nl}{~\\\medskip}

% Useful shortcuts
\def\Real{\mathbb{R}}
\def\Complex{\mathbb{C}}
\def\Integer{\mathbb{Z}}
\def\Natural{\mathbb{N}}
\def\diff#1#2{\frac{\md #1}{\md #2}}
\def\ddiff#1#2{\frac{\md^2 #1}{\md #2^2}}
\def\pdiff#1#2{\frac{\partial #1}{\partial #2}}
\def\etal{\textit{et al.}}
\def\bb#1{\left(#1\right)}
\def\sb#1{\left[#1\right]}
\def\abs#1{\left\lvert #1\right\rvert}
\def\norm#1{\left\lvert #1\right\rvert}
\def\ddt{\frac{{\rm d}}{{\rm d} t}}
\def\ppx{\frac{\partial}{\partial x}}
\def\ppxs#1{\left. \frac{\partial}{\partial x} #1 \right|_* }
\def\eqnas#1{\begin{eqnarray*}#1\end{eqnarray*}}
\def\eqs#1{\begin{eqnarray}#1\end{eqnarray}}
\def\pps#1#2{\left. \frac{\partial}{\partial #2} #1 \right|_*}
\newcommand{\nchosek}[2]
{\left(\begin{array}{c} #1 \\ #2 \end{array}\right)}

\renewcommand{\exp}[1]
{
{\rm e}^{#1}
}
\renewcommand{\eqn}[1]{\begin{displaymath}#1\end{displaymath}}
\renewcommand{\eq}[1]{\begin{equation}#1\end{equation}}
\renewcommand{\eqa}[1]{\begin{eqnarray}#1\end{eqnarray}}
\renewcommand{\eqan}[1]{\begin{eqnarray*}#1\end{eqnarray*}}

\newcommand{\oo}{$\infty$}
\newcommand{\sw}[1]{\begin{sideways}#1\end{sideways}}

\renewcommand{\vec}[1] {\boldsymbol{#1}}
\renewcommand{\Re}[1]{{\rm Re}(#1)}

\newcommand{\pic}[2]{
\begin{center}
\includegraphics[width=#2\textwidth]{#1}\\
\end{center}
}
\newcommand{\picxllean}[1]{
\includegraphics[width=\textwidth]{#1}\\
}
\newcommand{\picxl}[2]{
\begin{center}
\includegraphics[width=\textwidth]{#1}\\
#2
\end{center}
}
\newcommand{\pics}[2]{
\begin{center}
\includegraphics[width=0.45\textwidth]{#1}\\
#2
\end{center}
}
\newcommand{\picxs}[2]{
\begin{center}
\includegraphics[width=0.3\textwidth]{#1}\\
#2
\end{center}
}
\newcommand{\picm}[2]{
\begin{center}
\includegraphics[width=0.7\textwidth]{#1}\\
#2
\end{center}
}
\newcommand{\X}{$\checkmark$}
\newcommand{\0}{{\color{gray}0}}
\newcommand{\dx}{{\rm d}x}
\newcommand{\dt}{{\rm d}t}
\newcommand{\vs}[2]{#2}

\graphicspath{{.}{./figs/}}

\makeatletter
\newsavebox\myboxA
\newsavebox\myboxB
\newlength\mylenA

\newcommand{\padzero}[1]{%
  \ifnum#1<10 0\fi%
  #1%
}

\newcommand{\showsheet}[1]{
  \sheet{#1}
  \input{../chap\padzero{#1}/ex_\padzero{#1}.tex}
}


\newcommand*\xoverline[2][0.75]{%
    \sbox{\myboxA}{$\m@th#2$}%
    \setbox\myboxB\null% Phantom box
    \ht\myboxB=\ht\myboxA%
    \dp\myboxB=\dp\myboxA%
    \wd\myboxB=#1\wd\myboxA% Scale phantom
    \sbox\myboxB{$\m@th\overline{\copy\myboxB}$}%  Overlined phantom
    \setlength\mylenA{\the\wd\myboxA}%   calc width diff
    \addtolength\mylenA{-\the\wd\myboxB}%
    \ifdim\wd\myboxB<\wd\myboxA%
       \rlap{\hskip 0.5\mylenA\usebox\myboxB}{\usebox\myboxA}%
    \else
        \hskip -0.5\mylenA\rlap{\usebox\myboxA}{\hskip 0.5\mylenA\usebox\myboxB}%
    \fi}
\makeatother





