% bernard-resume-ats.cls
% Custom LaTeX class for Bernard's ATS-friendly resume

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bernard-resume-ats}[2025/05/20 Custom class for Bernard's resume]

% Load base class
\LoadClass[letterpaper,10pt]{article}

% Essential packages
\RequirePackage[empty]{fullpage}
\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage[english]{babel}
\RequirePackage{tabularx}
\RequirePackage{amsmath}
\RequirePackage{soul}
\RequirePackage[margin=0.5in]{geometry}
\RequirePackage[default]{sourcesanspro}
\RequirePackage{subfiles}
\RequirePackage{etoolbox}

% Page style
\pagestyle{fancy}
\fancyhf{}
\fancyfoot{}
\setlength{\footskip}{3.60004pt}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% General formatting
\urlstyle{same}
\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

% Section formatting
\titleformat{\section}{
    \vspace{-5pt}\scshape\raggedright\large
}{}{0em}{}[\color{black}\titlerule \vspace{-4pt}]

% Highlight color
\definecolor{lightyellow}{cmyk}{0.00, 0.05, 0.20, 0.00}
\sethlcolor{lightyellow}

%--------------- Custom commands -----------------------
\newcommand{\sectionspace}{\vspace{-20pt}}
\newcommand{\subheadingtitlevspace}{\vspace{-3pt}}
\newcommand{\resumeItem}[1]{\item{#1 \vspace{-4pt}}}
\newcommand{\titleItem}[1]{\textbf{#1}}
\newcommand{\highlight}[1]{\textsl{\textbf{#1}}}

\newcommand{\resumeSubheading}[4]{
    \item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}l@{}l}     
        {#1} & \titleItem{#3} | {#2} & \textit{#4}\\
    \end{tabular*}\vspace{-10pt}
}

\newcommand{\resumeSubSubheading}[2]{
    \item
    \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
        \textit{#1} & \textit{#2} \\
    \end{tabular*}\vspace{-2pt}
}

\newcommand{\resumeProjectHeading}[2]{
    \item
    \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
        #1 & \textit{ #2} \\
    \end{tabular*}\vspace{-9pt}
}
\newcommand{\resumeSubHeadingListStart}{\subheadingtitlevspace\begin{itemize}[leftmargin=0.15in, label={}]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeItemListStart}{\begin{itemize}}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-8pt}}
