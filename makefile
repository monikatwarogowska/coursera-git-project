README.md: guessinggame.sh
	echo "<h1> Coursera git project </h1>\n" > README.md
	echo " **TITLE:** guessinggame.sh \n" >> README.md
	echo " **DATE:** " $(shell LANG=en_us_8859_1 date +%c) "\n" >> README.md
	echo " **NUMBER OF LINES**: " $(shell wc -l < guessinggame.sh) >> README.md
