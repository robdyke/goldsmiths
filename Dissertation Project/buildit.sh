cd ~/Documents/GoldsmithsCourses/DissertationProject
cat header.tex introduction.tex section1.tex section2.tex section3.tex section4.tex footer.tex > assembled\ document/dissertation.tex
cd 'assembled document'
#SRTING='perl ~/bin/TeXcount.pl section1.tex |grep text|cut -d: -f2'
#
#; echo "sed command" ;echo "/g'"`
#
#sed -ie $SRTING out
#echo $SRTING
perl ~/bin/TeXcount.pl section1.tex |grep text|cut -d: -f2
latex --interaction=nonstopmode dissertation.tex
bibtex dissertation.aux
sed -i -e 's/harvardurl/url/g' dissertation.bbl
latex --interaction=nonstopmode dissertation.tex
pdflatex --interaction=nonstopmode dissertation.tex
evince dissertation.pdf &
