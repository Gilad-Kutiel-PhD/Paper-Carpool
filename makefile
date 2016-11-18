zip:
	rm src.zip;zip -r src.zip src

flat:
	mkdir -p tmp;cd src; ../latexpand main.tex > ../tmp/main.tex; cp main.bib ../tmp/

clean:
	git clean -dfx
