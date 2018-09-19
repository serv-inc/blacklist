zip: lint
	cd addon; zip ../blacklist.zip *

lint:
	jshint addon/*.js || echo "=== INSTALL JSHINT TO CHECK JS FILES ==="
	python -m json.tool addon/manifest.json > /dev/null
	tidy -eq addon/blockpage.html

updatelist:
	cd meta; ./updatelist.sh >> ../addon/background.js
