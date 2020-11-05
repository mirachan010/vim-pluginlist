# Committed
A Vim plugin to track files to commit for use with "monolithic" changeset 
VCSes like Subversion and Mercurial.

What do I mean by "monolithic"? I suppose what I mean is "not git," meaning 
that the VCS doesn't have the "staging area" (or "index") functionality of 
git, so if you want to commit selectively you have to list the files on the 
command line or supply them in some explicit manner.

This plugin exposes functions to make it drop-dead simple to add and remove 
files that you are editing to a "commit list," which is a simple text file 
listing their full paths. It will let you know if a file you are editing is 
already in the commit list and remind you which commit list you're working 
with.

It also provides a small suite of bash scripts for performing (mostly SVN) 
operations using commit files.

There is a Powerline segment available that takes this to the next level, 
compatible with the new Python-based Powerline distribution, and integrating 
status line elements into lightweight status line plug-ins like Airline and 
Lightline is easy as pie.

## How does it work?
The plugin exposes mappings, of course, which all begin with `L`, short for 
"list" (as in "the commit list"). Those are:

`<leader>la`  
Add the current file to the commit list.

`<leader>ls`  
Show the current commit list.

## Using the Powerline segment
One of the best things about commit-tracker is using Powerline to see if your 
current file is in the commit list and which commit list you're working with. 
Since Powerline moved to Python it has become slightly more complex to make 
this work, but fortunately for you I have done most of the hard work.

You will need to do two things:

1.	Update your Powerline local config file to include the path to the 
	commit-tracker segment module so that it can be found when Python attempts 
	to load it.
2.	Update your Powerline vim theme to place the segment in your status line 
	somewhere.

Powerline configs are now generally stored in `~/.config/powerline/`, although 
this may vary by OS, so I suggest consulting the Powerline documentation.  
First, edit your `config.json` and add this bit:

```json
{
	"common": {
		"paths": ["~/.vim/bundle/commit-tracker/segment"]
	}
}
```

You should already have a "common" section and a bunch of other stuff is going 
to be in there, but what you need is the "paths" key, whose value is an array 
of include paths. One of the paths should be the path to the "segment" 
directory in the commit-tracker distribution. My example above assumes that 
you're using Pathogen and use the common "bundle" directory for your various 
scripts, but adjust as necessary.

Next, place the actual segment into your status line. Edit 
`~/.config/powerline/themes/vim/default.json`, or whichever theme you are using 
in vim. In one of your "segments" sections, add this (I have trimmed it down to 
only my segment for demonstration purposes):

```json
{
	"segments": {
		"left": [
			{
				"module": "commit-tracker.commit-tracker",
				"name": "commit-status",
				"highlight_group": ["background"]
			}
		]
	}
}
```

That's it! You'll know if it's working because Vim will start and (hopefully) 
not error continuously until you `killall vim`.
