% Resume FAANGPath class with Cyrillic support
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume-faangpath}[2023/09/01 Resume template FAANGPath with Cyrillic support]

\LoadClass{article}

% ---------- Packages ----------
\RequirePackage{geometry}
\geometry{a4paper, margin=1.5cm}

\RequirePackage{fontspec} % Для шрифтов и кириллицы
\setmainfont{Times New Roman}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage[hidelinks]{hyperref}

% ---------- Formatting ----------
\setlength{\parindent}{0pt}
\setlength{\parskip}{4pt}

% Section formatting
\titleformat{\section}{\large\bfseries}{}{0em}{}[\titlerule]

% ---------- Custom Commands ----------
\newcommand{\name}[1]{\centerline{\Huge \bfseries #1}}
\newcommand{\contact}[5]{%
  \begin{center}
    #1 \quad | \quad #2 \quad | \quad #3 \quad | \quad #4 \quad | \quad #5
  \end{center}
}

% Summary environment
\newenvironment{summary}{%
  \section*{Summary}
}{\par}

% Resume subsections
\newcommand{\resumeSubheading}[5]{%
  \vspace{2pt}\textbf{#1} \hfill #2 \\
  \textit{#3} \hfill \textit{#4} \\
  {#5}\par\vspace{4pt}
}

% Skills
\newcommand{\resumeSkillListStart}{\begin{itemize}[leftmargin=*]}
\newcommand{\resumeSkillListEnd}{\end{itemize}}
\newcommand{\resumeSkill}[2]{\item \textbf{#1:} #2}

% Projects
\newcommand{\resumeProjectHeading}[2]{%
  \vspace{2pt}\textbf{#1} \hfill \textit{#2}\par
}
\newcommand{\resumeItemListStart}{\begin{itemize}[leftmargin=*]}
\newcommand{\resumeItemListEnd}{\end{itemize}}
\newcommand{\resumeItem}[1]{\item #1}
