README.md: guessinggame.sh
	echo "#Coursera git project#" > README.md
	echo "**TITLE:** " "*guessing-game*" >> README.md
	echo "**DATE:** " $(shell date +%c)  >> README.md
	echo "**NUMBER OF LINES**: " $(shell wc -l < guessinggame.sh) >> README.md
