# gql.vim
gql.vim is a plugin that calls GraphQL API.

![](https://i.imgur.com/lYaJyLH.png)

## Requrements
- curl

## Recommend
- jq

## Installtion
e.g dein.vim

```toml
[[plugins]]
repo = 'skanehira/gql.vim'
```

## Usage
e.g GitHub API
```graphql
{
   "query": "query { repository (owner: \"skanehira\", name: \"docui\") { stargazers { totalCount } } }"
}
```

```vim
" post current buffer contents
:GraphQL https://api.github.com/graphql

" post selected buffer range contents
'<,'>GraphQL https://api.github.com/graphql
```

## Options
| variables                   | desciption                                                                                   |
|-----------------------------|----------------------------------------------------------------------------------------------|
| `g:gql_authorization_token` | If you wanto use `Authorization: bearer {token}` header, you can set token to this variable. |

## Author
skanehira
