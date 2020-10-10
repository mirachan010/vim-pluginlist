# laptime.vim

Vim scriptの2点間の実行時間を計測する。
中間点の計測も出来る。

## Usage

計測を始めたい行に、以下のような記述をしてください。
```vim
	let lt = laptime#new()
```
中間経過時間を記録したい行に以下のような記述をしてください。複数記述できます。
```vim
	call lt.lap()
```
計測を終了したい行に、以下のような記述をしてください。
```vim
	call lt.end()
```
ここまででひとまとまりの記録として扱われます。
これの計測結果を見たい時には、以下の記述で表示できます。
```vim
	call lt.show()
```
また、`g:laptimes` にそれまでの計測結果が記録されているので、過去の記録を閲覧
したい時などには、以下のコマンドでできます。
```vim
	:call g:laptimes.show()
```

## Docs
see `:h laptime`
