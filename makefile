presentation.pdf:
	latexmk -pdf -pdflatex="lualatex --shell-escape" -use-make presentation.tex

.PHONY: presentation.pdf
	
%.pdf: %.svg
	svg2pdf -o $@ $^

qr-demo-repo.svg: qr-demo-repo.sh
	./qr-demo-repo.sh