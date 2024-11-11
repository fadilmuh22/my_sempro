\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kti}[2020/07/23 v1.1 Karya Tulis Ilmiah class]

% ----------------------------------------
% METADATA
% Variabel input untuk metadata dokumen
% ----------------------------------------
\gdef\@university{Universitas Pendidikan Indonesia}
\gdef\@city{Bandung}
\gdef\@degree{S-1}
\newcommand{\email}[1]{\gdef\@email{#1}}
\newcommand{\titleen}[1]{\gdef\@titleen{#1}}
\newcommand{\faculty}[1]{\gdef\@faculty{#1}}
\newcommand{\department}[1]{\gdef\@department{#1}}
\newcommand{\program}[1]{\gdef\@program{#1}}
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}
\newcommand{\monthsubmit}[1]{\gdef\@monthsubmit{#1}}
\newcommand{\yearsubmit}[1]{\gdef\@yearsubmit{#1}}
\newcommand{\firstsupervisorname}[1]{\gdef\@firstsupervisorname{#1}}
\newcommand{\firstsupervisorid}[1]{\gdef\@firstsupervisorid{#1}}
\newcommand{\secondsupervisorname}[1]{\gdef\@secondsupervisorname{#1}}
\newcommand{\secondsupervisorid}[1]{\gdef\@secondsupervisorid{#1}}
\newcommand{\departmentheadname}[1]{\gdef\@departmentheadname{#1}}
\newcommand{\departmentheadid}[1]{\gdef\@departmentheadid{#1}}
\newcommand{\statementcontent}[1]{\gdef\@statementcontent{#1}}
\newcommand{\acknowledgmentcontent}[1]{\gdef\@acknowledgmentcontent{#1}}
\newcommand{\abstractcontent}[1]{\gdef\@abstractcontent{#1}}
\newcommand{\abstractencontent}[1]{\gdef\@abstractencontent{#1}}
\newcommand{\abstractkeywords}[1]{\gdef\@abstractkeywords{#1}}
\newcommand{\abstractenkeywords}[1]{\gdef\@abstractenkeywords{#1}}
\newcommand{\prefacecontent}[1]{\gdef\@prefacecontent{#1}}

% Mengubah jenis huruf dokumen
% ke Times New Roman
\RequirePackage{times}

% Memuat kelas dokumen
% ke laporan dengan ukuran huruf
% 12pt
\LoadClass[12pt]{report}

\usepackage{geometry}
% ----------------------------------------
% LAYOUTING
% ----------------------------------------
\geometry{
  a4paper, % paper size
  left=4cm, % margin left
  top=3cm, % margin top
  right=3cm, % margin right
  bottom=3cm, % margin bottom
  includeheadfoot,
}

\usepackage{titlesec}
% ----------------------------------------
% SPACING
% ----------------------------------------
% Mengubah jarak antar baris paragraf
% ke skala 1.5 baris
\renewcommand{\baselinestretch}{1.5}
% Menghilangkan jarak judul bab
% ke bagian atas kertas
\titlespacing*{\chapter}{0pt}{-50pt}{0cm}
% Memperbesar jarak indentasi paragraf
\setlength{\parindent}{28pt}
% Memberikan indentasi
% untuk daftar deskripsi
\renewcommand*\descriptionlabel[1]{\hspace\leftmargin#1}
% Menghapus spasi di daftar gambar/tabel antar bab
\addtocontents{lof}{\protect\addvspace{10\p@}}
\addtocontents{lot}{\protect\addvspace{10\p@}}

\usepackage[titles]{tocloft}
\usepackage{enumitem}
% ----------------------------------------
% NUMBERING & LISTING
% ----------------------------------------
% Mengubah penomoran judul bab
% ke angka romawi
\renewcommand{\thechapter}{\Roman{chapter}}
% Mengubah penomoran judul subbab
% ke angka arab
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
% Mendefinisikan penomoran halaman
% khusus halaman indeks
% ke angka romawi
\def\frontmatter{
  \pagenumbering{roman}
  \thispagestyle{plain}
}
% Mendefinisikan penomoran halaman
% khusus selain halaman indeks
% ke angka arab
\def\mainmatter{
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \thispagestyle{plain}
}
% Menambahkan prefiks "BAB" untuk setiap bab
% di daftar isi
\renewcommand{\cftchappresnum}{BAB }
\newlength\chapprefixwidth
\settowidth\chapprefixwidth{BAB III}
\cftsetindents{chap}{0pt}{\chapprefixwidth}
% Mengubah gaya penulisan untuk setiap bab
% di daftar isi
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftdotsep}{1.0}
\renewcommand{\cftchapleader}{\cftdotfill{\cftsecdotsep}}
% Menambahkan prefiks "Tabel" untuk setiap tabel
% di daftar tabel
\renewcommand{\cfttabpresnum}{Tabel }
\newlength\tabprefixwidth
\settowidth\tabprefixwidth{Tabel 1.10}
\cftsetindents{tab}{0pt}{\tabprefixwidth}
% Menambahkan prefiks "Gambar" untuk setiap tabel
% di daftar gambar
\renewcommand{\cftfigpresnum}{Gambar\ }
\newlength\figprefixwidth
\settowidth\figprefixwidth{Gambar 1.10}
\cftsetindents{fig}{0pt}{\figprefixwidth}
% Mengubah penomoran tabel
% ke angka arab
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
% Mengubah penomoran rumus matematika
% ke angka arab
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
% Mengubah penomoran keterangan (caption)
% ke angka arab
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
% Menghapus jarak sebelum dan sesudah konten list
% \setlist{nosep}

\usepackage[labelfont=normalfont,textfont=normalfont,skip=3pt]{caption}
\usepackage[labelfont=normalfont,textfont=normalfont,skip=3pt]{subcaption}
% ----------------------------------------
% CAPTIONING
% ----------------------------------------
% Mengubah gaya penulisan keterangan
% untuk tabel
\captionsetup[table]{labelformat=simple,labelsep=space,
                     textfont=it,justification=centering}
% Mengubah gaya penulisan keterangan
% untuk gambar
\captionsetup[figure]{labelformat=simple,labelsep=space,
                      justification=centering}

\usepackage{tocloft,etoolbox}

% ----------------------------------------
% HEADING
% ----------------------------------------
% Mengubah gaya penulisan setiap judul bab
\titleformat{\chapter}[display]
  {\centering\bfseries}
  {\MakeUppercase{\@chapapp\enskip\thechapter}}
  {0pt}
  {\MakeUppercase}
\patchcmd{\l@chapter}{#1}{\MakeUppercase{#1}}{}{}
% Mengubah gaya penulisan setiap judul subbab
\titleformat*{\section}{\normalfont\bfseries}
% Mengubah gaya penulisan setiap judul subsubbab
\titleformat*{\subsection}{\normalfont}
% Mengubah gaya penulisan setiap judul subsubsubbab
\titleformat*{\subsubsection}{\normalfont}

\usepackage[hidelinks]{hyperref}
\usepackage{url}

\usepackage[bahasa]{babel}

\usepackage[
babel=other,
backend=biber,
style=ext-authoryear,
maxcitenames=2
]{biblatex}

\addbibresource{references.bib}
% ----------------------------------------
% CITING
% ----------------------------------------
% Mengubah format sitasi
% ke gaya APA
% \bibliographystyle{apacite}
% Mengubah akronim dalam Bahasa Inggris
% ke Bahasa Indonesia
% \renewcommand{\BBA}[1]{\&}
% \renewcommand{\BBAA}[1]{\&}
% \renewcommand{\BBAB}[1]{\&}
% \renewcommand{\BOthers}[1]{dkk.}
% \renewcommand{\BOthersPeriod}[1]{dkk.}

\usepackage[acronym]{glossaries}
% ----------------------------------------
% Glosarium
% ----------------------------------------
% \include{glosarium}
% ----------------------------------------
% NAMING
% ----------------------------------------
\def\captionsbahasa{
%   \def\prefacename{KATA PENGANTAR}
%   \def\statementname{PERNYATAAN}
%   \def\abstractname{ABSTRAK}
  \def\contentsname{DAFTAR ISI}
  \def\listtablename{DAFTAR TABEL}
  \def\listfigurename{DAFTAR GAMBAR}
  % \def\listappendixname{DAFTAR LAMPIRAN}
  % \def\nomenclaturename{DAFTAR SINGKATAN}
  \def\chaptername{BAB}
  \def\refname{DAFTAR PUSTAKA}
  \def\bibname{DAFTAR PUSTAKA}
  \def\appendixname{LAMPIRAN}
  \def\figurename{Gambar}
  \def\tablename{Tabel}
}

\usepackage{setspace}
\usepackage{graphicx}
% ----------------------------------------
% TEMPLAT HALAMAN JUDUL
% ----------------------------------------
\def\cover{
  \thispagestyle{empty}
  \begin{center}
    \begin{singlespace}
      \textbf{\MakeUppercase{\@title}}\par\nobreak
      \vspace{1.5cm}
      \textbf{PROPOSAL TUGAS AKHIR}\\
      \vspace{1.5cm}
      % diajukan untuk memenuhi sebagian dari\\
      % syarat memperoleh gelar Sarjana \@degree\\
      % \@program\\
      {dijakukan untuk memenuhi sebagai syarat untuk meperoleh gelar Sarjana
Komputer pada Program Studi Rekayasa Perangkat Lunak}
      \vfill
      \includegraphics[
        width=3.5cm,
        height=3.5cm,
        keepaspectratio,
      ]{images/logo.png}
      \vfill
      Oleh\\
      \@author\\
      \@studentid\\
      \vspace{1.5cm}
      \textbf{
        \MakeUppercase{\@program}\\
        % \MakeUppercase{\@department}\\
        % \MakeUppercase{\@faculty}\\
        {\MakeUppercase{\@faculty}}\\
        \MakeUppercase{\@university}\\
        % \MakeUppercase{\@city}\\
        \MakeUppercase{\@yearsubmit}
      }\par\nobreak
    \end{singlespace}
  \end{center}
  \pagebreak
}

% ----------------------------------------
% TEMPLAT HALAMAN HAK CIPTA
% ----------------------------------------
\def\copyright{
  \begin{center}
    \begin{singlespace}
      \MakeUppercase{\@title}\par\nobreak
      \vfill
      Oleh\\
      \@author\\
      \@studentid\\
      \vfill
      Sebuah skripsi yang diajukan untuk memenuhi sebagian dari
      syarat memperoleh gelar Sarjana \@degree\ \@program\ di \@faculty\\
      \vfill
      \textcopyright\ \@author\ \@yearsubmit\\
      \@university\\
      \@monthsubmit\ \@yearsubmit\\
      \vfill
      Hak Cipta Dilindungi Undang-Undang\\
      Skripsi ini boleh diperbanyak seluruhnya atau sebagian, dengan dicetak ulang, difotokopi atau cara lainnya tanpa izin dari penulis dengan tetap mencantumkan halaman ini apa adanya
    \end{singlespace}
  \end{center}
  \pagebreak
}

% ----------------------------------------
% TEMPLAT HALAMAN PENGESAHAN
% ----------------------------------------
\def\approval{
  \begin{center}
    \begin{singlespace}
      \MakeUppercase{\@author}\\
      \@studentid\\
      \vfill
      \MakeUppercase{\@title}\\
      \vfill
      disetujui dan disahkan oleh pembimbing:\\
      \vfill
      Pembimbing I,\\
      \vspace{2.0cm}
      \underline{\@firstsupervisorname}\\
      NIP. \@firstsupervisorid\\
      \vfill
      Pembimbing II,\\
      \vspace{2.0cm}
      \underline{\@secondsupervisorname}\\
      NIP. \@secondsupervisorid\\
      \vfill
      Mengetahui,\\
      Ketua \@department\\
      \vspace{2.0cm}
      \underline{\@departmentheadname}\\
      NIP. \@departmentheadid\\
    \end{singlespace}
  \end{center}
  \addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
  \pagebreak
}

% ----------------------------------------
% TEMPLAT HALAMAN PERNYATAAN KEASLIAN DAN
% BEBAS PLAGIARISME
% ----------------------------------------
\def\statement{
  \chapter*{\statementname}
  \@statementcontent\\
  \begin{flushright}
    \@city, \@monthsubmit\ \@yearsubmit\\
    Yang membuat pernyataan,\\
    \vspace{2.0cm}
    \@author
  \end{flushright}
  \addcontentsline{toc}{chapter}{HALAMAN PERNYATAAN}
  \pagebreak
}

% ----------------------------------------
% TEMPLAT HALAMAN UCAPAN TERIMA KASIH
% PERSEMBAHAN
% ----------------------------------------
\def\acknowledgment{
  \null
  \vfill
  \begin{flushright}
    \textit{\@acknowledgmentcontent}
  \end{flushright}
  \addcontentsline{toc}{chapter}{HALAMAN PERSEMBAHAN}
  \pagebreak
}

% ----------------------------------------
% TEMPLAT KATA PENGANTAR
% ----------------------------------------
\def\preface{
  \chapter*{\prefacename}
  \textnormal{\noindent \@prefacecontent}\\
  \begin{flushright}
    \@city, \@monthsubmit\ \@yearsubmit\\
    \vspace{2.0cm}
    Penulis
  \end{flushright}
  \addcontentsline{toc}{chapter}{\prefacename}
  \pagebreak
}

% ----------------------------------------
% TEMPLAT ABSTRAK
% ----------------------------------------
\def\abstract{
  \begingroup
    \begin{center}
      \begin{singlespace}
        \MakeUppercase{\@title}\\
        \vspace{1.5cm}
        Oleh\\
        \@author\\
        \@studentid
      \end{singlespace}
    \end{center}
    \vspace{2.5cm}
    \renewcommand{\cleardoublepage}{}
    \renewcommand{\clearpage}{}
    \chapter*{\abstractname}
    \begin{singlespace}
      \fontsize{11pt}{12pt}\textnormal{\noindent \@abstractcontent\\\\
      Kata kunci: \@abstractkeywords}
    \end{singlespace}
    \addcontentsline{toc}{chapter}{\abstractname}
  \endgroup
  \pagebreak
  \begingroup
    \selectlanguage{english}
    \begin{center}
      \begin{singlespace}
        \textit{\MakeUppercase{\@titleen}}\\
        \vspace{1.5cm}
        \textit{Arranged by}\\
        \textit{\@author}\\
        \textit{\@studentid}
      \end{singlespace}
    \end{center}
    \vspace{2.5cm}
    \renewcommand{\cleardoublepage}{}
    \renewcommand{\clearpage}{}
    \chapter*{\textit{\abstractname}}
    \begin{singlespace}
      \fontsize{11pt}{12pt}\textit{\noindent \@abstractencontent\\\\
      Keywords: \@abstractenkeywords}
    \end{singlespace}
  \endgroup
  \pagebreak
}

% Silakan muat paket-paket lain di sini
\usepackage{afterpage}
\usepackage{blindtext}
\usepackage{longtable, booktabs}
\usepackage[nopatch=footnote]{microtype}
\usepackage{calc}
\usepackage{array}
\usepackage{pdflscape}
\usepackage{gensymb}
\usepackage{amsmath}
\usepackage{float}
\usepackage{relsize}
\usepackage{mfirstuc}
\usepackage{wrapfig}
\usepackage{multirow}
\usepackage{pifont}
\usepackage{color, colortbl}
\usepackage{hhline}
\usepackage{algorithm}
\usepackage{algorithmic}
% ----------------------------------------
% LAIN-LAIN
% ----------------------------------------
% Membuat variabel baru
% untuk gaya penulisan tabel
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}} % left aligned table cell
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}} % left aligned table cell
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}} % center aligned table cell
% \definecolor{gray}{gray}{0.9}
