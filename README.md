# Thesis
it's a private repository to help finishing my Master degree thesis

###Notice:
1.To clone this repository in a new pc, use:</br>
$git clone https://github.com/DearDon/Thesis.git</br>
to checkout and build a directory named after Thesis. Or</br>
$git clone https://github.com/Deardon/Thesis.git myThesis</br>
to checkout and rename the directory as myThesis.

2.To push a new change from local to github, use following three step orders:</br>
a.$git add *</br>
b.$git commit -m "comment"</br>
c.$git push origin master</br>
first time add -u to bind master of two sides,like</br>
$git push -u origin master</br>
After that, you can also use a simple one(new version of git only) as</br>
$git push

3.To pull a closer version from github to local, use:</br>
$git pull

###模板问题：
1.原来的参考文献样式文件whuthesis.bst中有一处拼写错误。在2009行原来为"output.continue.year.check ouput"，最后的ouput明显应该为output，否则可能编译时出现ouput未定义的错误。

2.文献样式对book类型的处理有bug,要求book中的entry必须有author,booktitle,publisher,address,year,而且不能包含title,pages，否则编译会出现pop an empty literal stack for entry样式的错误，这种错误都是缺少或多余一些entry时出现的。但是book类型在最后的参考文献中却无法输出booktitle中定义的标题，用在booktitle后定义title虽然能使显示正常，但会报错。因不了解bst文件语法不好修改样式文件，此处用了一个折衷方法,将booktitle保留，同时添加edition（或其它可有可无的entry,找与标题出现位置一致的entry即可）并把标题内容写入该entry内容，这便可让它在引文处显示，还保证编译不出错。

3.文献样式对article类型，要求必须有的entry是Title,Author,Journal,Year,Pages,Volume

4.文章末所列的参考文献条目没有按2016年硕士论文要求排序，学校要求按作者名字母排序，中文名排最前，然后再排英文。该模型按引用顺序按的，由于该模板只用一次，也没想折腾了。只要最后版本将bibtex编译出来的bbl文件手动修改顺序或内容使其满足要求，之后编译不再运行bibtex，只运行xelatex，这样文章只会使用bbl中的内容了。
