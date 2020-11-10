
apt-complete.vim
============
provide debian package name completion. depends on `apt-cache` command.


config
======

    let g:EnableAptComplete = 1

commands
=========

    :AptCompleteOn   # turn deb package completion on
    :AptCompleteOff  # turn deb package completion off (set `completefunc` back)
    :AptCompleteToggle
