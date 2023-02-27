main = TeX/document
latexmk = latexmk -xelatex -cd
outdir = .

.PHONY : main clean cleanall

main: $(main).tex
	$(latexmk) $<

clean:
	$(latexmk) -c $(main).tex

cleanall:
	$(latexmk) -C $(main).tex
