# Vim Rubygems

The vim-rubygems plugin provides ability to work with rubygems.org inside Vim and adds some commands to keep Gemfile up to date.

# Features

* general information for selected gem (version, authors, summary, built date, downloads, description)
* versions list for selected gem (version, built date)
* last version for selected gem (version, built date)
* append a version for a gem under cursor
* gems search
* [bundler-audit](https://github.com/rubysec/bundler-audit) integration. The plugin runs `bundle-audit` command while saving Gemfile and let you know about outdated vulnerable gems.

## Requirements

* Vim 7.3+
* [webapi-vim](https://github.com/mattn/webapi-vim)
* `curl` or `wget` commands
* `bundler-audit` gem (optional)

## Installation
The plugin is compatible with Vundle/Pathogen.  

An example for Vundle:

```
Bundle 'alexbel/vim-rubygems'
```

Then run `:BundleInstall` to install the plugin.

## Usage

The plugin provides the following commands:  

* :RubygemsGemInfo
* :RubygemsVersions
* :RubygemsRecentVersion
* :RubygemsAppendVersion
* :RubygemsSearch gem_name
* :RubygemsGemfileCheck
* :RubygemsBundleAudit

## Mappings example (optional):
```
nnoremap <leader><leader>g :RubygemsRecentVersion<cr>
```

## TODO
* ✔ Syntax highlighting
* ✔ Show a list of versions for a gem
* ✔ Append gem version for a gem
* ✔ Active gems search
* ✔ Check Gemfile for outdated gems
* Tests
