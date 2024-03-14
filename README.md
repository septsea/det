# 行列式入门

我用约二分之五周
(完成本书的初版的确只花了约二分之五周;
您现在看到的版本当然需要更多个二分之五周)
时间写了一本《行列式入门》.
正如其标题所言, 它是一本为初学者准备的行列式教材.
行列式是一个有用的工具.
我认为, 学习此工具是有用的.
本书用较简单的归纳法定义行列式,
并证明了关于行列式的一些结论
(当然, 有些东西被留为您的习题).

这是封面;
我从[这儿](https://github.com/oetiker/lshort)抄来的.
副标题 "或 369 分了解行列式"
的数字没有什么特别的意思;
"版本 2π, 2024" 也没有什么特别的意思.
这些是孩子不懂事儿瞎写的.

![kovrilo](bildoj%20en%20Markdown/kovrilo.png)

这是目录.
第一章里, 带 "`(*)`" 的是选学内容.
您不学选学内容,
并不会影响您对任何必学内容
(也就是, 未声明为 ``选学内容'' 的节)
的理解.

```plaintext
序

Acknowledgments

依赖说明

第一章: 行列式
    缺项定位
    (*) 排列
    -1 的整数次方
    (*) 逆序数与符号
    阵
    行列式
    按一列展开行列式
    (*) 按多列展开行列式
    (*) 完全展开行列式
    阵的一个新记号
    (*) 完全展开行列式 (续)
    单位阵
    行列式的性质
    用行列式的性质确定行列式
    ``行'' 列式
    (*) ``行'' 列式 (续)
    阵的积
    Binet–Cauchy 公式 (青春版)
    按一列 (行) 展开行列式的公式的变体
    线性方程组
    由 n 个 n 元 ≤1 次方程作成的方程组 (1)
    (*) 由 n 个 n 元 ≤1 次方程作成的方程组 (2)
    (*) 由 n 个 n 元 ≤1 次方程作成的方程组 (3)
    (*) 由 n 个 n 元 ≤1 次方程作成的方程组 (4)
    (*) 由 m 个 n 元 ≤1 次方程作成的方程组 (1)
    (*) 由 m 个 n 元 ≤1 次方程作成的方程组 (2)
    (*) 由 m 个 n 元 ≤1 次方程作成的方程组 (3)
    (*) 由 m 个 n 元 ≤1 次方程作成的方程组 (4)
    (*) 由 m 个 n 元 ≤1 次方程作成的方程组 (5)
    (*) Binet–Cauchy 公式
    杂例
    (*) La lasta leciono

附录 A: 2 元 2 次式
    准备
    2 元 2 次式
    2 元 2 次方程组
    1 元 4 次方程

附录 B: 求和号、求积号、数学归纳法
    求和号
    求积号
    数学归纳法
    结合律、交换律、分配律

附录 C: 后日谈
    我要如何定义行列式?
    我要讲阵吗?
    行列式的性质
    排列
    Binet–Cauchy 公式
    按一行展开行列式
    方阵与其转置的行列式相等
    (关于列的) 多线性
    按前二列展开行列式
    (关于列的) 交错性
    (关于列的) 反称性
    反称性的应用
    用行列式的性质确定行列式
    类行列式
    绝对值的性质 (1)
    绝对值的性质 (2)
    绝对值的性质 (3)
    关于实数的大小的几个事实
    行列式为零的阵的性质
    判断阵的行列式不是零的方法
    判断实阵的行列式大于零的方法
    消去律
    古伴的性质 (1)
    古伴的性质 (2)
    古伴的性质 (3)
    阵的积, 分块地写
    转置的性质
    辛阵
    反称阵
    奇数级反称阵的行列式为 0
    阵的积与倍加
    反称阵与倍加
    Pfaffian
    Pfaffian 的性质
    阵的积与倍加 (续)
    Pfaffian 的性质 (续)
    辛阵的行列式为 1
    杂例
    总结

参考文献

记号表

词表
```

## 想看书?

<!-- ~~(您需要上码云号才能从这儿下载.)~~ -->
- [https://gitee.com/septsea/det/raw/cxefa/libro.pdf](https://gitee.com/septsea/det/raw/cxefa/libro.pdf)
- [https://gitcode.net/septsea/det/raw/cxefa/libro.pdf](https://gitcode.net/septsea/det/raw/cxefa/libro.pdf)
- [https://github.com/septsea/det/raw/cxefa/libro.pdf](https://github.com/septsea/det/raw/cxefa/libro.pdf)
(但因为 "网络安全", 您不一定能从这儿下.)
- [https://codeberg.org/septsea/det/raw/cxefa/libro.pdf](https://codeberg.org/septsea/det/raw/cxefa/libro.pdf)
(但因为 "网络安全", 您不一定能从这儿下.)
- [https://bitbucket.org/septsea/det/raw/cxefa/libro.pdf](https://bitbucket.org/septsea/det/raw/cxefa/libro.pdf)
(但因为 "网络安全", 您不一定能从这儿下.)
- [https://www.123pan.com/s/QvKUVv-K4WHA](https://www.123pan.com/s/QvKUVv-K4WHA)
(较推荐.)
- [https://www.bananaspace.org/wiki/讲义:行列式入门](https://www.bananaspace.org/wiki/%E8%AE%B2%E4%B9%89:%E8%A1%8C%E5%88%97%E5%BC%8F%E5%85%A5%E9%97%A8)
(在线阅读; 不必下载文件.)
- ~~[https://www.bilibili.com/read/cv21269691](https://www.bilibili.com/read/cv21269691)~~
~~(修改专栏的机会是有限的, 故这个版本是过时的.)~~

本书甚至还有一套[教学片](https://www.bilibili.com/video/BV13D4y1p7QW/);
不过, 我想, 您不一定会喜欢它.
毕竟, 我作教学片的目的是修改书的错误.
我不一定改正了所有的错误;
但至少比不作教学片时要好多了.
**当然, 若您能告诉我本书的数学的错误,
则这是好的.**

我也作了一套[习题](https://www.bilibili.com/video/BV1cG4y1u7jG/).

我也在不少地方作过宣传 (如 [itch.io](https://septsea.itch.io/enkonduko-al-determinantoj)).

好的.
若您只想看书, 那么, 看到这儿也就够了.

## 想编书?

我置本书的代码于:

- [https://gitee.com/septsea/det](https://gitee.com/septsea/det)
- [https://gitcode.net/septsea/det](https://gitcode.net/septsea/det)
- [https://github.com/septsea/det](https://github.com/septsea/det)
- [https://codeberg.org/septsea/det](https://codeberg.org/septsea/det)
- [https://bitbucket.org/septsea/det](https://bitbucket.org/septsea/det)

**获取方法甲:** (推荐)

打开命令行.
执行下列几句话的任何一句.
假如您失败了, 您可多试几次, 或换一句话.

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
git clone git@codeberg.org:septsea/det.git
```

```bash
git clone https://codeberg.org/septsea/det.git
```

```bash
git clone git@bitbucket.org:septsea/det.git
```

```bash
git clone https://septsea-admin@bitbucket.org/septsea/det.git
```

假如您不知道 `git clone` 的作用, 请自行了解之.
无论是百度还是谷歌还是必应还是其他都比我强.

**获取方法乙:** (较不推荐)

您打开

- [https://gitee.com/septsea/det](https://gitee.com/septsea/det)
- [https://gitcode.net/septsea/det](https://gitcode.net/septsea/det)
- [https://github.com/septsea/det](https://github.com/septsea/det)
- [https://codeberg.org/septsea/det](https://codeberg.org/septsea/det)
- [https://bitbucket.org/septsea/det](https://bitbucket.org/septsea/det)

的任何一个, 然后下载所有的文件为一个压缩文件即可.

### 如何编?

有了书的代码, 您可能想试编译本书.
我有一些方法 (但本质只有一个) 使您编译之.

我假定您可正常地用乳胶 (LaTeX).

当我说 "执行" 时, 请您打开一个可执行命令的窗口,
并进入 `README.md` 所在的目录.

您可用下面的任何一个方法编本书:
- 执行 `buildthebook.cmd`.
(假如您无法执行它, 就换后一个方法.
下同.)
- 执行 `make` .
- 执行 `latexmk -xelatex -file-line-error -synctex=1 -interaction=nonstopmode -halt-on-error -silent libro` .
- 执行 `make lua` .
- 执行 `latexmk -lualatex -file-line-error -synctex=1 -interaction=nonstopmode -halt-on-error -silent libro` .
- 用视觉工作室代码 (Visual Studio Code) 打开含 `README.md` 的目录.
具体地, 在视工代里,
按一下 `F1` 或 `Ctrl+Shift+p` 或 `Command+Shift+p` ,
输入 `File: Open Folder` ,
再点一下含 "File: Open Folder..." 的项.
然后, 找到含 `README.md` 的目录, 打开之.
假如您装了 James Yu 的 LaTeX Workshop,
那您就可以方便地编译本书.
(假如您没有装它, 那为什么不装一个呢?)
- 假如您不喜欢我给出的方法,
那您当然也可用自己喜欢的方法;
您编出来就行.
我只提一个硬要求: **用 XeLaTeX 或 LuaLaTeX**.
(至少, 我能用 XeLaTeX 或 LuaLaTeX 无问题地编译本书.)

### 关于字体

我用到了如下的字体:
- [Source Han Serif CN](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/)
- [Sarasa Mono SC](https://mirrors.tuna.tsinghua.edu.cn/github-release/be5invis/Sarasa-Gothic/LatestRelease/)
- [XITS](https://ctan.org/pkg/xits)
- [Fira Sans](https://ctan.org/pkg/fira)
- [XITS Math](https://ctan.org/pkg/xits)
- [TeX Gyre Termes Math](https://ctan.org/pkg/tex-gyre-math-termes)
- [STIX Two Math](https://ctan.org/pkg/stix2-otf)

一般地, 完整的 TeX Live 套装含
XITS, Fira Sans, XITS Math, TeX Gyre Termes Math, STIX Two Math.
所以, 您一般不必安装这 5 种字体.
您安装 Source Han Serif CN 与 Sarasa Mono SC 即可.

安装 Source Han Serif CN 是较方便的:
- 可以只安装本书用到的 [Source Han Serif CN Light](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/SourceHanSerifCN-Light.otf);
- 也可[点这里](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/)手动下载自己需要的字重;
- 甚至也可[点这里](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/SourceHanSerifCN.zip)下载全字重压缩包.

但是, 安装 Sarasa Mono SC 就较不方便了.
它提供了四个压缩包,
但因为每一个压缩包里有较多我们 (有可能) 用不到的字体,
故,
若您相信我,
您可以[点这里](https://www.123pan.com/s/QvKUVv-ufWHA)下载 Sarasa Mono SC.
`Lite.zip` 只含本书用到的
Sarasa Mono SC Light,
Sarasa Mono SC Light Italic,
Sarasa Mono SC SemiBold,
Sarasa Mono SC SemiBold Italic,
而 `Full.zip` 含 10 个版本
(含 5 种字重, 每种字重都有 "正体" 与 *"斜体"*).

我教您如何安装字体.
我假定您用窗系统 (Windows).
选中字体文件 (`.ttf` 文件 / `.otf` 文件).
(注意, 您可以一次选多个.)
右击它 (们).
**点一下 "为所有用户安装".**
不难吧?
若您用其他的系统, 您就自行寻找方法吧.

我准备了一个小文件 `tiparoj.tex`.
若您认为, 您的电脑里已有这 7 种字体,
且乳胶认识它们,
那就可以试编 `tiparoj.tex`,
验证此事:
可以执行 `testfonts.cmd` ;
可以执行 `make fonts` ;
可以执行 `make tiparoj` ;
可以执行 `latexmk -xelatex -file-line-error -interaction=nonstopmode -halt-on-error -silent -g tiparoj` ;
也可用视工代辅助编译.
当然, 若您不想用这些方法, 那您就自己设法吧.

注意, 编出这样的东西是十分正常的,
因为 Source Han Serif CN
似乎不含朝鲜语的文字.

![tofuo](bildoj%20en%20Markdown/tofuo.png)

**您当然也可用其他的字体; 您手动修改即可.**

### 关于 "美客" (`make`)

您当然可在窗上用美客.
[去这儿下载](https://sourceforge.net/projects/ezwinports/files/).
一般地, 下载 `make-x.y-without-guile-w32-bin.zip` 即可
(其中 `x.y` 是版本号).
您置 `make.exe` 所在的文件夹于环境变量里,
就能用 `make` 了.

**美客只是可选项.**

## 关于版权

我用
[0BSD](https://opensource.org/license/0bsd)
协议发布了本书:

> Copyright © 2024 Determinantulo
>
> Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted.
> 
> **The software is provided "as is" and the author disclaims all warranties with regard to this software including all implied warranties of merchantability and fitness. In no event shall the author be liable for any special, direct, indirect, or consequential damages or any damages whatsoever resulting from loss of use, data or profits, whether in an action of contract, negligence or other tortious action, arising out of or in connection with the use or performance of this software.**

我给一个汉语翻译作为参考 (我从[这儿](https://commons.wikimedia.org/wiki/Template:0BSD/i18n/zh)复制过来的):

> 版权 © 2024 Determinantulo
>
> 特此授予出于任何目的使用、复制、修改和/或分发本软件的许可, 无论是否收费.
> 
> **本软件按 "原样" 提供, 作者不承担与本软件有关的所有保证, 包括对适销性和适用性的所有默示保证. 在任何情况下, 作者均不对任何特殊的、直接的、间接的或后果性的损害或因失去使用、数据或利润而导致的任何损害负责, 无论是在合同诉讼、疏忽或其他诉讼中与本软件的使用或性能有关.**

(注: 虽然本项目主要是一本书,
但因本书是用由纯文本文件作成的代码文件生成的,
故本书与生成本书的代码也可被认为是 "软件".)

通俗地, 您可以自由地用、改、发我的书,
且您**不必**标出本书的来源
(您当然也**不必**保留版权声明);
不过, 若出了问题,
则我这儿没有 "售后",
且您必须自己负责 (法律地).

(还有一件事.
以上声明的 "Determinantulo" 曾经是 "佚名" 或 "Anonymous".
不过, 一个学法学的同志说, 为使以上声明有效, 我不应不留名.
于是, 我留下了一个假的名字.)

---

Determinantulo

<!-- 2023 年 1 月 21 日 -->

<!-- 2023 年 6 月 28 日  
(不要在意这个日期) -->
