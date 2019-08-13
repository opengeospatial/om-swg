docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor -a stylesheet=../styles/standard.css ./charter/om-swg-charter.adoc -o ./docs/charter/index.html
mkdir docs/charter/images
cp charter/images/*.* docs/charter/images/
