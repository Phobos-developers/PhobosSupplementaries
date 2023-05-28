# reference: https://www.gnu.org/software/sed/manual/sed.html#sed-scripts
# regexp playground (syntax may differ a bit): https://regexr.com

s/^(;+.*)?(\[.+\]):\[(.+)\](.*)/\1\2\4\n\1$Inherits=\3/I