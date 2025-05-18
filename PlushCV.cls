% PlushCV.cls
% --------------------------------------------
% CV class for LaTeX resumes
% --------------------------------------------

\ProvidesClass{plushcv}[2021/11/30 CV class]
\NeedsTeXFormat{LaTeX2e}

% ---- Class Options ----
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% ---- Essential Packages ----
% Layout and spacing
\usepackage[lmargin=0.9cm, vmargin=0.85cm, rmargin=0.9cm]{geometry}
\usepackage[document]{ragged2e}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage{titlesec}
\usepackage[absolute]{textpos}

% Colors and hyperlinks
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}

% Symbols and icons
\usepackage{pifont}

% Citations
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% ---- Color Definitions ----
\definecolor{date}{HTML}{666666}
\definecolor{title}{HTML}{1D76E2}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% ---- Font Definitions ----
% Main font: Inter (edit here to change globally)
\usepackage{fontspec}
\def \pathmainfont {fonts/inter/}
\def \mainfont {inter-light}
\def \mainfontbold {inter-semibold}
\def \mainfontsize {9.5}
\def \mainsansfont {inter-light}

% Title font: Source Sans Pro (edit here to change globally)
\def \pathtitlefont {fonts/sourcesanspro/} 
\def \firstnamefont {sourcesanspro-SemiBold}
\def \secondnamefont {sourcesanspro-light}
\def \titlefont {\firstnamefont}
\def \namefontsize {9.5}

% Subheading font
\def \pathsubheadingfont {\pathtitlefont}
\def \subheadingfont {\titlefont}
\def \subheadingsize {12}

% Descriptor and location font
\def \pathdescriptorfont {\pathsubheadingfont}
\def \descriptorfont {\secondnamefont}
\def \descriptorsize {10}
\def \pathlocationfont {\pathsubheadingfont}
\def \locationfont {\subheadingfont}
\def \locationsize {8pt}

% Monospace font for contact line
\def \pathmonofont {fonts/officecodeprod/}
\def \monofont {OfficeCodeProD-Light}

% Set main and sans fonts
\setmainfont[Color=primary, Path=\pathmainfont, BoldFont=\mainfontbold, UprightFeatures={SizeFeatures={Size=\mainfontsize}}, BoldFeatures={SizeFeatures={Size=\mainfontsize}}]{\mainfont}
\setsansfont[Scale=MatchLowercase, Mapping=tex-text, Path=\pathmainfont, UprightFeatures={SizeFeatures={Size=\mainfontsize}}]{\mainsansfont}

% ---- Date Command ----
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = \pathmainfont]{\mainfont}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% ---- Name Section ----
\newcommand{\namesection}[4]{
\RaggedRight{
\color{title}
\fontsize{50pt}{60pt}
\fontspec[Path = \pathtitlefont]{\firstnamefont}\selectfont #1 
\fontspec[Path = \pathtitlefont]{\secondnamefont}\selectfont #2
} \\[5pt]

\noindent\makebox[\linewidth]{\color{title}\rule{\paperwidth}{0pt}}
\vspace{-15pt}

\RaggedRight{\fontspec[Path = \pathmonofont]{\monofont}\fontsize{14pt}{14pt}\selectfont #3}

\noindent\makebox[\linewidth]{\color{title}\rule{\paperwidth}{0pt}}
\vspace{-15pt}

\RaggedRight{\fontspec[Path = \pathmonofont]{\monofont}\fontsize{10pt}{14pt}\selectfont #4}

\noindent\makebox[\linewidth]{\color{title}\rule{\paperwidth}{0pt}}
\vspace{-15pt}
}

% ---- Section Formatting ----
\titlespacing{\section}{0pt}{5pt}{5pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{5pt}}

\titleformat{\section}{\color{title}
\scshape\fontspec[Path = \pathtitlefont]{\titlefont}\fontsize{16pt}{24pt}\selectfont \raggedright}{}{0em}{}

\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = \pathsubheadingfont ]{\subheadingfont}\fontsize{\subheadingsize}{14pt}\selectfont\bfseries\uppercase}{}{0em}{}

% ---- Subheadings and Descriptors ----
\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = \pathsubheadingfont ]{\subheadingfont}\fontsize{\subheadingsize}{14pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = \pathdescriptorfont]{\descriptorfont}\fontsize{\descriptorsize}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = \pathlocationfont]{\locationfont}\fontsize{\locationsize}{12pt}\selectfont {#1\\} \normalfont}

% ---- Contact Line ----
\newcommand{\contactline}[5]{\begingroup
\setbox0=\hbox{
\includegraphics[scale=0.5,trim={0cm 0.2cm 0cm 0cm}]{icons/main/home-simple.png}  {#1}\hspace{0.3cm}
\includegraphics[scale=0.5,trim={0cm 0.2cm 0cm 0cm}]{icons/main/github-circle.png} {#2}\hspace{0.3cm}
\includegraphics[scale=0.5,trim={0cm 0.2cm 0cm 0cm}]{icons/main/linkedin.png} {#3}\hspace{0.3cm}
\includegraphics[scale=0.5,trim={0cm 0.2cm 0cm 0cm}]{icons/main/mail.png} {#4}\hspace{0.3cm}
\includegraphics[scale=0.5,trim={0cm 0.2cm 0cm 0cm}]{icons/main/phone-income.png} {#5}
}\parbox{\wd0}{\box0}\endgroup}

% ---- Inline Centered Logo ----
\newcommand{\vcenteredinclude}[2]{\begingroup
\setbox0=\hbox{\includegraphics[scale=0.10,trim={0 0.7cm 0cm 0cm}]{#1} {#2}}
\parbox{\wd0}{\box0}\endgroup}

% ---- Bullet Lists with Fewer Gaps ----
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}[label=\ding{212}]\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% ---- Font Options (Commented for Reference) ----
% To change fonts, edit the font blocks above or uncomment and adjust as needed.

