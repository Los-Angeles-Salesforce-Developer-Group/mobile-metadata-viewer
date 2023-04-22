#! /bin/zsh -
setopt extendedglob
rm -rf -- mdapi/*~*.md
sfdx force mdapi retrieve -s -r ./mdapi -u mobile-metadata-viewer -p "Mobile Metadata Viewer"
unzip mdapi/unpackaged.zip -d mdapi
rm mdapi/unpackaged.zip
rm -rf -- force-app/*.*~*.md
sfdx force mdapi convert -r mdapi -d force-app
rm manifest/package.xml
cp mdapi/package.xml manifest