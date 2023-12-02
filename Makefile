date := date="$(shell date '+%a, %d %h %Y')"

%:	./source/%.md
	pandoc --pdf-engine=xelatex \
	--template=template-letter.tex \
	-V $(date) \
	source/$@.md -o publish/$@.pdf \
	&& zathura publish/$@.pdf
