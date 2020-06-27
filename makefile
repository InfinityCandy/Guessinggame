all: README.md

README.md:
	touch README.md
	echo "# Guessinggame" >> README.md
	echo "## Date" >> README.md
	date >> README.md
	echo "\n" >> README.md
	echo "## Lines of code" >> README.md
	echo " " >> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md
     
 
