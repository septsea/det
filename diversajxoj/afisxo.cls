\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{afisxo}[2025/06/28 Class for A4 posters
    for "An introduction to determinants"]

\newif\if@pejzagxa\@pejzagxafalse
\DeclareOption{pejzagxa}{\@pejzagxatrue}
\ProcessOptions\relax

\if@pejzagxa
    \LoadClass[a4paper,oneside,punct=kaiming,zihao=-4,landscape]{ctexbook}
\else
    \LoadClass[a4paper,oneside,punct=kaiming,zihao=-4]{ctexbook}
\fi

\RequirePackage[margin=2.5cm]{geometry}
\pagestyle{empty}

\IfFontExistsTF{FiraSans-Regular.otf}{%
    \IfFontExistsTF{FiraSans-SemiBold.otf}{%
        \IfFontExistsTF{FiraSans-Italic.otf}{%
            \IfFontExistsTF{FiraSans-SemiBoldItalic.otf}{%
                \setmainfont[
                    Path,
                    UprightFont = *-Regular.otf,
                    BoldFont = *-SemiBold.otf,
                    ItalicFont = *-Italic.otf,
                    BoldItalicFont = *-SemiBoldItalic.otf
                ]{FiraSans}
                \setsansfont[
                    Path,
                    UprightFont = *-Regular.otf,
                    BoldFont = *-SemiBold.otf,
                    ItalicFont = *-Italic.otf,
                    BoldItalicFont = *-SemiBoldItalic.otf
                ]{FiraSans}
            }{}
        }{}
    }{}
}{}

\IfFontExistsTF{Sarasa Mono SC}{%
    \IfFontExistsTF{Sarasa Mono SC Italic}{%
        \IfFontExistsTF{Sarasa Mono SC SemiBold}{%
            \IfFontExistsTF{Sarasa Mono SC SemiBold Italic}{%
                \PassOptionsToClass{fontset=none}{ctexbook}
                \setmonofont[
                    UprightFont = *,
                    BoldFont = * SemiBold,
                    ItalicFont = * Italic,
                    BoldItalicFont = * SemiBold Italic
                ]{Sarasa Mono SC}
                \setCJKmainfont[
                    UprightFont = *,
                    BoldFont = * SemiBold,
                    ItalicFont = * Italic,
                    BoldItalicFont = * SemiBold Italic
                ]{Sarasa Mono SC}
                \setCJKsansfont[
                    UprightFont = *,
                    BoldFont = * SemiBold,
                    ItalicFont = * Italic,
                    BoldItalicFont = * SemiBold Italic
                ]{Sarasa Mono SC}
                \setCJKmonofont[
                    UprightFont = *,
                    BoldFont = * SemiBold,
                    ItalicFont = * Italic,
                    BoldItalicFont = * SemiBold Italic
                ]{Sarasa Mono SC}
            }{}
        }{}
    }{}
}{
    \IfFontExistsTF{SarasaMonoSC-Regular.ttf}{%
        \IfFontExistsTF{SarasaMonoSC-Italic.ttf}{%
            \IfFontExistsTF{SarasaMonoSC-SemiBold.ttf}{%
                \IfFontExistsTF{SarasaMonoSC-SemiBoldItalic.ttf}{%
                    \PassOptionsToClass{fontset=none}{ctexbook}
                    \setmonofont[
                        Path,
                        UprightFont = *-Regular.ttf,
                        BoldFont = *-SemiBold.ttf,
                        ItalicFont = *-Italic.ttf,
                        BoldItalicFont = *-SemiBoldItalic.ttf
                    ]{SarasaMonoSC}
                    \setCJKmainfont[
                        Path,
                        UprightFont = *-Regular.ttf,
                        BoldFont = *-SemiBold.ttf,
                        ItalicFont = *-Italic.ttf,
                        BoldItalicFont = *-SemiBoldItalic.ttf
                    ]{SarasaMonoSC}
                    \setCJKsansfont[
                        Path,
                        UprightFont = *-Regular.ttf,
                        BoldFont = *-SemiBold.ttf,
                        ItalicFont = *-Italic.ttf,
                        BoldItalicFont = *-SemiBoldItalic.ttf
                    ]{SarasaMonoSC}
                    \setCJKmonofont[
                        Path,
                        UprightFont = *-Regular.ttf,
                        BoldFont = *-SemiBold.ttf,
                        ItalicFont = *-Italic.ttf,
                        BoldItalicFont = *-SemiBoldItalic.ttf
                    ]{SarasaMonoSC}
                }{}
            }{}
        }{}
    }{}
}

\RequirePackage[
    math-style=ISO,
    bold-style=ISO,
    mathrm=sym,
    mathbf=sym,
]{unicode-math}
\IfFontExistsTF{FiraMath-Regular.otf}{%
    \setmathfont[]{FiraMath-Regular.otf}
}{}

\providecommand*{\midsloppy}{%
    \tolerance 5000%
    \hbadness 4000%
    \emergencystretch 1.5em%
    \hfuzz .1\p@%
    \vfuzz\hfuzz}

\renewcommand*{\familydefault}{\sfdefault}

\AtBeginDocument{%
    \frenchspacing
    \midsloppy
    \renewcommand*{\UrlFont}{\ttfamily}
}

