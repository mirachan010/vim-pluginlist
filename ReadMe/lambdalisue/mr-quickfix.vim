# 🎩 mr-quickfix.vim

_mr-quickfix.vim_ (mr-quickfix) is a plugin of [mr.vim](https://github.com/lambdalisue/mr.vim) which provides `Mru` and `Mrw` commands to record MRU and MRW to `quickfix`.

### Usage

Use `Mru` or `Mrw` with `copen` like:

```
:Mru | copen
:Mrw | copen
```

Or specify a path to get local MRU/MRW like:

```
:Mru . | copen
:Mrw . | copen
```

Or

```
:Mru %:h | copen
:Mrw %:h | copen
```

Or

```
:Mru /some/path | copen
:Mrw /some/path | copen
```
