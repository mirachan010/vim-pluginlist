# golint-fixer.vim
[![Build Status](https://travis-ci.org/tenfyzhong/golint-fixer.vim.svg?branch=master)](https://travis-ci.org/tenfyzhong/golint-fixer.vim)


A vim tool for fix goling warnings, which generate by 
[vim-go](https://github.com/fatih/vim-go) or [ale](https://github.com/w0rp/ale).  


# Demo
[![golint-fixer-demo-pic](http://ac-HSNl7zbI.clouddn.com/pdBWqOkOCoFGw8BkNQT7joRgRGGT1T3jiBc98IXE.jpg)](https://vimeo.com/220190594)

# Install
## Use a plugin manager
for [vim-plug](https://github.com/junegunn/vim-plug):  
Add `PlugAdd 'tenfyzhong/golint-fixer.vim'` to you .vimrc if you use .

## Manual
1. clone the repo. 
```sh
git clone https://github.com/tenfyzhong/golint-fixer.vim.git ~/.vim/bundle
```
2. add `rtp+=~/.vim/bundle/golint-fixer.vim` to you .vimrc


# Dependence
[vim-go](https://github.com/fatih/vim-go) or [ale](https://github.com/w0rp/ale) 


# Usage
1. Use vim-go or ale to lint check. It'll add the warning to the quickfix or loclist. 
2. Go to the warning line. Run command `:GoLintFix` or nmap `<leader>lf`(if used). 


# Command
`:GoLintFix`  
Try to fix the warning. 


# Nmap
`<leader>lf`, if `g:golint_fixer_use_default_mapping` equal 1.  
Try to fix the warning. 


# Setting
## `g:golint_fixer_use_default_mapping`
Type: bool  
Default: 1  
Map `<leader>lf` to fix warning.   
`let g:golint_fixer_use_default_mapping = 1`  

## `g:golint_fixer_use_go_rename`
Type: bool  
Default: 1  
Use `:GoRename` to rename identify if usable.   
`let g:golint_fixer_use_go_rename = 1`  

