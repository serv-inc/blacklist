zip: lint
	cd addon; zip ../blacklist.zip *

lint:
	command -v jshint || echo "=== INSTALL JSHINT TO CHECK JS FILES ==="
	command -v jshint && jshint addon/*.js
	python -m json.tool addon/manifest.json > /dev/null
	tidy -eq addon/blockpage.html

updatelist: adult
	cd meta; ./updatelist.sh >> ../addon/background.js

adult:
	cd meta && wget -N ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/adult.tar.gz && tar xf adult.tar.gz
