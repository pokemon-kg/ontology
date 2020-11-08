WIDOCO_VERSION="1.4.15-pre"

create-widoco-documentation:
	docker run -v "$(shell pwd):/ont" "khaller/widoco:${WIDOCO_VERSION}" \
		-confFile /ont/config.properties \
		-ontFile /ont/pokemon.ttl \
		-outFolder /ont/pokeont \
		-lang "en" \
		-webVowl \
		-rewriteAll
