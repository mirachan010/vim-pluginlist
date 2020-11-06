## ethnaのbackendをサポートするためのプラグイン
 
### 1. 参考元
**ethna-switch**


https://github.com/taku-o/vim-ethna-switch


### 2. 使い方
#### 2.1 GenericDao<->TdGatewayの移動
```vimrc
:GTG " TdGatewayからGenericDAOを開く
:GTT " GenericDAOからTdGatewayを開く

<C-X><C-G><C-D> " cnoremapでGenericDaoのディレクトリを挿入する
<C-X><C-T><C-G> " cnoremapでTdGatewayのディレクトリ挿入する
```
