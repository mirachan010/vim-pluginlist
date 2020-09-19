# Vimongous
## Query your MongoDB data inside Vim

Vimongous is a Vim plugin for querying a MongoDB database from inside Vim. It relies on [Venode](https://github.com/tingham/Venode) for query execution.

## Why?

1. MongoDB lacks a decent multi-line query tool with the ability have multiple query windows open (think SQL Server Management Studio)
2. Vim rocks and therefore constructing queries with it also rocks

## Usage

Vimongous relies on a C #pragma-like syntax for setting the DSN for queries run in the current buffer.

After setting the //#dsn pragma, use Visual Mode to select the chunk of query text you want to run, and use <leader>mq (*Mo*ongo *Q*uery) to execute it.

I may potentially add additional options using the same syntax in the future (or feel free to add your own!).

## Example
See the example query buffer below:

	//#dsn mongodb://localhost/products

	db.widgets.find({
		Name: /Widget/
	})
	.sort({
		Cdate: -1
	})
