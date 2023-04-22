# Mobile Metadata Viewer


## Metadata API Folder
This folder is a placeholder to retrieve the contents of the managed package from the packaging org in mdapi format using the
```
sfdx force mdapi retrieve -s -r ./mdapi -u mobile-metadata-viewer -p "Mobile Metadata Viewer"
```
command.  This is really only helpful to the author (me) since I'm the only one who has access to the packaging org (for now).
It's shown here for transparency and learning purposes.

## Scripts Folder
All scripts are meant to be ran from the project root. __THIS IS IMPORTANT!__ Directories and files are referenced with relative paths that assume this.

### Scripts/Shell Folder
__IMPORTANT__: These scripts are written in zsh (because OhMyZsh is amazing).  It's very important that, to run them you do __NOT__ use "sh" but instead:
* If you're running zsh, use the dot operator (.) or the source command
```
. retrievePackageAndConvertToSourceFormat.sh
```
or
```
source retrievePackageAndConvertToSourceFormat.sh
```
* If you're __NOT__ running zsh, specifically call zsh to run the script
```
zsh retrievePackageAndConvertToSourceFormat.sh
```