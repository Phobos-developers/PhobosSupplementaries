Description
-----------

This utility allows you to automatically replace some of the outdated INI entries made using an older version of Phobos when upgrading to a newer version and also apply different kinds of processing "scripts" (while also backing them up) to your INI files. Internally it is simply a wrapper around [GNU sed](https://www.gnu.org/software/sed/) utility.

Usage
-----

You must have the repository (or this particular folder in it) cloned or downloaded.

### Via GUI

Right-click on `MigrationUtility.ps1`, select `Run with PowerShell` and select the needed files.

### Command-line

```bat
sed --regexp-extended --in-place=.backup -f path/to/ScriptFileName.sed path/to/filetoupgrade1.ini path/to/filetoupgrade2.map
```
Contributing
------------

You might find those links helpful:
- [sed scripting reference (in sed manual)](https://www.gnu.org/software/sed/manual/sed.html#sed-scripts)
- [regexp playground](https://regexr.com) (syntax may differ a bit)

Credits
-------
- Metadorius (Kerbiter#3128)

This repository includes a binary distributable of [sed for Windows](https://github.com/mbuilov/sed-windows) patched by [mbuilov](https://github.com/mbuilov) and licensed under [GNU GPLv3](https://www.gnu.org/licenses/gpl-3.0.html).

The sed utility from GNU is licensed under [GNU GPLv3](https://www.gnu.org/licenses/gpl-3.0.html).