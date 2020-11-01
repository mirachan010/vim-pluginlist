# file_template.vim
file template

## 安装  


## 添加模板  
在templates目录下添加对应文件后缀的模板，比如python的是py.ftemplaet，模板的  
后缀为ftemplate。在模板文件里面可以定义需要的模板。可以使用宏，宏的定义在  
修改宏的章节  

## 修改宏  
在templates/macro中定义宏，宏以两条竖线包起来，然后用等号赋为宏的值模板插入  
时会自动展开。比如'|AUTHOR| = tenfyzhong'。宏的值不能包含'|'，否则会被替换成  
'\_'。  
有几个固定的宏：|YEAR|, |MONTH|, |DAY|, |TIME|, |FILE|, |DATETIME|  

## 定制
g:file\_template\_ignore\_filetype:     
必须是列表类型，后缀间用逗号隔开  
要忽略的文件类型，对这些类型的文件不插入模板  
eg:  
let g:file\_template\_ignore\_filetype = ['cpp', 'c', 'sh']   
          

g:local\_template\_dir:  
必须是string类型
本地模板的路径，会优先使用本地模板下的文件  
如果本地模板下没有对应的文件，则去插件模板路径上找  
eg:  
let g:local\_template\_dir = '~/.vim/resource/file\_template'  
