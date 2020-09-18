# Tabsidebar-Boost

Tabsidebar-Boost adds extra features to [Vim-TabSideBar patch](https://rbtnn.github.io/vim/).

* Adjust tabsidebar width (`tabsidebarcolumns`) automatically
* Quickly jump to another window
* Set project title per tab page by `:TabSideBarBoostSetTitle`

![Set project titles](_images/set-title.png)

# Configuration (example)

```vim
if has('tabsidebar')
	" Jumps to a window quickly
	nmap <Space><Space>  <Plug>(tabsidebar-boost-jump)
	nmap <C-n>           <Plug>(tabsidebar-boost-next-window)
	nmap <C-p>           <Plug>(tabsidebar-boost-previous-window)

	" You can change tab page title
	nnoremap <Space>t    :<C-u>TabSideBarBoostSetTitle<Space><C-r>=get(t:, 'tabsidebar_boost_title', '')<CR>

	" Adjust columns of tabsidebar automatically
	let g:tabsidebar_boost#auto_adjust_tabsidebarcolumns = 1

	" Cool tabsidebar display
	let &g:tabsidebar = '%!tabsidebar_boost#tabsidebar(g:actual_curtabpage)'
endif
```

`<Plug>(tabsidebar-boost-next-window)` and `<Plug>(tabsidebar-boost-previous-window)` jumps to the next / previous window across tab page.
`<Plug>(tabsidebar-boost-jump)` shows prompt, and if you enter a buffer number of a window, it jumps to the specified window quickly.

# Demo

![Demo](_images/demo.gif)
