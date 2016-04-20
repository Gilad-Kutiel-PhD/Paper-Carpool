zip:
	rm src.zip;zip -r src.zip src

flat:
	python3 -m flap src/main.tex tmp/

clean:
	git clean -fx
