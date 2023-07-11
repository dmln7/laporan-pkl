\ProvidesClass{LaporanPKL}[11/07/2023 v1.1]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[a4paper,12pt,twoside,openright]{book}
\RequirePackage[hmargin={2.5cm,2cm},vmargin={2.5cm,2cm}]{geometry}
\RequirePackage{graphicx,sectsty,setspace,amssymb,amsmath,amsthm,amsfonts,pxfonts,enumitem,indentfirst,tabularx,ifthen,lscape,hyperref,array,mathtools,subcaption,multirow,natbib,tikz,actuarialsymbol,actuarialangle,glossaries,wrapfig,pgfplots}
\RequirePackage[bahasa]{babel}
\usetikzlibrary{shapes.geometric, arrows}
\loadglsentries{Istilah.tex}

\newcommand{\@judul}{Judul PKL}
\DeclareRobustCommand{\Judul}[1]{%
    \renewcommand{\@judul}{#1}%
}
\newcommand{\@judulen}{The Title}
\DeclareRobustCommand{\JudulEN}[1]{%
    \renewcommand{\@judulen}{#1}%
}
\newcommand{\@nama}{Nama Mahasiswa}
\DeclareRobustCommand{\Nama}[1]{%
   \renewcommand{\@nama}{#1}%
}
\newcommand{\@NIM}{NIM Mahasiswa}
\DeclareRobustCommand{\NIM}[1]{%
   \renewcommand{\@NIM}{#1}
}
\newcommand\@surel{surel@mhs.unesa.ac.id}
\DeclareRobustCommand\email[1]{%
	\renewcommand\@surel{#1}
}
\newcommand\@prodi{Matematika}
\DeclareRobustCommand\ProgramStudi[1]{%
	\renewcommand\@prodi{#1}
}
\newcommand\@prodiEng{Matematika}
\DeclareRobustCommand\Programme[1]{%
	\renewcommand\@prodiEng{#1}
}
\newcommand\@waktu{6 Februari 2023 - 31 Mei 2023}
\DeclareRobustCommand\Waktu[1]{%
	\renewcommand\@waktu{#1}
}
\newcommand\@thn{2023}
\DeclareRobustCommand\Tahun[1]{%
   \renewcommand\@thn{#1}
}
\newcommand\@kps{Dr. Raden Sulaiman, M.Si.}
\DeclareRobustCommand\KPS[1]{%
	\renewcommand\@kps{#1}
}
\newcommand\@NIPkps{196712031993021001}
\DeclareRobustCommand\NIPkps[1]{%
	\renewcommand\@NIPkps{#1}
}
\newcommand\@fak{Matematika dan Ilmu Pengetahuan Alam}
\newcommand\@faks{MIPA}
\DeclareRobustCommand\Fakultas[2]{%
   \renewcommand\@fak{#1}
   \renewcommand\@faks{#2}
}
\newcommand\@fac{Mathematics and Natural Sciences}
\DeclareRobustCommand\Faculty[1]{%
   \renewcommand\@fac{#1}
}
\newcommand\@univ{Unesa}
\DeclareRobustCommand\Universitas[1]{%
	\renewcommand\@univ{#1}
}
\newcommand\@uni{SUSu}
\DeclareRobustCommand\Institution[1]{%
	\renewcommand\@uni{#1}
}
\newcommand\@pbbsatu{Nama Pembimbing Lapangan}
\newcommand\@pbbdua{Nama Dosen Pembimbing Lapangan}
\DeclareRobustCommand\Pembimbing[2]{%
   \renewcommand{\@pbbsatu}{#1}%
   \renewcommand{\@pbbdua}{#2}
}
\newcommand\@NIPpbbsatu{12345678 123456 1 123}
\newcommand\@NIPpbbdua{12345678 123456 1 123}
\DeclareRobustCommand\NIPPembimbing[2]{%
   \renewcommand{\@NIPpbbsatu}{#1}%
   \renewcommand{\@NIPpbbdua}{#2}
}

\newcommand\Awal{%
	\frontmatter
	\pagestyle{plain}
}

\newcommand\HalamanJudul{%
    \cleardoublepage
    \thispagestyle{empty}
    \enlargethispage{1cm}
    \begin{center}
    \noindent
    {\Large\textbf{\MakeUppercase{\@judul}}}\\[10ex]
    
    \textit{{\large PRAKTIK KERJA LAPANGAN}}\\[13ex]
    
    \includegraphics[height=7cm]{Gambar/logounesa}\\[18ex]
    
    Oleh\\
    \MakeUppercase{\@nama}\\
    \textbf{NIM \@NIM}\\[18ex]
    
    \textbf{\textit{UNIVERSITAS NEGERI SURABAYA}}\\
    FAKULTAS~\MakeUppercase{\@fak}\\
   % DEPARTEMEN~\MakeUppercase{\@dep}\\
    \textbf{\textit{PROGRAM STUDI~\MakeUppercase{\@prodi}}}\\
    \@thn
    \end{center}
    \addcontentsline{toc}{chapter}{HALAMAN JUDUL}
}

\newcommand\@tglsah{6 Februari 2023}
\DeclareRobustCommand\TanggalPengesahan[1]{%
   \renewcommand\@tglsah{#1}
}
\newcommand\HalamanPengesahan{
	\cleardoublepage
	\enlargethispage{1.5cm}
	\thispagestyle{empty}
	\noindent
	\centerline{\large\bfseries{\MakeUppercase{Halaman Pengesahan}}}\\[7ex]
	\noindent
	\begin{tabular}{@{}lcp{13cm}}
		Judul PKL & : & \@judul\\
		Nama & : & \@nama\\
		NIM & : &  \@NIM\\
		e-Mail & : & \@surel\\
		Program Studi & : & \@prodi\\
		Perguruan Tinggi & : & \@univ\\
		Waktu Pelaksanaan & : & \@waktu
	\end{tabular}
	\vspace{4cm}
	\noindent
	\begin{center}
		Surabaya, \@tglsah\\
		Menyetujui,
	\end{center}
	\vspace*{-2em}
	\noindent
	\begin{table}[h!]
		\centering
		\begin{tabular}{cp{2cm}c}
		Pembimbing Lapangan & & Dosen Pembimbing Lapangan\\
		&&\\[8ex]
		\underline{\bfseries{\@pbbsatu}} && \underline{\bfseries{\@pbbdua}}\\
		NIP \@NIPpbbsatu && NIP \@NIPpbbdua
	\end{tabular}
	\end{table}
	\noindent
	\vspace{1cm}
	\begin{center}
		Mengetahui,\\
		Koordinator Program Studi~\@prodi\\
		Fakultas~\@fak\\[9ex]
		\underline{\bfseries{\@kps}}\\
		NIP \@NIPkps
	\end{center}
	\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
}
\newcommand\Keaslian{
	\cleardoublepage
	\enlargethispage{1.5cm}
	\thispagestyle{empty}
	\noindent
	\centerline{\large\bfseries{\MakeUppercase{Surat Pernyataan Keaslian}}}\\[7ex]
	\noindent
	Saya yang bertandatangan di bawah ini:\\
	\begin{tabular}{@{}lcp{12cm}}
		Nama & : & \@nama\\
		NIM & : &  \@NIM\\
		Program Studi & : & \@prodi\\
		Judul PKL & : & \@judul
	\end{tabular}\\[2ex]
	menyatakan dengan sesungguhnya bahwa:
	\begin{daftar}
		\item Isi sebagian maupun keseluruhan Praktik Kerja Lapangan saya yang berjudul tersebut di atas adalah benar-benar hasil karya intelektual mandiri, diselesaikan tanpa menggunakan data/dokumen yang tidak diizinkan dan bukan merupakan karya pihak lain yang saya akui sebagai karya sendiri.
		\item Semua referensi yang dikutip maupun dirujuk telah ditulis secara lengkap pada daftar pustaka.
		\item Apabila ternyata di kemudian hari karya ini merupakan hasil plagiat atau penjiplakan terhadap karya orang lain, maka saya bersedia menerima sanksi berdasarkan aturan yang berlaku di Negera Kesatuan Republik Indonesia.
	\end{daftar}
	Demikianlah surat pernyataan ini saya buat dengan sesungguhnya, untuk dapat dipergunakan sebagaimana mestinya.\\[3ex]
	\begin{tabular}{p{10cm}l}
		& Surabaya, \@tglsah\\
		& Yang membuat pernyataan,\\[13ex]
		& \@nama\\
		& NIM. \@NIM
	\end{tabular}
	\addcontentsline{toc}{chapter}{SURAT PERNYATAAN KEASLIAN}
}
\newcommand{\katakunci}[1]{%
	\vspace*{1ex}
	\noindent
	\begin{tabularx}{\textwidth}{@{}lX@{}}
		\textbf{Kata kunci:} & #1
	\end{tabularx}
}
\newcommand{\keywords}[1]{%
	\vspace*{1ex}
	\noindent
	\begin{tabularx}{\textwidth}{@{}lX@{}}
		\textbf{Keywords:} & #1
	\end{tabularx}
}
\newenvironment*{Abstrak}{%-------------------------------
	\cleardoublepage
	\begin{center}%
		{\large\bfseries{\MakeUppercase{ABSTRAK}}}\\[3ex]
		{\large\bfseries{\MakeUppercase{\@judul}}}
		\par \vskip 3ex%
		\par%
		\begin{tabular}{lcl}
			Nama &:& \@nama\\
			NIM &:& \@NIM\\
			Program Studi &:& \@prodi\\
		\end{tabular}
	\end{center}%
	\addcontentsline{toc}{chapter}{ABSTRAK}
	\par \vskip 2ex%
	\par}{\normalfont\normalsize
}
\newcommand{\KataPengantar}{%-----------------
	\cleardoublepage
	\centerline{\large\bfseries KATA PENGANTAR}
	\addcontentsline{toc}{chapter}{KATA PENGANTAR}
	\vspace*{40pt}
}
\newcommand{\DaftarIsi}{%---------------------
    \cleardoublepage
    \pagestyle{plain}
    \addcontentsline{toc}{chapter}{DAFTAR ISI}
    \tableofcontents
}
\newcommand{\DaftarGambar}{%----------------------
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
    \listoffigures
}
\newcommand{\DaftarTabel}{%----------------------
    \cleardoublepage
    \addcontentsline{toc}{chapter}{DAFTAR TABEL}
    \listoftables
}
\newcommand{\DaftarSimbol}{%----------------------
    \cleardoublepage
    \centerline{\large\bfseries{\MakeUppercase{Daftar Simbol}}}
    \addcontentsline{toc}{chapter}{DAFTAR SIMBOL}
}
\newcommand\Inti{%--------------------
    \cleardoublepage
    \mainmatter
   %\pagestyle{myheadings}
    \pagestyle{plain}
}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{plain}%
	\global\@topnum\z@
	\@afterindentfalse
	\secdef\@chapter\@schapter}
\gdef\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
	\if@mainmatter
	\refstepcounter{chapter}%
	\typeout{\@chapapp\space\thechapter.}%
	\addcontentsline{toc}{chapter}%
	{\protect\numberline{\@chapapp\space\thechapter}#1}%
	\else
	\addcontentsline{toc}{chapter}{\@chapapp\space#1}%
	\fi
	\else
	\addcontentsline{toc}{chapter}{#1}%
	\fi
	\chaptermark{#1}%
	\addtocontents{lof}{\protect\addvspace{10\p@}}%
	\addtocontents{lot}{\protect\addvspace{10\p@}}%
	\if@twocolumn
	\@topnewpage[\@makechapterhead{#2}]%
	\else
	\@makechapterhead{#2}%
	\@afterheading
	\fi}
\gdef\@makechapterhead#1{%
	\vspace*{5\p@}%
	{\parindent \z@ \centering\normalfont
		\ifnum \c@secnumdepth >\m@ne
		\if@mainmatter
		\large\bfseries \MakeUppercase\@chapapp\space \thechapter
		\par
		\fi
		\fi
		\large\bfseries\MakeUppercase{#1}\par\nobreak
		\vskip 40\p@
}}
\gdef\@schapter#1{\@makeschapterhead{#1}%
	\@afterheading
}
\gdef\@makeschapterhead#1{%
	\vspace*{5\p@}%
	{\parindent \z@ \centering
		\normalfont
		\interlinepenalty\@M
		\large\bfseries\MakeUppercase{#1}\par\nobreak
		\vskip 40\p@
}}

\setlength{\parindent}{2em}
\renewcommand\section{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{.01ex \@plus.2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-1ex\@plus -1ex \@minus -.2ex}%
	{.01ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-.25ex\@plus -1ex \@minus -.2ex}%
	{.01ex \@plus.2ex}%
	{\normalfont\normalsize}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{.25ex \@plus1ex \@minus.2ex}%
	{-.5em}%
	{\normalfont\normalsize\bfseries}}
\renewcommand*\thechapter{\@Roman\c@chapter}
\renewcommand*\thesection{\@Alph\c@section.}
\renewcommand*\thesubsection{\@arabic\c@subsection.}

\newtheorem{theorem}{Teorema}[chapter]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposisi}
\newtheorem{corollary}[theorem]{Akibat}
\newtheorem{axiom}[theorem]{Aksioma}
\newtheorem{example}[theorem]{Contoh}
\newtheorem{definition}[theorem]{Definisi}
	
%%%-------------setting daftar isi/tabel/gambar------------------
\renewcommand\@dotsep{2}
\renewcommand*\l@chapter[2]{%
	\ifnum \c@tocdepth >\m@ne
	\addpenalty{-\@highpenalty}%
	\vskip 0.5em \@plus\p@
	\setlength\@tempdima{5em}%
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	\leavevmode %\bfseries
	\advance\leftskip\@tempdima
	\hskip -\leftskip
	#1\nobreak\hfil \nobreak
	\hb@xt@\@pnumwidth{\hss #2}
	\par
	\penalty\@highpenalty
	\endgroup
	\fi}
\renewcommand*\l@section{\@dottedtocline{1}{3em}{2.2em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{5em}{3em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.8em}{4.1em}}
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{6em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{5em}}
%%%%%%------------------------

\renewcommand\thetheorem
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@theorem}

\renewcommand\theequation
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}

\renewcommand\thefigure
{\ifnum \c@chapter>\z@ \figurename\space \@arabic\c@chapter.\fi \@arabic\c@figure}
\def\fnum@figure{\nobreakspace\thefigure}

\renewcommand \thetable
{\ifnum \c@chapter>\z@ \tablename\space  \@arabic\c@chapter.\fi \@arabic\c@table}
\def\fnum@table{\nobreakspace\thetable}

%%%%---------------------------------
\newcommand\DaftarPustaka[1]{%
	\cleardoublepage
	\addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
	\bibliographystyle{unesa}
	\bibliography{#1}
}

\newcommand{\Glosarium}{%----------------------
	\cleardoublepage
	\addcontentsline{toc}{chapter}{GLOSARIUM}
	\begin{center}
		\large \textbf{GLOSARIUM}
	\end{center}
	\vskip 3ex
	\glsaddall
	\printglossaries
}

%%%%---------------------------------
\newcommand\BukaLampiran{%
    \cleardoublepage
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}
  \addtocontents{toc}{\protect\addvspace{1ex}}%
  \addcontentsline{toc}{chapter}{LAMPIRAN}
  \mbox{}\\\vfill
  {\Huge \hfill{LAMPIRAN}}\\
  \vfill\mbox{}\\
  \thispagestyle{empty}
}

%-----------------------------------
\newcommand\lampiran[1]{%
	\refstepcounter{chapter}
	\cleardoublepage
	\thispagestyle{plain}
	\addcontentsline{toc}{chapter}{\thechapter~~ #1}
	\null
	\begin{center}
		\large\bfseries
		\MakeUppercase\appendixname\space\thechapter
		\par#1
	\end{center}
	\vskip 20\p@\par
}

%-----------------------------------
\newcommand\biodata[1]{%-----------
	\begin{wrapfigure}{l}{3cm}
		{\includegraphics[width=3cm,height=4cm]{#1}}
	\end{wrapfigure}
}

\newlist{daftar}{enumerate}{1}
\setlist[daftar]{labelindent=0em,leftmargin=*,listparindent=0em,partopsep=0pt, topsep=0pt,itemsep=0pt,parsep=0pt,label=\arabic*.}
\newlist{subdaftar}{enumerate}{1}
\setlist[subdaftar]{leftmargin=*,partopsep=0pt, topsep=0pt,itemsep=0pt,parsep=0pt,label=\alph*.}

%%%------------- PENYESUAIAN ISTILAH ---------------------------
\renewcommand\contentsname{DAFTAR ISI}
\renewcommand\listfigurename{DAFTAR GAMBAR}
\renewcommand\listtablename{DAFTAR TABEL}
%\renewcommand\bibname{DAFTAR PUSTAKA}
\renewcommand\indexname{INDEKS}
\renewcommand\figurename{Gambar}
\renewcommand\tablename{Tabel}
\renewcommand\chaptername{BAB}
\renewcommand\appendixname{Lampiran}
\renewcommand\proofname{Bukti}
\renewcommand\qedsymbol{$\blacksquare$}
\addto{\captionsbahasa}{\renewcommand{\bibname}{DAFTAR PUSTAKA}}

\lefthyphenmin=5
\righthyphenmin=5
\sloppy
