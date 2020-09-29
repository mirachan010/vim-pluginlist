# codic-web vim plugin

A plugin of http://codic.jp/ programming naming search for Vim; That use API or "Inbox Codic dictionary".

Forked from [koron/codic\-vim: Codic vim plugin](https://github.com/koron/codic-vim).

## Usage

To search a word of under their cursor.

```
:CodicWeb
```

Or give a word as an argument.

```
:CodicWeb ベクター
```

To close "codic" result window, just type `<C-W><C-Z>` or `<C-W>z`.  It is a just
preview window.

### Unite Source

Only work unite source for original plugin.

## Dictionaries

### Web Access

If you set API token to `g:codicweb_token`, use codic web service access.

Need `curl`, `wget`, or work `Python`.

### Local Dictionaries

If do not set token, use inbox dictionary.

## Special Thanks

* [koron at codic\-vim](https://github.com/koron/codic-vim)
* [Linda\_pp](http://rhysd.hatenablog.com/entry/2014/01/04/152927)
* [osyo-manga](http://d.hatena.ne.jp/osyo-manga/20140104/1388844035)

## License

Source codes are distributed under Vim License.
Dictionaries are redistributed under Creative Commons License (CC BY-SA 3.0).
