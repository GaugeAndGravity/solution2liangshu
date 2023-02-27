main = TeX/document
latexmk = latexmk -xelatex -cd
outdir = .

main: $(main).tex
	$(latexmk) $<

clean:
	$(latexmk) -c $(main).tex

cleanall:
	$(latexmk) -C $(main).tex
