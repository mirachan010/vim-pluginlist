*Note: This was hacked together in like half an hour or something. It is not ready at all. It will most likely remain unfinished for at least a few weeks more.*

A plugin that helps with translating strings in rails. Given a piece of view code like this:

``` erb
<h1>Hello, World!</h1>
```

We need to add it to the translation file. To do this, first we change it to this:

``` erb
<h1><%=t 'Hello, World!' %></h1>
```

Then, mark the text in visual mode and execute `:Rtranslate views.hello heading`. This should result in the text being changed to this:

``` erb
<h1><%=t 'views.hello.heading' %></h1>
```

And an entry will be added in `config/locales/en.yml`:

``` yaml
views:
  hello:
    heading: Hello, World!
```

This will currently only work if the `views.hello` path already exists and I'm not even sure if it'll handle indentation properly. As noted above, this is very not finished for now.
