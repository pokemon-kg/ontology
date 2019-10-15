
widoco_version="1.4.11"

download-widoco:
	./get_cache_or_download.sh "widoco" "widoco-${widoco_version}-jar-with-dependencies.jar" "https://github.com/dgarijo/Widoco/releases/download/v${widoco_version}/" 

create-widoco-documentation:
	mkdir -p "ontology"
	java -jar "widoco/widoco-${widoco_version}-jar-with-dependencies.jar" -confFile config.properties -ontFile "pokemon.ttl" -outFolder "ontology" -rewriteBase -lang de-en -webVowl -htaccess -rewriteAll