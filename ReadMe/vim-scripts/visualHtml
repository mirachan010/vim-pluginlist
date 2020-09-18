    
     __ __  ____ _____ __ __   ____  _          __ __  ______  ___ ___  _        
    |  |  ||    / ___/|  |  | /    || |        |  |  ||      ||   |   || |       
    |  |  | |  (   \_ |  |  ||  o  || |     __ |  |  ||      || _   _ || |       
    |  |  | |  |\__  ||  |  ||     || |___ |  ||  _  ||_|  |_||  \_/  || |___    
    |  :  | |  |/  \ ||  :  ||  _  ||     ||__||  |  |  |  |  |   |   ||     |   
     \   /  |  |\    ||     ||  |  ||     |    |  |  |  |  |  |   |   ||     |   
      \_/  |____|\___| \__,_||__|__||_____|    |__|__|  |__|  |___|___||_____|   
                                                                                 
===============================================================================

Table of content :
------------------

 1. Introduction
 2. Installation
 3. Settings
 4. CSS
 5. About
 6. Licence
 


# 1. Introduction

This plugin provide a live preview of PHP/HTML and CSS edition, supporting
local server for php files. For a better experience, you could use the
open source CLCBrowser (Command Line Controlled web Browser) which has been
developped specially for this plugin.



# 2. Installation

Just to copy all files in the corresponding directories of your ~/.vim
directory, or put the whole archive as a pathogen bundle.



# 3. Settings

There are some settings to customize the behavior.


## General settings

    let g:visualHtml#ftblacklist = ["markdown"]

   There are some ftplugins that load html ftplugin and open the browser of
   visualHtml for irrevelant files (like markdown...). Thus, this variable
   provide a way to blacklist some file types for which visualHtml will not be
   activated.


    visualHtml#SetActive(b)
    visualHtml#ToggleActive()
    let g:visualHtml#active = 1

   Controle if the plugin is active by default. SetActive and ToggleActive allow
   you to modify the variable per buffer


    visualHtml#SetLive(b)
    visualHtml#ToggleLive()
    let g:visualHtml#live = 1

   Controle if the plugin refresh the browser in live by default, that implies
   the buffer is automatically saved frequently.
   SetLive and ToggleLive allow you to modify the variable per buffer


    let g:visualHtml#serverRoot = "/srv/http"

   Set the local server root directory.


    let g:visualHtml#serverRootUrl = "http://localhost"

   Set the url correspounding to the server root


    let g:visualHtml#browser = "clcb"

   Set the browser to use. Currently, the only values possible are "clcb" for
   CLCBrowser, and "ff" for FireFox. To use FireFox, you need to be on linux,
   the FireFox remote control plugin, and netcat... but it's buggous...
   I highly recommand you to use CLCB : it is fully controllable from the
   command line, and allow you to have multiple windows/tabs and set their size.


## CLCBrowser settings

    let g:visualHtml#clcb#exe = "clcbrowser"

   Set the command to launch clcbrowser. This permits a local installation of
   clcb. It is required to set the correct path on windows.


    let g:visualHtml#clcb#geometry = "683x741+683+0"

   Set the geometry of the clcb window. You can keep this value to try, then
   position the window and copy paste the value from the CLCB's status bar to
   get the same window geometry each time. (that follow the X window geometry
   synthax : WidthxHeight+offX+offY)


## FireFox settings

    let g:visualHtml#ff#exe = "firefox"

   Set the command to launch firefox. This permits a local installation of
   firefox. It is required to set the correct path on windows.


    let g:visualHtml#ff#port = 32000

   Set the port used by the FireFox remote control pugin.


## Custom browser settings

If you want another browser, this plugin is easily extendable : you just have
to provide these three functions :

    let g:visualHtml#Launch1Browser = 'MyLaunchFunction'
    function MyLaunchFunction(url)

   The Launch1Browser should open a browser with the given url.
   Note: in the current version, it is not directely called by the script.
   Actually, you could call it in your Refresh1Browser if the url is not loaded
   yet.


    let g:visualHtml#Refresh1Browser = 'MyLaunchFunction'
    function MyLaunchFunction(url)

   The Refresh1Browser function is called each time the buffer is modified
   according to refresh policy (see |g:visualHtml#active| and
   |g:visualHtml#live|). It takes one argument a:url which is the url to
   refresh.


    let g:visualHtml#Exit1Browser = 'MyLaunchFunction'
    function MyLaunchFunction(url)

   The Exit1Browser is called if the |g:visualHtml#active| is 1 when the
   buffer is deleted (so when Vim exit too) and should close the
   correspounding url.
   Note : A function which does nothing is acceptable, but as a result, the
   browser doesn't exit... (as it is for the default ff implementation)



# 4. CSS

CSS files are not directely viewable... But it could be usefull to see the
effect on a HTML file in live...
...It's possible! by default, the script looks for a file named
yourcss.css.preview, this file should contain the paths (absolute or relative)
to all the file you want to see while editing your style sheet. If no such
file is found, the script will open all index.{php,htm,html} found in the
directory.



# 5. About

My name is hl037 : hl are my initials, and 037 my first name reversed...
My real name is Léo Flaventin Hauchecorne and I'm a french IT student, so
please pronounce my pseudo "hache ('a' like in cat) el zéro trois sept" ;).
I started to develop this plugin (and CLCBrowser) because of the leak 
of tools providing these features... so, let's do it !

You can contact me by e-mail : hl037 dot prog at gmail dot com.
any suggestion or english correction to this help file is welcome !



# 6. Licence

I provide this plugin under the GPLv3 licence as almost all my open-source
stuffs. You should have received a copy of it in the package. It is also
accessible here : https://www.gnu.org/licenses/gpl-3.0.txt

