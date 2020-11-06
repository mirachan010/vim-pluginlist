# search-parent.vim

現在開いているファイルからバブルアップしながらファイル・ディレクトリを検索するプラグイン。
sassとかMakefileとか探す用途で使えるはず。


## install
vimrcに以下を追記

NeoBundle 'AtsushiM/search-parent.vim'


## function
### searchparent#File(filename)
現在開いているファイルから上に向かってfilenameのファイルを検索する。
発見した場合、そのファイルのパスを返す。
未発見の場合、空文字('')を返す。

### searchparent#Dir(dirname)
現在開いているファイルから上に向かってdirnameのディレクトリを検索する。
発見した場合、そのディレクトリのパスを返す。
未発見の場合、空文字('')を返す。

### searchparent#Any(name)
現在開いているファイルから上に向かってnameのファイル、もしくはディレクトリを検索する。
発見した場合、そのファイル、もしくはディレクトリのパスを返す。
未発見の場合、空文字('')を返す。
