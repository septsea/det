# About building the book (关于编书的说明)

我置本书的代码于:  
I have put the source code of this book on the following sites:

- [https://gitee.com/septsea/det](https://gitee.com/septsea/det)
- [https://gitcode.net/septsea/det](https://gitcode.net/septsea/det)
- [https://github.com/septsea/det](https://github.com/septsea/det)
- [https://gitea.com/septsea/det](https://gitea.com/septsea/det)
- [https://codeberg.org/septsea/det](https://codeberg.org/septsea/det)
- [https://bitbucket.org/septsea/det](https://bitbucket.org/septsea/det)
- [https://gitlab.com/determinantulo/det](https://gitlab.com/determinantulo/det)
- [https://sourceforge.net/p/determinantulo/det](https://sourceforge.net/p/determinantulo/det)
- [https://launchpad.net/det](https://launchpad.net/det)

**获取方法甲:** (推荐)  
**The first one of methods of getting the source code:** (Recommended)

打开命令行. 执行下列几句话的任何一句. 假如您失败了, 您可多试几次, 或换一句话.  
Open the terminal. Execute any of the following commands. If one command is not executed successfully, you please try it again, or try another command.

```bash
git clone git@gitee.com:septsea/det.git
```

```bash
git clone https://gitee.com/septsea/det.git
```

```bash
git clone git@gitcode.net:septsea/det.git
```

```bash
git clone https://gitcode.net/septsea/det.git
```

```bash
git clone git@github.com:septsea/det.git
```

```bash
git clone https://github.com/septsea/det.git
```

```bash
git clone git@gitea.com:septsea/det.git
```

```bash
git clone https://gitea.com/septsea/det.git
```

```bash
git clone git@codeberg.org:septsea/det.git
```

```bash
git clone https://codeberg.org/septsea/det.git
```

```bash
git clone git@bitbucket.org:septsea/det.git
```

```bash
git clone https://bitbucket.org/septsea/det.git
```

```bash
git clone git@gitlab.com:determinantulo/det.git
```

```bash
git clone https://gitlab.com/determinantulo/det.git
```

```bash
git clone git://git.code.sf.net/p/determinantulo/det
```

```bash
git clone https://git.code.sf.net/p/determinantulo/det
```

```bash
git clone git+ssh://septsea@git.launchpad.net/det
```

```bash
git clone https://git.launchpad.net/det
```

假如您不知道 `git clone` 的作用, 请自行了解它. 无论是百度还是谷歌还是必应还是别的都比我强.  
If you do not know what `git clone` does, please teach yourself about that. Information on the internet is better than my words.

**获取方法乙:**  
**The second one of methods of getting the source code:**

您打开  
Open any of the following sites:

- [https://gitee.com/septsea/det](https://gitee.com/septsea/det)
- [https://gitcode.net/septsea/det](https://gitcode.net/septsea/det)
- [https://github.com/septsea/det](https://github.com/septsea/det)
- [https://gitea.com/septsea/det](https://gitea.com/septsea/det)
- [https://codeberg.org/septsea/det](https://codeberg.org/septsea/det)
- [https://bitbucket.org/septsea/det](https://bitbucket.org/septsea/det)
- [https://gitlab.com/determinantulo/det](https://gitlab.com/determinantulo/det)
- [https://sourceforge.net/p/determinantulo/det](https://sourceforge.net/p/determinantulo/det)

的任何一个, 然后下载所有的文件为一个压缩文件即可.  
and download all files as a compressed file.

## 如何编书? (How to build the book)

有了书的代码, 您可能想试编译本书. 我有一些方法 (但本质只有一个) 使您编译它.  
Given the source code of the book, you might want to build the book. Here are some ways to build it (which are essentially the same, though).

我假定您可正常地用乳胶 (LaTeX). [TeX Live](https://tug.org/texlive/) 2021, 2022, 2023, 2024, 或 2025 均可被用于编译本书.  
It is assumed that LaTeX functions well on your computer. Any of [TeX Live](https://tug.org/texlive/) 2021, 2022, 2023, 2024, 2025 can be used to build the book.

TeX Live 2020 也可被用于编译本书. 不过, 为使书可被成功地编译, 您要更新包. 执行  
TeX Live 2020 can also be used to build the book, but the packages have to be updated so that the book can be built successfully. Execute either
```bash
tlmgr update --reinstall-forcibly-removed --all --self --repository https://mirrors.tuna.tsinghua.edu.cn/tex-historic-archive/systems/texlive/2020/tlnet-final/
```
或  
or  
```bash
tlmgr update --reinstall-forcibly-removed --all --self --repository https://mirror.nju.edu.cn/tex-historic/systems/texlive/2020/tlnet-final/
```
以更新包. (见 [https://tug.org/historic/](https://tug.org/historic/) 以了解更多.)  
to update the packages. (See [https://tug.org/historic/](https://tug.org/historic/) for more information.)

当我说 "执行" 时, 请您打开一个可执行命令的窗口, 并进入 [`libro.tex`](../libro.tex) 所在的目录.  
When I say "execute", you please open a terminal window
and go to the folder in which the file [`libro.tex`](../libro.tex) is.

您可用下面的任何方法编本书:
<!-- - 执行 [`buildthebook.cmd`](../buildthebook.cmd). (假如您无法执行它, 就换后一个方法. 下同.) -->
- 执行 `make` .
- 执行 `latexmk -xelatex -file-line-error -cd -synctex=1 -interaction=nonstopmode -halt-on-error -silent libro` .
- 执行 `make lua` .
- 执行 `latexmk -lualatex -file-line-error -cd -synctex=1 -interaction=nonstopmode -halt-on-error -silent libro` .
- 用视觉工作室代码 (Visual Studio Code) 打开含 [`libro.tex`](../libro.tex) 的目录. 具体地, 在视工代里, 按一下 `F1` 或 `Ctrl+Shift+p` 或 `Command+Shift+p` , 输入 `File: Open Folder` , 再点一下含 "File: Open Folder..." 的项. 然后, 找到含 [`libro.tex`](../libro.tex) 的目录, 打开它. 假如您装了 James Yu 的 LaTeX Workshop, 那您就可以方便地编译本书. (假如您没有装它, 那为什么不装一个呢?)
- 假如您不喜欢我给出的方法, 那您当然也可用自己喜欢的方法; 您编出来就行. 我只提一个硬要求: **用 XeLaTeX 或 LuaLaTeX**. (至少, 我能用 XeLaTeX 或 LuaLaTeX 无问题地编译本书.)

Use any of the following methods to build the book.
<!-- - Execute [`buildthebook.cmd`](../buildthebook.cmd).
(Try another method if this does not function.) -->
- Execute `make` .
- Execute `latexmk -xelatex -file-line-error -cd -synctex=1 -interaction=nonstopmode -halt-on-error -silent libro` .
- Execute `make lua` .
- Execute `latexmk -lualatex -file-line-error -cd -synctex=1 -interaction=nonstopmode -halt-on-error -silent libro` .
- In Visual Studio Code, open the folder in which the file [`libro.tex`](../libro.tex) is. (You can press `F1` or `Ctrl+Shift+p` or `Command+Shift+p`, type `File: Open Folder`, and click on the item that contains "File: Open Folder...". Find and open the folder.) If you have installed the extension "LaTeX Workshop" by James Yu, you will be able to build the book easily (if not, why not install it?).
- If you do not like any methods that I give here, it is fine that you use a method that you like as long as you can build the book. You **have to** use either XeLaTeX or LuaLaTeX. They both function perfectly well on my computer.

## 关于字体 (About fonts)

我用到了如下字体:  
I used the following fonts:
- [Source Han Serif CN](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/)
- [Sarasa Mono SC](https://mirrors.tuna.tsinghua.edu.cn/github-release/be5invis/Sarasa-Gothic/LatestRelease/)
- [XITS](https://ctan.org/pkg/xits)
- [Fira Sans](https://ctan.org/pkg/fira)
- [XITS Math](https://ctan.org/pkg/xits)
<!-- - [TeX Gyre Termes Math](https://ctan.org/pkg/tex-gyre-math-termes)
- [STIX Two Math](https://ctan.org/pkg/stix2-otf) -->

一般地, 完整的 TeX Live 套装含 XITS, Fira Sans, XITS Math. 所以, 您一般不必安装这 3 个字体. 您下载且安装 Source Han Serif CN 与 Sarasa Mono SC, **其是可选的**, 即可.  
Usually, a complete TeX Live installation contains XITS, Fira Sans, XITS Math, so you do not need to install them from somewhere else (unless you do not have a complete TeX Live installation). You just need to download and install Source Han Serif CN and Sarasa Mono SC, **which are optional**.

<!-- 一般地, 完整的 TeX Live 套装含 XITS, Fira Sans, XITS Math, TeX Gyre Termes Math, STIX Two Math. 所以, 您一般不必安装这 5 个字体. 您下载且安装 Source Han Serif CN 与 Sarasa Mono SC 即可.  
Usually, a complete TeX Live installation contains XITS, Fira Sans, XITS Math, TeX Gyre Termes Math, STIX Two Math, so you do not need to install them from somewhere else (unless you do not have a complete TeX Live installation). You just need to download and install Source Han Serif CN and Sarasa Mono SC. -->

下载 Source Han Serif CN 是方便的:
- 可以只下载本书用到的 [Source Han Serif CN Light](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/SourceHanSerifCN-Light.otf);
- 也可[点这里](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/)手动下载自己需要的字重;
- 甚至也可[点这里](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/SourceHanSerifCN.zip)下载全字重压缩包.

Downloading Source Han Serif CN is easy:
- you can download only [Source Han Serif CN Light](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/SourceHanSerifCN-Light.otf), which is used in this book;
- you can download more variants [here](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/);
- you can also download all the variants (as a compressed file) [here](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/SourceHanSerifCN.zip).

下载 Sarasa Mono SC 不难. 在[这儿](https://mirrors.bfsu.edu.cn/github-release/be5invis/Sarasa-Gothic/LatestRelease/)下载 `SarasaMonoSC-TTF-*.7z`, 其中, `*` 是版本号 (如 `1.0.0`), 且文件名不含 `Unhinted`. 然后, 解压这个压缩文件.  
Downloading Sarasa Mono SC is easy. Download `SarasaMonoSC-TTF-*.7z` [here](https://mirrors.bfsu.edu.cn/github-release/be5invis/Sarasa-Gothic/LatestRelease/), in which `*` is the version number (for example, `1.0.0`), and the filename does not contain `Unhinted`. Extract the compressed file.

我教您如何安装字体. 我假定您用窗系统 (Windows). 选中您想安装的字体文件 (`.ttf` 文件 / `.otf` 文件). (注意, 您可以一次选多个.) 右击它 (们). **点一下 "为所有用户安装".** 不难吧? 若您用别的系统, 您就自行寻找方法吧 (我不熟悉别的系统).  
I tell you how to install fonts. I suppose that you use Windows. Select the font(s) that you want to install (`.ttf` and/or `.otf` files). Right-click on it/them. **Click on "Install for all users".** It is not hard, is it? If you use another operating system, please find the method elsewhere (I am sorry that I am not familiar with operating systems other than Windows).

我准备了一个小文件 [`tiparoj.tex`](../tiparoj.tex). 若您认为, 您的电脑里已有这 7 个字体, 且乳胶认识它们, 那就可以试编 [`tiparoj.tex`](../tiparoj.tex), 验证此事:
<!-- - 可以执行 [`testfonts.cmd`](../testfonts.cmd); -->
- 可以执行 `make fonts`;
- 可以执行 `make tiparoj`;
- 可以执行 `latexmk -xelatex -interaction=nonstopmode -halt-on-error -silent -gg -g tiparoj`;
- 可以执行 `latexmk -lualatex -interaction=nonstopmode -halt-on-error -silent -gg -g tiparoj`;
- 也可用视工代辅助编译.

当然, 若您不想用这些方法, 那您就自己设法吧.

I contained a small file [`tiparoj.tex`](../tiparoj.tex) in this repository. If you believe that there are the seven fonts on your computer, and that LaTeX knows them well, you can build [`tiparoj.tex`](../tiparoj.tex) to check whether that is the case.
<!-- - You can execute [`testfonts.cmd`](../testfonts.cmd); -->
- you can execute `make fonts`;
- you can execute `make tiparoj`;
- you can execute `latexmk -xelatex -interaction=nonstopmode -halt-on-error -silent -gg -g tiparoj`;
- you can execute `latexmk -lualatex -interaction=nonstopmode -halt-on-error -silent -gg -g tiparoj`;
- you can also build it with Visual Studio Code.

If you like none of the methods above, you can of course build it in another manner.

注意, 编出这样的东西是正常的, 因为 Source Han Serif CN Light 似乎不含朝鲜语的文字.  
Note that it is normal that the output looks like this (as is shown in the screenshot below), because Source Han Serif CN Light does not seem
to contain the Korean script (諺文/韓㐎; 언문/한글; eonmun/han'geul).

<p align="center">
    <img src="../bildoj%20en%20Markdown/tofuo.png" alt="tofuo" />
</p>

**您当然也可用别的字体; 您手动修改即可.**  
**You can also use other fonts that you would like to use; just change the settings yourself.**

## 关于 "美客" (`make`) (About `make`)

您当然可在窗上用美客. [去这儿下载](https://sourceforge.net/projects/ezwinports/files/). 一般地, 下载 `make-x.y-without-guile-w32-bin.zip` 即可 (其中, `x.y` 是版本号). 您置 `make.exe` 所在的文件夹于环境变量里, 就能用 `make` 了. 若您用包管理器 `winupg`, 您可执行 `winget install ezwinports.make` 以安装美客.  
You can certainly use `make` on Windows. Download it [here](https://sourceforge.net/projects/ezwinports/files/). Just download the file `make-x.y-without-guile-w32-bin.zip` (in which `x.y` is the version number). Put `make.exe` into the folder which is in the environmental variables, and you will be able to use `make`. If you use `winupg` the package manager, you can execute `winget install ezwinports.make` to install `make`.

**美客只是可选项.**  
**`make` is just optional.**

## About MiKTeX

Some users do not use TeX Live; they use [MiKTeX](https://miktex.org/) instead. I was asked how to build this book using MiKTeX. Therefore I did an experiment on a Windows PC. The version of MiKTeX that I used for the experiment was 24.1 (on 2024-01-28).

If you want to use XeLaTeX, execute:  
```bash
xelatex -synctex=1 -interaction=nonstopmode -file-line-error libro
biber -q libro
xelatex -synctex=1 -interaction=nonstopmode -file-line-error libro
xelatex -synctex=1 -interaction=nonstopmode -file-line-error libro
```
The following packages are needed if XeLaTeX is used:  
> subfiles, import, ctex, xecjk, cjk, zhnumber, xits, fira, fontname, mathtools, unicode-math, amscls, thmtools, kvsetkeys, xpatch, titlesec, fancyhdr, xurl, kvdefinekeys, pdfescape, ltxcmds, infwarerr, hycolor, refcount, gettitlestring, kvoptions, stringenc, intcalc, bitset, bigintcalc, rerunfilecheck, uniquecounter, logreq, biblatex-gb7714-2015, xstring, hologo, bookmark

If you want to use LuaLaTeX, execute:  
```bash
lualatex -synctex=1 -interaction=nonstopmode -file-line-error libro
biber -q libro
lualatex -synctex=1 -interaction=nonstopmode -file-line-error libro
lualatex -synctex=1 -interaction=nonstopmode -file-line-error libro
```
The following packages are needed if LuaLaTeX is used:  
> lua-uni-algos, subfiles, import, ctex, luatexja, infwarerr, luatexbase, ctablestack, ltxcmds, everyhook, svn-prov, lua-ul, adobemapping, chinese-jfm, zhnumber, xits, fira, mathtools, unicode-math, lualatex-math, amscls, thmtools, kvsetkeys, titlesec, fancyhdr, xurl, kvdefinekeys, pdfescape, hycolor, refcount, gettitlestring, kvoptions, stringenc, intcalc, bitset, bigintcalc, rerunfilecheck, uniquecounter, logreq, biblatex-gb7714-2015, xstring, hologo, bookmark

<!-- You might be curious about why `latexmk` is not used here. Two reasons:  
- `latexmk` is not (yet) part of a default installation of MiKTeX, but can be installed manually if needed. However, because MiKTeX does not contain Perl, on which `latexmk` depends, one has to install Perl manually in order to use `latexmk` (if there is no Perl executable file). (If one is willing to install Perl, one is highly recommended using `latexmk`.)
- MiKTeX does include `texify`, which is an alternative to `latexmk` and does not depend on Perl as `latexmk` does, as part of a default installation of MiKTeX. However, `texify` does not get along well with `biber`. (The issue existed many years ago and has not been fixed yet.)

Given the above considerations, I decide that I keep using TeX Live for this project.

Postscript: The package `fandol` (a set of a few Chinese fonts) can be installed, if needed. -->