\RequirePackage[breaklinks,hidelinks,unicode]{hyperref}
\RequirePackage{xurl}

\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{pdfpages}

\providecommand*{\laauxtoro}{the \textsf{mwe} (Minimal Working Example) package}
\providecommand*{\lailustrajxo}{%
    \if@pejzagxa%
        \includepdf{example-image-a4-landscape.pdf}%
    \else%
        \includepdf{example-image-a4.pdf}%
    \fi%
}

\providecommand{\afisxodeauxtorrajto}{%
    \parbox{\linewidth}{\footnotesize%
        \texttt{©} Determinantulo.
        All rights reserved.\\
        The illustration on the reverse side was drawn by
        \laauxtoro.%
    }%
}

\providecommand{\pejzagxaenhavo}{%
    \begin{align*}
        \det \begin{bmatrix}
                 a_{1,1} & a_{1,2} & a_{1,3} \\
                 a_{2,1} & a_{2,2} & a_{2,3} \\
                 a_{3,1} & a_{3,2} & a_{3,3} \\
             \end{bmatrix}
        =
        a_{1,1} a_{2,2} a_{3,3}
        + a_{1,2} a_{2,3} a_{3,1}
        + a_{1,3} a_{2,1} a_{3,2}
        - a_{1,1} a_{2,3} a_{3,2}
        - a_{1,2} a_{2,1} a_{3,3}
        - a_{1,3} a_{2,2} a_{3,1}
    \end{align*}

    \begin{figure*}[h!]
        \centering
        \begin{minipage}[h!]{0.49\textwidth}
            \centering
            \includegraphics[width=\textwidth]{koro.pdf}

            \caption*{%
                \centering%
                Memorhelpilo de la determinanto de \(3 \times 3\)-matrico\\
                A mnemonic device of the determinant of a \(3 \times 3\) matrix\\
                \(3 \times 3\) 阵的行列式的记忆方法}
        \end{minipage}
        \hfill
        \begin{minipage}[h!]{0.49\textwidth}
            \centering
            \begin{subfigure}{\textwidth}
                \centering
                \includegraphics{rapidresponda kodo por GitHub.pdf}
                \caption*{\url{https://github.com/septsea/det}}
            \end{subfigure}

            \,

            \begin{subfigure}{\textwidth}
                \centering
                \includegraphics{rapidresponda kodo por Gitee.pdf}
                \caption*{\url{https://gitee.com/septsea/det}}
            \end{subfigure}

            % \vspace{1ex}

            \caption*{%
                \centering%
                Legu \textit{Enkonduko al determinantoj} por pli multaj informoj.\\
                Read \textit{An introduction to determinants} for more information.\\
                阅读\,《行列式入门》\,以了解更多.}
        \end{minipage}
    \end{figure*}%
}

\providecommand{\portretaenhavo}{%
    \begin{align*}
             &
        \det \begin{bmatrix}
                 a_{1,1} & a_{1,2} & a_{1,3} \\
                 a_{2,1} & a_{2,2} & a_{2,3} \\
                 a_{3,1} & a_{3,2} & a_{3,3} \\
             \end{bmatrix}
        \\
        = {} &
        a_{1,1} a_{2,2} a_{3,3}
        + a_{1,2} a_{2,3} a_{3,1}
        + a_{1,3} a_{2,1} a_{3,2}
        - a_{1,1} a_{2,3} a_{3,2}
        - a_{1,2} a_{2,1} a_{3,3}
        - a_{1,3} a_{2,2} a_{3,1}
    \end{align*}

    \begin{figure*}[h!]
        \centering
        \includegraphics{koro.pdf}

        \caption*{%
            \centering%
            Memorhelpilo de la determinanto de \(3 \times 3\)-matrico\\
            A mnemonic device of the determinant of a \(3 \times 3\) matrix\\
            \(3 \times 3\) 阵的行列式的记忆方法}
    \end{figure*}

    \begin{figure*}[h!]
        \centering
        \begin{subfigure}{0.4\textwidth}
            \centering
            \includegraphics{rapidresponda kodo por GitHub.pdf}
            \caption*{\url{https://github.com/septsea/det}}
        \end{subfigure}
        \begin{subfigure}{0.4\textwidth}
            \centering
            \includegraphics{rapidresponda kodo por Gitee.pdf}
            \caption*{\url{https://gitee.com/septsea/det}}
        \end{subfigure}

        \caption*{%
            \centering%
            Legu \textit{Enkonduko al determinantoj} por pli multaj informoj.\\
            Read \textit{An introduction to determinants} for more information.\\
            阅读\,《行列式入门》\,以了解更多.}
    \end{figure*}%
}

\providecommand{\farudokumenton}{%
    \lailustrajxo
    \clearpage
    \noindent\phantom{\afisxodeauxtorrajto}
    \vfill
    \if@pejzagxa%
        \pejzagxaenhavo
    \else%
        \portretaenhavo
    \fi%
    \vfill
    \noindent\afisxodeauxtorrajto%
}

\endinput

This document-class is used for creating posters for "An introduction to determinants".

Usages can be seen in files with names beginning with "afisxo de".

In order to build the posters, the heart (`koro.tex`) and the two quick-respond codes (`rapidresponda kodo por GitHub.tex` and `rapidresponda kodo por Gitee.tex`) have to be built first.
