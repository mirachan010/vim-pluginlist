Tree-View sidebar for [NyaoVim](https://github.com/rhysd/NyaoVim)
=================================================================

This is a UI plugin for [NyaoVim](https://github.com/rhysd/NyaoVim).  You can put a tree-view sidebar in your editor.  This plugin is pre-alpha stage yet.

![screenshot](https://raw.githubusercontent.com/rhysd/ss/master/nyaovim-tree-view/static.png)

## Setup

### 1. Install this repository as Neovim plugin

Please use your favorite plugin manager to install this repository.

### 2. Write `<tree-view>` element to your `nyaovimrc.html`

Below is an example of `~/.config/nyaovim/nyaovimrc.html`:

```html
<dom-module id="nyaovim-app">
<template>
  <style>
    .horizontal {
      display: flex;
      width: 100%;
      height: 100%;
    }
    neovim-editor {
      width: 100%;
      height: 100%;
    }
    #side-bar {
      width: 200px;
      flex: none;
    }
    tree-view {
      font-size: 14px;
      font-family: Monaco, Meiryo, monospace;
      color: #f0f0f0;
      background-color: #333333;
      border-right: solid 2px #666666;
    }
  </style>
  <div class="horizontal">
    <tree-view id="side-bar" editor="[[editor]]"></tree-view>
    <neovim-editor id="nyaovim-editor" argv$="[[argv]]"></neovim-editor>
  </div>
</template>
</dom-module>
```

Here, you can use CSS for `<tree-view>` element; flex layout, foreground/background colors, and border line.

### 3. (Optional) Specify hidden-inset title bar in `~/.config/nyaovim/browser-config.json`

Example:

```json
{
  "window_options": {
    "width": 1000,
    "height": 800,
    "titleBarStyle": "hidden-inset"
  }
}
```

Then set a `inset-title-bar` boolean property to true on `<tree-view>` element.  This is only for OS X.

## Usage

- At start up, current working directory is open in the tree-view.
- You can click '▶' to open a collapsed directory and click '▼' to collapse a directory.
- When you click a directory name, it will be the root directory in tree-view.
- When you click a file name, NyaoVim will start to edit it.
- Some menu icons are at the top of view.
  - Arrow-up icon moves tree-view to parent directory.
  - Eye icon toggles show/hide hidden files.
  - Open icon is not implemented yet.
  - Close icon is not implemented yet.
- `:TreeViewDir {dir}` command will open the directory in tree-view.
- When NyaoVim starts to edit a file, its directory will be set to tree-view.

## License

MIT License.

    Copyright (c) 2016 rhysd

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
    of the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
    INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
    PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
    THE USE OR OTHER DEALINGS IN THE SOFTWARE.

