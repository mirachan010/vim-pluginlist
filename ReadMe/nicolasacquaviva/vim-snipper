# vim-snipper

<img src="https://user-images.githubusercontent.com/30126180/93730060-628bfc80-fb9d-11ea-95bb-e8c87280b094.gif" width="700">

## Needed vim configuration

File with the defined snippets.

```vim
let g:snippets_file = $HOME . "/dotfiles/vim-snippets.json"
```

## Example snippets file

The file needs to be a json with the [following structure](https://raw.githubusercontent.com/nicolasacquaviva/vim-snipper/master/vim-snippets.example.json):

```json
{
  "ReactComponent": [
    "import React from 'react';",
    "",
    "type Props = {};",
    "",
    "function Component({}: Props) {}",
    "",
    "export default Component;"
  ],
  "ReduxSelector": [
    "import { State } from './State'",
    "",
    "export const selector = (state: State) => {};"
  ]
}
```

A config like the one above will expose two snippets commands `VSReactComponent` and `VSReduxSelector`, each one
will generate the corresponding value.
