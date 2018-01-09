README.md:
	touch README.md
	echo "# Guessing Game" > README.md
	echo " " >> README.md
	echo "## **make** was run on:" >> README.md
	date >> README.md
	echo " " >> README.md
	echo "## The number of line of code contained in **guessinggame.sh** is:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
