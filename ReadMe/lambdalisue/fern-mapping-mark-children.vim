# 🌿 fern-mapping-mark-children.vim

[![fern plugin](https://img.shields.io/badge/🌿%20fern-plugin-yellowgreen)](https://github.com/lambdalisue/fern.vim)

[fern.vim](https://github.com/lambdalisue/fern.vim) plugin which add `mark-children` mapping to mark child nodes, leafs, or branches.

## Usage

This plugin automatically add the following actions.

| Mapping | Action                        | Description                                           |
| ------- | ----------------------------- | ----------------------------------------------------- |
|         | `mark-children`               | An alias to `mark-children:toggle`                    |
|         | `mark-children:node`          | An alias to `mark-children:toggle:node`               |
|         | `mark-children:leaf`          | An alias to `mark-children:toggle:leaf`               |
|         | `mark-children:branch`        | An alias to `mark-children:toggle:branch`             |
|         | `mark-children:set`           | An alias to `mark-children:set:node`                  |
|         | `mark-children:unset`         | An alias to `mark-children:unset:node`                |
|         | `mark-children:toggle`        | An alias to `mark-children:toggle:node`               |
|         | `mark-children:set:node`      | Set marks on child nodes of the cursor node           |
|         | `mark-children:unset:node`    | Unset marks on child nodes of the cursor node         |
|         | `mark-children:toggle:node`   | Toggle marks on child nodes of the cursor node        |
|         | `mark-children:set:leaf`      | Set marks on child leaf nodes of the cursor node      |
|         | `mark-children:unset:leaf`    | Unset marks on child leaf nodes of the cursor node    |
|         | `mark-children:toggle:leaf`   | Toggle marks on child leaf nodes of the cursor node   |
|         | `mark-children:set:branch`    | Set marks on child branch nodes of the cursor node    |
|         | `mark-children:unset:branch`  | Unset marks on child branch nodes of the cursor node  |
|         | `mark-children:toggle:branch` | Toggle marks on child branch nodes of the cursor node |
