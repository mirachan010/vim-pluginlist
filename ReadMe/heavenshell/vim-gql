# vim-gql

![build](https://github.com/heavenshell/vim-gql/workflows/build/badge.svg)

Execute Graphql's query in vim.

## Usage

Set server settings to your vimrc.

```vim
let g:gql_servers = [
  \ {
  \   'host': 'https://api.github.com/graphql',
  \   'headers': {'Authorization': 'bearer YOUR_TOKEN'},
  \ },
  \ {
  \   'host': 'http://localhost:8080/.netlify/functions/index',
  \   'headers': {'Content-Type': 'application/json'},
  \ },
  \]
```

Execute `Gql` command.

```vim
:Gql -server=https://api.github.com/graphql $owner=YOUR_ACCOUNT
```

## Screencasts

![with variable](./assets/vim-gql_variable.gif)
![with tsx](./assets/vim-gql_tsx.gif)

## Requirement

This plugin need [webapi-vim](https://github.com/mattn/webapi-vim).

## License

New BSD License
