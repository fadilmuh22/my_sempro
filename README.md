# My Seminar Proposal Project

## How to run this project in Ubuntu

### Step 1: Install latex

```bash
sudo apt install texlive-full
```

It will install all latex packages in your system. roughly 4GB of data will be downloaded and 7gb installed.

### Step 1 (alternative): Install latex

```bash
sudo apt install texlive-latex-extra texlive-extra-utils latexmk texlive-lang-other
```

It will install necessary package to run this project.
And also install Bahasa Indonesia language package.

### Step 2: Install LaTex Workshop in vscode

Open vscode and install LaTex Workshop extension.

## Working on with this project

### Project structure

- `main.tex` is the main file of the project.
- `references.bib` is the bibliography file. I recommend to use [Zotero](https://www.zotero.org/) to manage your references and using [Better BibTex](https://retorque.re/zotero-better-bibtex/) to export your references to `references.bib`.
- `contents/` is the directory where you put your sections. By default it will search for `chapter[1-5].tex` files. You can change this in `main.tex` file.
- `images/` is the directory where you put your images.

<!-- add credits to the original author https://github.com/naruaika/templat-skripsi-upi -->

## Credits

This project is based on [naruaika/templat-skripsi-upi](https://github.com/naruaika/templat-skripsi-upi) project.
