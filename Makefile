SOURCE = README.md
OUTPUT = $(SOURCE:.md=.pdf)
VIEWER = zathura

all: pdf

pdf:
	pandoc $(SOURCE) -o $(OUTPUT) --pdf-engine=pdflatex

watch:
	$(VIEWER) $(OUTPUT) &
	echo $(SOURCE) | entr make pdf

clean:
	rm -f $(OUTPUT)
	pkill -f "$(VIEWER) $(OUTPUT)" || true

