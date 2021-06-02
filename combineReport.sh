pdftk $1 cat 1-2 output cover.pdf
pdftk $2 cat 3-$(pdfinfo $2 | grep -i pages | sed 's/ //g' | awk -F':' '{print $2}') output isi.pdf 
pdftk cover.pdf isi.pdf cat output result.pdf