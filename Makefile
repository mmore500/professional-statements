all: dei.pdf research.pdf teaching.pdf

dei.pdf:
	pandoc dei.md -s -o "dei.pdf" -V geometry:margin=0.5in

research.pdf:
	pandoc research.md -s -o "research.pdf" -V geometry:margin=0.5in

teaching.pdf:
	pandoc teaching.md -s -o "teaching.pdf" -V geometry:margin=0.5in

clean:
	rm -f *.pdf

fresh: clean all

.PHONY: clean fresh
