# Thesis
it's a private repository to help finishing my Master degree thesis

###Notice:
1.To clone this repository in a new pc, use:</br>
git clone https://github.com/DearDon/Thesis.git,  to checkout and build a directory named after Thesis.</br>
Or</br>
git clone https://github.com/Deardon/Thesis.git myThesis, to checkout and rename the directory as myThesis.

2.To push a new change from local to github, use following three step orders:</br>
a.git add *</br>
b.git commit -m "comment"</br>
c.git push origin master(first time add -u to bind master of two sides),  or git push(new version of git)

3.To pull a closer version from github to local, use:</br>
git pull

###模板问题：
1.原来的参考文献样式文件whuthesis.bst中有一处拼写错误。在2009行原来为"output.continue.year.check ouput"，最后的ouput明显应该为output，否则可能编译时出现ouput未定义的错误。

2.文献样式对book类型的处理有bug,要求book中的entry必须有author,booktitle,publisher,address,year,而且不能包含title,pages，否则编译会出现pop an empty literal stack for entry样式的错误，这种错误都是缺少或多余一些entry时出现的。但是book类型在最后的参考文献中却无法输出booktitle中定义的标题，用在booktitle后定义title虽然能使显示正常，但会报错。因不了解bst文件语法不好修改样式文件，此处用了一个折衷方法,将booktitle保留，同时添加edition（或其它可有可无的entry,找与标题出现位置一致的entry即可）并把标题内容写入该entry内容，这便可让它在引文处显示，还保证编译不出错。

3.文献样式对article类型，要求必须有的entry是Title,Author,Journal,Year,Pages,Volume
