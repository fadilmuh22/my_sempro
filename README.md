# My Seminar Proposal Project

## How to run this project in Ubuntu

### Step 1: Install latex

```bash
sudo apt install texlive-full
```

It will install all latex packages in your system. roughly 4GB of data will be downloaded and 7gb installed.

### Step 1 (alternative): Install necessary package

```bash
sudo apt install texlive-latex-extra texlive-extra-utils latexmk texlive-lang-other
```

It will install necessary package to run this project.
And also install Bahasa Indonesia language package.

Optional install tex-fmt

```bash
cargo install tex-fmt
```

### Step 2: Install LaTex Workshop in vscode

Open vscode and install LaTex Workshop extension.

### Step 3: Run add-lib

```bash
make add-lib
```

It will copy biblatex file for citation with Bahasa Indonesia

### Step 4: Run the project

```
make
```

### Step 4 (alternative): Run via vscode

Open `main.tex` file and save the file to build the project.
Or you can run `LaTex Workshop: Build with recipe and choose latexmk` in vscode command.

## Working on with this project

### Project structure

- `main.tex` is the main file of the project.
- `references.bib` is the bibliography file. I recommend to use [Zotero](https://www.zotero.org/) to manage your references and using [Better BibTex](https://retorque.re/zotero-better-bibtex/) to export your references to `references.bib`.
- `contents/` is the directory where you put your sections. By default it will search for `chapter[1-5].tex` files. You can change this in `main.tex` file.
- `images/` is the directory where you put your images.

<!-- add credits to the original author https://github.com/naruaika/templat-skripsi-upi -->

## Credits

This project is based on [naruaika/templat-skripsi-upi](https://github.com/naruaika/templat-skripsi-upi) project.
