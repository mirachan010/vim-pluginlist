Fountain Flow for Vim
=====================

Installation
------------

Basic installation is typical. There is a plugin file, and a help file.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    doc/
        fountainflow.txt
    plugin/
        fountainflow.vim
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Template information is on board the plugin, so it is possible to convert files
right away. However, for greater control, templates and a style sheet are
including in a folder called 'flowfiles'.

This and another folder named 'libreoffice' can go anywhere. But you are
required to include the following line in your .vimrc (preference file) so
that the plugin knows where to access the 'flowfiles'.

    let g:flow_directory = '/full/path/to/flowfiles/'

Don't forget that trailing slash!

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    flowfiles/
        screenplayFooter.html
        screenplayHeader.html
        screenplayStyle.css
        screenplayTitlePage.html

    libreoffice/
        fountain-template-NO-synopsis.odt
        fountain-template-NO-synopsis.ott
        fountain-template-w-synopsis.fountain
        fountain-template-w-synopsis.odt
        fountain-template-w-synopsis.ott
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a reason the 'libreoffice' folder contains normal files along with the
templates, and a dummy FOUNTAIN file. An explanation for this, and more
information on using the templates will be available at our blog:

        https://vimwriter.blogspot.com/

Support
-------

If you find this plugin useful, please consider throwing us some support via our blog donation button!

Look for a new Fountain syntax file, and our upcoming plugin, Ink Flow for Vim, a general aid for creative writers on Vim that includes a logical settings, a snapshot function, file splitting, text block movement, etc.

