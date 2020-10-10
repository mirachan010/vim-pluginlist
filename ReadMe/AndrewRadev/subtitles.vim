This project is not really working and I consider it abandoned for the moment. It was a fun idea to play around with, but I couldn't quite get it working right. If you feel it's interesting and you manage to implement it, do let me know :).

The goal is to enable you to open a subtitle file, and spawn an mplayer instance with the related video file. Afterwards, moving around in the subtitle file would skip the video to the appropriate time. Editing the file and saving would also reload the subtitles and jump to the beginning of the current scene.

Unfortunately, I couldn't quite get it to work. Sometimes it "bites", sometimes it doesn't, and I'm not quite sure why. It may be a problem with mplayer's slave interface, or it might be that I'm doing something wrong, but at this time, I don't feel like experimenting more with it.

To try it out, open a subtitle file ending in `srt` or `sub` in the "[Timed Text](http://en.wikipedia.org/wiki/Timed_Text)" format. Execute the `:Play` command with the name of a video file.

Example (from [a nice TED talk](http://www.ted.com/talks/clay_shirky_how_the_internet_will_one_day_transform_government.html)):

``` vim
:edit ClayShirky_2012G-light.srt
:Play ClayShirky_2012G-light.mp4
```

Requires the `mplayer` executable. This would probably only work on Linux and Mac OSX.
