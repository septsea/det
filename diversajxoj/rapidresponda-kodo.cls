\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rapidresponda-kodo}[2025/06/28 Class for quick-response codes]

\PassOptionsToClass{zihao=-4}{ctexart}
\LoadClass[class=ctexart]{standalone}

\RequirePackage{qrcode}
\qrset{link,height=2.5cm}

\providecommand*{\ligilo}{https://space.bilibili.com/38607620}

\providecommand{\farudokumenton}{\qrcode{\ligilo}}

\endinput

This document-class is used for creating a standalone document that consists of a quick-response code of the given link.

Usage:

```latex
\documentclass{rapidresponda-kodo}

\renewcommand*{\ligilo}{https://github.com/septsea/det}

\begin{document}
\farudokumenton
\end{document}
```
