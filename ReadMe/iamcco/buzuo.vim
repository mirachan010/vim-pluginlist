# buzuo.vim

Lightweight and easy to use todo management in vim/neovim inspired by [todoapp.vim](https://github.com/neoclide/todoapp.vim)

Why create this ?

Because todoapp.vim just management todo list only with the title, and i want to manage different todo list and more content for each item.

![screenshot](https://user-images.githubusercontent.com/5492542/35185417-289d81b4-fe3f-11e7-91c3-c841482fc639.png)

### required

* denite.nvim plugin
* sqlite3

### Install

example for vim-plug:

```
Plug 'Shougo/denite.nvim'
Plug 'iamcco/buzuo.vim'
```

Install sqlite3:

> for macos `brew install sqlite3`

### Usage

**config:**

* `g:buzuo_database_path` is the database path, default is: `~/.buzuo/buzuo.database`
* `g:buzuo_category_candidate` are the categories for todo list, default is: `['work', 'study', 'personal']`
* `g:buzuo_category_default` is the default category if you don't specify, default is the first one of `g:buzuo_category_candidate`
* `g:buzuo_type_candidate` are the types for todo list, default is: `['now', 'shortterm', 'longterm']`
* `g:buzuo_type_default` is the default type if you don't specify, default is the first one of `g:buzuo_type_candidate`

**command:**

* `:Buzuo` same as `:Denite buzuo`, it will list the todo list with the default category and type
* `:Buzuo list` same as `:Buzuo`
* `:Buzuo init` create the database, you need to do this once install plugin
* `:Buzuo add` add an todo item, it can take args to specify cateogry and type: `:Buzuo add:work` or `:Buzuo add:work:now`

**Denite source:**

* `:Denite buzuo` show todo list of default category and type
* `:Denite buzuo:work` show todo list of work category and default type
* `:Denite buzuo:work:now` show todo list of work category and now type
* `:Denite buzuo:/` show all cateogry todo list of default type
* `:Denite buzuo:/:/` show all todo list

**Denite actions:**

* `preview` preview the content of the todo item
* `toggle` change the todo item's status
* `edit_title` edit todo item's title
* `edit_content` edit todo item's content
* `delete` delete todo item
* `add` add todo item
* `switch_category` switch different category todo list
* `switch_type` switch different type todo list
* `switch_status` switch different status todo list
* `list_all` list all todo list

> default action is `edit_content`
