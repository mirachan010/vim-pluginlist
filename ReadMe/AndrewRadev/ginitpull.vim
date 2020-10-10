## Usage

The plugin exposes a single command:

```
:Ginitpull [remote-name] [branch-name]
```

Calling it initiates a github pull request in the default browser, from the given branch name to master on the given remote. Both arguments are tab-completed.

If called without any arguments, defaults to the "origin" remote and the current branch name, which is probably what you usually want.

At this time, it only works with Github remotes. If you'd like to add support for Bitbucket or Gitlab PRs, I would appreciate a PR, since I don't have any repositories of my own there to test with. Even if you don't make a PR, because you don't have the Vimscript skills, please open an issue and explain how PRs work on whatever platform you need. I'll try to implement it.

## Settings

The only "setting" of sorts is the mechanism to open URLs. If you have a global function defined named `OpenURL(url)`, the plugin will use that. If not, it will call the built-in `netrw#BrowseX` function, the same one that the `gx` mapping uses.
