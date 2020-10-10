##About
標準で q にマップされている、いわゆるマクロ機能、 Recording を、名前を付けて保存し、  
Uniteインターフェイスで好きな時に呼び出すプラグインである。


##Variables
- `g:unite_source_recording_char`は 'z' にセットされている。  
これはレジスタ 'z' を Recording 用のレジスタとして使うという意味である。  
これが都合が悪いのなら、別のレジスタを使うようにすること。

- `g:unite_source_recording_directory`は unite-recording がログファイルを作成する  
ディレクトリである。  
デフォルトで`g:unite_data_directory`と同じディレクトリが使われる。


##Interface
- `:Unite recording`  
Recordingを一覧する。default action は set である。  
これは Recording用のレジスタに該当Recordingをセットする。

- `:UniteRecordingBegin`  
新しく Recording を登録する。  
初めに description の入力が求められ、次に Recording が開始される。  
description は Recording の名前として機能する。

- `:UniteRecordingSave`  
引数としてレジスタ名に使われる文字を一つ取る。引数を省略した場合は `g:unite_source_recording_char` が使われる。  
引数として与えられたレジスタの内容を unite-recording に登録する。

- `<Plug>(unite-recording-execute)`  
Recording 用のレジスタを再生する。


##unite-actions
:Unite recording 専用の action である。  

- `set`  
Recording を Recording 用レジスタに set する。  
既定 action である。  

- `execute`  
Recordingをその場で実行する。  

- `add`  
新しく Recording を登録する。  
:UniteRecordingBeginと同じ効果である。  

- `append`  
その Recording に追記する。`q{A-Z}` と同じ効果である。  

- `revise_recording`  
Recording を修正する。修正専用バッファに選択 Recording が書き出される。  
このバッファを :write すると Recording の内容が変更される。  

- `revise_description`  
Recording に付けた名前を修正する。

- `delete`  
Recording を削除する。  

- `sort_ahead`  
その Recording を一段上位に並べる。  

- `sort_behind`  
その Recording を一段下位に並べる。  

