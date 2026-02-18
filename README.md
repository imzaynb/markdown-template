# Basic Markdown Template

I often find myself editing Markdown files within my console text editor of choice (Neovim!)---case in point, this `README.md` file. One nicety when making Markdown files is being able to see a live preview of what the Markdown file looks like. This is a simple template that provides this functionality.

## Installation Instructions

This setup uses a couple of components. 

1) This setup uses `texlive`, which is a LaTeX development package. This is because the Markdown files are first converted to LaTeX before being compiled to a PDF. This handles the LaTeX to PDF conversion.

2) This setup uses `pandoc`, which is a document format converter. This is what converts the Markdown file to LaTeX, and will also use `texlive` under the hood (all in one line) to convert the LaTeX to a PDF.

3) This setup uses `entr`, which is a simple Linux utility program which watches a file and on change will execute another file. In particular, this program will watch for changes made to the `file.md` file and rerun `pandoc` to compile the file.

OPTIONAL: If you want to see the PDF file, use a PDF viewer. My PDF viewer of choice is `zathura`.

As such, this is how you install the necessary packages.
```bash
sudo apt update
sudo apt install pandoc entr texlive-latex-recommended texlive-fonts-recommended
```

## How to use

In this directory, there is a sample Makefile which includes all of the lines needed to compile a file (which can be changed in the `SOURCE` variable) and see it using `zathura`, my PDF viewer of choice.

Simply run
```bash
make
```
And the Markdown will be compiled to PDF and `zathura` will automatically be opened with compile-on-save functionality.
