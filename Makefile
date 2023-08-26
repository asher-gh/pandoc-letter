date := date="$(shell date '+%a, %d %h %Y')"

%:	./source/%.md
	pandoc --template=template-letter.tex \
	-V $(date) \
	source/$@.md -o publish/$@.pdf \
	&& xdg-open publish/$@.pdf
