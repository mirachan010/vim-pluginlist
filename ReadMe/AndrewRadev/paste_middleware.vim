This plugin is an attempt of mine to unify the effects of different pasting plugins. The idea is that each plugin can paste the text, then this one could fetch it from the `'[` and `']` marks, delete it and then hand it over to the next plugin. Unfortunately, I ran into some trouble, so for now, this plugin is considered "archived". I may find solutions to these in the future, or someone else might help out. There is just a small chance for either of these, but I' m keeping the code around just in case.

Problems:

  - Pasting on the first or last line is tricky, especially if the plugin changes the amount of lines.
  - Making this work with characterwise and blockwise pasting is a complete mystery to me.
