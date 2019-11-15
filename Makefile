# need to install texlive texlive-moderncv
#
#

NAME = JNovotna
TEX = pdflatex

all: $(NAME).pdf

$(NAME).pdf: cv_complete.tex cv_header.tex cv_body.tex
	$(TEX) -jobname=$(NAME) cv_complete.tex

cover:
	$(TEX) -jobname=$(NAME)cl coverletter.tex


clean:
	rm -f *.aux  *.log  *.out  *.pdf 
