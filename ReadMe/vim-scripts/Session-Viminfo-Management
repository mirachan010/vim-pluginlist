Session-Viminfo-Management
---

The plug-in improves upon Vim's built-in :mksession and :wviminfo commands.
It provide great convinience to save and load your Vim session and viminfo files automatically.
Typically, you can save your Vim session and viminfo files in one command and load them efficiently.
Even better, it can automatically load/save vim session and viminfo files when entering vim and leaving vim environment.
That are very useful if you want Vim to quickly swith between different projects, automatically loading the files you were last working on in that project, and enable you to continue where you left off. 

##Terminology and Default Values
**Workspace files:** I will shortly call vim session and viminfo files as "Workspace files" in this manual.
**workspace:** All prompt messages in Vim prefixed with "workspace:" are from this Session-Viminfo-Management plugin.
**Default Values:**
  * Default name for workspace files is: 
      workspace.session 
      workspace.viminfo
  * Default saving path: 
      vim current path (Type Vim Ex command getcwd() to get it)

##Installation
Download zip ball and copy files to ~/.vim/plugin/session-viminfo-manage.vim and ~/.vim/doc/session-viminfo-manage.txt. Or copy and paste:
```
cd ~/.vim
git clone https://github.com/xkdcc/Session-Viminfo-Management.git 
mv Session-Viminfo-Management/plugin/* ~/.vim/plugin/ && mv Session-Viminfo-Management/doc/* ~/.vim/doc/
rm -fr Session-Viminfo-Management/
```
Normally to generate documentation, Vim expects you to run :helptags on each directory with documentation (e.g., :helptags ~/.vim/doc). 

##Automation

This plugin provides automation ability when launching Vim and leaving Vim.

###Launching Vim

When launching Vim, this plugin will detect current path and load default workspace files(workspace.session and workspace.viminfo) if exist. 
If no default workspace files found, it will check whether there are files having suffix ".session" and ".viminfo" in pair. 
If yes, it will prompt a list for user selection if there are more than one pair.

**Example 1:**<br>
If you're at /home/test, there are: 
* workspace.session
* workspace.viminfo
* test.session
* test.viminfo

