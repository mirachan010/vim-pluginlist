# 🌿 fern-mapping-quickfix.vim

[![fern plugin](https://img.shields.io/badge/🌿%20fern-plugin-yellowgreen)](https://github.com/lambdalisue/fern.vim)

[fern.vim](https://github.com/lambdalisue/fern.vim) plugin which add `quickfix` and `loclist` mapping to send selected nodes to that.

## Usage

This plugin automatically add the following actions.

| Mapping | Action             | Description                                                                  |
| ------- | ------------------ | ---------------------------------------------------------------------------- |
|         | `quickfix`         | Alias to `quickfix:new`                                                      |
|         | `quickfix:new`     | Create a new quickfix with the selected nodes                                |
|         | `quickfix:add`     | Add selected nodes to the current quickfix                                   |
|         | `quickfix:replace` | Replace the current quickfix with the selected nodes                         |
|         | `loclist`          | Alias to `loclist:new`                                                       |
|         | `loclist:new`      | Create a new location list of the fern window with the selected nodes        |
|         | `loclist:add`      | Add selected nodes to the current location list of the fern window           |
|         | `loclist:replace`  | Replace the current location list of the fern window with the selected nodes |
