#to make up default make conmand.It don't support .tex file transfer to .pdf straightly
TEX = xelatex
#%.tex:

#%: %.tex 
#  要执行的命令 (自己设置)：
paper.pdf: BIBbase/ref.bib paper.tex includefile/*.tex
	$(TEX) paper.tex
#	bibtex paper.aux
	$(TEX) paper.tex > /dev/null
	$(TEX) paper.tex > /dev/null
# > /dev/null
#	@rm -f $@.aux $@.log  2> /dev/null
# 2> /dev/null
	
