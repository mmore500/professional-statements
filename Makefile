all: dei.pdf research.pdf teaching.pdf

dei.pdf:
	pandoc dei.md -s -o "dei.pdf" -V geometry:margin=0.5in --bibliography bibl.bib --citeproc

research.pdf:
	pandoc research.md -s -o "research.pdf" -V geometry:margin=0.5in --bibliography bibl.bib --citeproc

teaching.pdf:
	pandoc teaching.md -s -o "teaching.pdf" -V geometry:margin=0.5in --bibliography bibl.bib --citeproc

clean:
	rm -f *.pdf

fresh: clean all

tidy:
	bibtex-tidy --omit=abstract,keywords --curly --numeric --space=2 --align=0 --sort=key --duplicates=key,doi --merge=combine --strip-enclosing-braces --drop-all-caps --no-escape --sort-fields=title,shorttitle,author,year,month,day,journal,booktitle,location,on,publisher,address,series,volume,number,pages,doi,isbn,issn,url,urldate,copyright,category,note,metadata --trailing-commas --remove-empty-fields --no-backup bibl.bib

.PHONY: clean fresh
