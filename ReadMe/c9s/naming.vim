
# Naming Convention

This plugin converts naming convention for you. 

eg. rename getConfigLoader => get\_config\_loader or get\_config\_loader to getConfigLoader

This plugin provides two functions:

### Visual Mapping

Use visual-block mode to select word, press `_` key twice to convert name.

Use visual-block mode to select word, press `_g` to convert names (replace all words in current buffer)

### Command

    com! -range=% -nargs=1 ConvertNamingConvention  :cal s:cConvertNamingConvention( <line1>, <line2>, <q-args> )

use command `ConvertNamingConvention` to convert names. eg.

    :ConvertNamingConvention get_config

Range is allowed.

### Autoload/Global functions

    " naming to case-seperated name
    naming#namingCS(word)

    " naming to delimiter-seperated name
    naming#namingDS(word)

    g:smartNamingConvention(word)