When you launch vim, it will load workspace.session and workspace.viminfo with prompt message by default. As following illustration:
![vim01-automation-launching.png](http://brant-public.qiniudn.com/vim01-automation_lauching.png)


**Example 2:**<br>
If you're at /home/test, there are: 
* test01.session
* test01.viminfo
* test02.session
* test02.viminfo

When you launch vim, it will list all workspace files for your choice.
As following: 
```
  workspace: Please input the expected workspace index you want to load:
    [0] /home/test/test01
    [1] /home/test/test02
  Your input(q to exit this function of workspace plugin):
```

Then you type a legal number in range(0,1), it will load the specific workspace files. Also you can type 'Q' or 'q' to do nothing with workspace files. If you give an exception, you will be required to input again. As following illustration:
![vim02-automation-launching.png](http://brant-public.qiniudn.com/vim02-automation_lauching_dup_echo_disappear.png)

There is a little compatible problem in some tty console. Please read "Limitation and Known issues" section in this Readme.md for more details.

###Leaving Vim
**Example 1:**
```
  : Savews my.ws
  : Loadws wow.ws
  : Savews new.ws
  : qa
```
**Result:**<br>
This plugin will automatically save session and viminfo files to the last workspace files
* new.session
* new.viminfo

As following illustration:
![vim03-automation_leaving_new.ws.png](http://brant-public.qiniudn.com/vim03-automation_leaving_new.ws.png)

##Ex Commands

This plugin provide two Ex commands: **Savews**, **Loadws**.

###Savews

Save vim session and viminfo files when you type Ex command :Savews with proper arguments.
Particularly, if option wsOverwrite is 1(This is default value), when you exit from Vim, this plugin will save session and viminfo files to your last saved/loaded workspace files automatically.

**Example 1:**
```
  :Savews    
```
**Result:** <br>
Will create workspace.session and workspace.viminfo in current folder, if they didnot existed beforehand.<br>
Please see |'wsOverwrite'| for more details about overwrite behavior.

**Example 2:**
```
  :Savews /home/myproject 
```
**Result:**<br>
Will create:
* /home/myproject/workspace.session
* /home/myproject/workspace.viminfo
Please make sure folder /home/myproject existed beforehand.<br>
Please see |'wsOverwrite'| for more details about overwrite behavior.

**Example 3:**
```
  :Savews my.ws
```
**Result:**<br>
Save to my.session and my.viminfo in current folder.<br>
Please see |'wsOverwrite'| for more details about overwrite behavior.

**Example 4:**
```
  :Savews /home/myproject/my.ws
```
**Result:**<br>
You will get my.session and my.viminfo in /home/myproject folder if /home/myproject existed.<br>
Please see |'wsOverwrite'| for more details about overwrite behavior.

**Two point please keep in mind when using Savews:**
* You must have suffix **.ws**, if you want to specify name for session and viminfo files, like example 3 and example 4. 
  Otherwise, they will have default name, workspace.session and workspace.viminfo.
* Please remember to use **:qwa** to quit Vim if you want to reopen all windows/tabs you're editing.<br>
  The reason is that Savews command will save workspace files automatically when you exit Vim. So if you have opened many windows/tabs, but closed them one by one, there would be only one window is openning just before you exit Vim, workspace plugin will only can remember the last window and just reopen it for you when you enter Vim next time by loading your workspace files.

###Loadws
Load vim session and viminfo files.

**Example 1:**
```
  :Lavews    
```
**Result:** <br>
Will load workspace.session and workspace.viminfo in current folder, if they existed beforehand.

**Example 2:**
```
  :Lavews /home/myproject 
```
**Result:**<br>
Will load:
* /home/myproject/workspace.session
* /home/myproject/workspace.viminfo
Please make sure workspace files existed beforehand.

**Example 3:**
```
  :Lavews my.ws
```
**Result:**<br>
Will load my.session and my.viminfo in current folder.

**Example 4:**
```
  :Lavews /home/myproject/my.ws
```
**Result:**<br>
Will load my.session and my.viminfo in /home/myproject folder if existed.

You'd better not to run :Loadws in same Vim twice. Please read "Limitation and Known issues" section in this Readme.md for more details.

##Options

There is one global option you can use: **wsOverwrite**.

###wsOverwrite
**Value:** 0 or 1.<br>
**Default:** 1.

If there are vim session and viminfo files with same name when you issue :Savews, you can overwrite them by setting this option to 1: 
```
  let g:wsOverwrite=1
```
If g:wsOverwrite is 0, and there are workspace.session and workspace.viminfo, when you type: 
```
  :Savews
```
It will said:
> Workspace files existed, and wsOverwrite is 0, will not overwrite existed files.

**IT RECOMMENDED STRONGLY YOU KEEP IT DEFAULT AS 1.**
**BECAUSE IF IT'S 0, WHEN YOU EXIT VIM, IT WON'T SAVE YOUR WORKSPACE FILES AUTOMATICALLY.**

##Limitation and Known issues
* Windows is not a target of this plugin.
  I think you would experience some problmes if you want to use this plugin on Windows Vim.
* There is compatible problem when work with autochdir option. Recommend to remove autochdir option from your ~/.vimrc.
  For my experiences, if enable autochdir option in Vim, users will mess up themselves when trying to provide relative pathes of Vim session and viminfo files. It seems it can't have impact if you provide absolute path for Vim session and viminfo files.
* There is a little compatible problem in some tty console.
  In some tty console, when launching Vim and this plugin prompt a workspace list for your choice, after you input your choice, it will echo all message one time. Anyway, the function still works.As following illustration:
![vim04-automatino-luanching-dup-echo](http://brant-public.qiniudn.com/vim04-automation_lauching_dup_echo.png)
* You'd better not to run :Loadws in same Vim twice.
  If you once run Loadws to load your workspace files, then run Loadws to reload them again in the same Vim, it will not close all openning windows and tabs. In other words, you may see double windows have been opened for the same file.

##License
This software is licensed under the [MIT License](http://en.wikipedia.org/wiki/MIT_License).
Copyright 2014 Brant Chen (brantchen2008@gmail.com and xkdcc@163.com).

###Welcome to Brant Blog
<a href="http://www.brantchen.com">![Brant's Blog](http://brant-public.qiniudn.com/site-Logo215x100-Brant%20Blog.png)</a>

###Follow Me on Social Networking
<a href="http://google.com/+BrantChenGo">![Brant's Google+](http://brant-public.qiniudn.com/googleplus1@2x.png)</a>
<a href="http://cn.linkedin.com/pub/brant-chen/9/6a9/a03/">![Brant's LinkedIn](http://brant-public.qiniudn.com/linkedin@2x.png)</a>
<a href="https://www.facebook.com/brantchen2008">![Brant's Facebook](http://brant-public.qiniudn.com/facebook@2x.png)</a>
<a href="https://twitter.com/brantchen2008">![Brant's Twitter](http://brant-public.qiniudn.com/icon-twitter-2x.png)</a>
