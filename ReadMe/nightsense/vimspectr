**Note: this repository is archived. If I continue developing the vimspectr concept in future, it will probably be in the form of a new repository with the themes rebuilt from scratch. In the meantime, you might want to check out my current active vim theme, [snow](https://github.com/nightsense/snow).**

.

.

.

<h1 id="vimspectr">vimspectr</h1>

<p>vimspectr is a set of <strong>26 vim themes</strong>, consisting of a dark/light pair for each of the following hues:</p>

<table>
  <thead>
    <tr>
      <th>-</th>
      <th>0°</th>
      <th>30°</th>
      <th>60°</th>
      <th>90°</th>
      <th>120°</th>
      <th>150°</th>
      <th>180°</th>
      <th>210°</th>
      <th>240°</th>
      <th>270°</th>
      <th>300°</th>
      <th>330°</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img src="http://www.colorhexa.com/ababab.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/e03838.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/e08326.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/e0e01b.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/699e34.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/349e34.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/349e69.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/349e9e.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/4286c9.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/5454c9.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/9765c9.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/d47bd4.png" height="24" width="36" /></td>
      <td><img src="http://www.colorhexa.com/e070a8.png" height="24" width="36" /></td>
    </tr>
    <tr>
      <td>grey</td>
      <td>red</td>
      <td>orange</td>
      <td>yellow</td>
      <td>lawn<br />green</td>
      <td>green</td>
      <td>sea<br />green</td>
      <td>aqua</td>
      <td>sky<br />blue</td>
      <td>blue</td>
      <td>purple</td>
      <td>pink</td>
      <td>rose</td>
    </tr>
  </tbody>
</table>

<p><strong><a href="https://nightsense.github.io/vimspectr/">» click here for the vimspectr theme previewer «</a></strong></p>

<h2 id="setup">setup</h2>

<h3 id="installation">installation</h3>

<p>If you don’t have a preferred <strong>plugin helper</strong>, consider trying <a href="https://github.com/junegunn/vim-plug">vim-plug</a>, which can be installed with:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
</code></pre></div></div>

<p>To install vimspectr using vim-plug, add the following to the top of your <code class="highlighter-rouge">vimrc</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>call plug#begin('~/.vim/plugged')
Plug 'nightsense/vimspectr'
call plug#end()
</code></pre></div></div>

<p>Then restart vim and run <code class="highlighter-rouge">PlugUpdate</code> (from the vim command line).</p>

<p>Finally, if you want vimspectr to work in the <strong>terminal</strong> (for the shell and/or terminal vim), create a symlink at <code class="highlighter-rouge">~/.vimspectr-shell</code> pointing to your <code class="highlighter-rouge">vimspectr/shell</code> directory. The path to this directory will vary depending on your plugin helper. For vim-plug users, the following command will create the required symlink:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>ln -s ~/.vim/plugged/vimspectr/shell ~/.vimspectr-shell
</code></pre></div></div>

<h3 id="activation">activation</h3>

<p>To activate a vimspectr theme, add the following line to your <code class="highlighter-rouge">vimrc</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>colorscheme vimspectrH-B
</code></pre></div></div>

<p>…replacing <code class="highlighter-rouge">H</code> with hue (e.g. <code class="highlighter-rouge">60</code>) and <code class="highlighter-rouge">B</code> with background setting (i.e. <code class="highlighter-rouge">dark</code> or <code class="highlighter-rouge">light</code>).</p>

<p>For example:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>colorscheme vimspectr60-light
</code></pre></div></div>

<p>View the list of <a href="https://github.com/nightsense/vimspectr/tree/master/colors">theme files</a> to see all possible values for <code class="highlighter-rouge">colorscheme</code>.</p>

<h3 id="randomization">randomization</h3>

<p>To load a random vimspectr theme on vim startup:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>let vimspectr_themes = [
 \ 'vimspectr0-dark'   , 'vimspectr0-light'   ,
 \ 'vimspectr30-dark'  , 'vimspectr30-light'  ,
 \ 'vimspectr60-dark'  , 'vimspectr60-light'  ,
 \ 'vimspectr90-dark'  , 'vimspectr90-light'  ,
 \ 'vimspectr120-dark' , 'vimspectr120-light' ,
 \ 'vimspectr150-dark' , 'vimspectr150-light' ,
 \ 'vimspectr180-dark' , 'vimspectr180-light' ,
 \ 'vimspectr210-dark' , 'vimspectr210-light' ,
 \ 'vimspectr240-dark' , 'vimspectr240-light' ,
 \ 'vimspectr270-dark' , 'vimspectr270-light' ,
 \ 'vimspectr300-dark' , 'vimspectr300-light' ,
 \ 'vimspectr330-dark' , 'vimspectr330-light' ,
 \ 'vimspectrgrey-dark', 'vimspectrgrey-light',
 \ ]
exe 'colorscheme '.vimspectr_themes[localtime() % len(vimspectr_themes)]
</code></pre></div></div>

<p>To load a random dark theme during the night, random light theme during the day:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>if strftime("%H") &lt; 7 || strftime("%H") &gt;= 19
  let themes = [
    \ 'vimspectr0-dark'   , 'vimspectr0-dark'    , 'vimspectr30-dark'  ,
    \ 'vimspectr60-dark'  , 'vimspectr90-dark'   , 'vimspectr120-dark' ,
    \ 'vimspectr150-dark' , 'vimspectr180-dark'  , 'vimspectr210-dark' ,
    \ 'vimspectr240-dark' , 'vimspectr270-dark'  , 'vimspectr300-dark' ,
    \ 'vimspectr330-dark' , 'vimspectrgrey-dark'
    \ ]
else
  let themes = [
    \ 'vimspectr0-light'  , 'vimspectr0-light'   , 'vimspectr30-light' ,
    \ 'vimspectr60-light' , 'vimspectr90-light'  , 'vimspectr120-light',
    \ 'vimspectr150-light', 'vimspectr180-light' , 'vimspectr210-light',
    \ 'vimspectr240-light', 'vimspectr270-light' , 'vimspectr300-light',
    \ 'vimspectr330-light', 'vimspectrgrey-light'
    \ ]
endif
exe 'colorscheme '.themes[localtime() % len(themes)]
</code></pre></div></div>

<h3 id="options">options</h3>

<p>Options can be triggered by adding the corresponding code (<strong>before</strong> the line that sets <code class="highlighter-rouge">colorscheme</code>) in your <code class="highlighter-rouge">vimrc</code>.</p>

<table>
  <thead>
    <tr>
      <th>option</th>
      <th>vimrc code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>disable highlighted current line number</td>
      <td><code class="highlighter-rouge">let g:vimspectrCursorLineNr = 'off'</code></td>
    </tr>
    <tr>
      <td>enable muted line numbers</td>
      <td><code class="highlighter-rouge">let g:vimspectrMuteLineNr = 'on'</code></td>
    </tr>
    <tr>
      <td>disable line number background</td>
      <td><code class="highlighter-rouge">let g:vimspectrLineNr = 'off'</code></td>
    </tr>
    <tr>
      <td>enable muted statusline</td>
      <td><code class="highlighter-rouge">let g:vimspectrMuteStatusLine = 'on'</code></td>
    </tr>
    <tr>
      <td>enable italicized comments</td>
      <td><code class="highlighter-rouge">let g:vimspectrItalicComment = 'on'</code></td>
    </tr>
  </tbody>
</table>

<h2 id="terminal">terminal</h2>

<p>vimspectr includes support for the <strong>Linux console</strong> and various <strong>terminal emulators</strong>, including alacritty, gnome-terminal, roxterm, st, terminator, tilda, tilix, urxvt, xfce4-terminal, and xterm. Terminal <strong>vim</strong> and <strong>neovim</strong> are supported, as are <strong>screen</strong> and <strong>tmux</strong>.</p>

<blockquote>
  <p>If colours aren’t displaying properly, the issue is probably related to 256-colour support. Be sure your terminal (and multiplexer, if applicable) supports 256 colours and is properly configured.</p>
</blockquote>

<h3 id="shell-configuration">shell configuration</h3>

<p>This step configures your shell to load a vimspectr terminal theme on startup (not required for terminal vim).</p>

<blockquote>
  <p>Don’t forget to enable vimspectr terminal support by <a href="https://github.com/nightsense/vimspectr#installation">creating the required symlink</a>.</p>
</blockquote>

<p>For <strong>bash/zsh</strong>, add the following to <code class="highlighter-rouge">~/.bashrc</code> or <code class="highlighter-rouge">~/.zshrc</code>…</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>[ -n "$PS1" ] &amp;&amp; sh ~/.vimspectr-shell/THEME
</code></pre></div></div>

<p>…replacing <code class="highlighter-rouge">THEME</code> with the desired colourscheme (e.g. <code class="highlighter-rouge">sh ~/.vimspectr-shell/vimspectr210-dark</code>).</p>

<blockquote>
  <p>On <a href="http://hayne.net/MacDev/Notes/unixFAQ.html#shellStartup">macOS</a>, where <code class="highlighter-rouge">~/.bashrc</code> is not sourced automatically, you can add this line to <code class="highlighter-rouge">~/.bash_profile</code> instead.</p>
</blockquote>

<p>For <strong>fish</strong>, add the following to <code class="highlighter-rouge">~/.config/fish/config.fish</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>if status --is-interactive; sh ~/.vimspectr-shell/THEME; end
</code></pre></div></div>

<h3 id="randomization-1">randomization</h3>

<p>To load a random vimspectr theme on <strong>bash/zsh</strong> startup, add the following to <code class="highlighter-rouge">~/.bashrc</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>vimspectr_theme=$(ls ~/.vimspectr-shell/ | grep vimspectr | shuf -n1)
[ -n "$PS1" ] &amp;&amp; sh ~/.vimspectr-shell/$vimspectr_theme
</code></pre></div></div>

<p>To load a random vimspectr theme on <strong>fish</strong> startup, add the following to <code class="highlighter-rouge">~/.config/fish/config.fish</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>set vimspectr_theme (ls ~/.vimspectr-shell/ | grep vimspectr | shuf -n1)
if status --is-interactive; sh ~/.vimspectr-shell/$vimspectr_theme; end
</code></pre></div></div>

<h3 id="restoring-shell-theme-on-vim-exit">restoring shell theme on vim exit</h3>

<p>If <strong>different themes</strong> are used for the shell and terminal vim, the latter theme will persist in the terminal after vim is closed. In order to restore the original shell theme, you can wrap the <code class="highlighter-rouge">vim</code> command in a shell function:</p>

<p>For <strong>bash/zsh</strong>, add the following to <code class="highlighter-rouge">~/.bashrc</code> or <code class="highlighter-rouge">~/.zshrc</code>…</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>vim(){ sh -c "vim $*"; sh ~/.vimspectr-shell/THEME; clear; }
</code></pre></div></div>

<p>…replacing <code class="highlighter-rouge">THEME</code> with the colourscheme (e.g. <code class="highlighter-rouge">sh ~/.nightshell/vimspectr210-dark</code>) to restore upon exiting vim.</p>

<p>For <strong>fish</strong>, add the following to <code class="highlighter-rouge">~/.config/fish/config.fish</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>function vim; sh -c "vim $argv"; sh ~/.vimspectr-shell/THEME; clear; end
</code></pre></div></div>

<h2 id="optional-steps">optional steps</h2>

<h3 id="dircolors">dircolors</h3>

<blockquote>
  <p>Don’t forget to enable vimspectr terminal support by <a href="https://github.com/nightsense/vimspectr#installation">creating the required symlink</a>.</p>
</blockquote>

<p><code class="highlighter-rouge">dircolors</code> is basically a theme for the <code class="highlighter-rouge">ls</code> command, defining the colours used to distinguish filetypes. To activate the vimspectr version of <code class="highlighter-rouge">dircolors</code>:</p>

<p><strong>bash/zsh</strong>: add the following to <code class="highlighter-rouge">~/.bashrc</code> or <code class="highlighter-rouge">~/.zshrc</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>eval `dircolors ~/.vimspectr-shell/dircolors`
</code></pre></div></div>

<p><strong>fish</strong>: add the following to <code class="highlighter-rouge">~/.config/fish/config.fish</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>eval (dircolors -c ~/.vimspectr-shell/dircolors)
</code></pre></div></div>

<h3 id="fish-shell-theme">fish shell theme</h3>

<blockquote>
  <p>Don’t forget to enable vimspectr terminal support by <a href="https://github.com/nightsense/vimspectr#installation">creating the required symlink</a>.</p>
</blockquote>

<p>The custom nightshell <strong>fish</strong> theme can be activated by adding the following to <code class="highlighter-rouge">~/.config/fish/config.fish</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>source ~/.vimspectr-shell/fish
</code></pre></div></div>

<h3 id="base16-shell-integration">base16-shell integration</h3>

<blockquote>
  <p>Don’t forget to enable vimspectr terminal support by <a href="https://github.com/nightsense/vimspectr#installation">creating the required symlink</a>.</p>
</blockquote>

<p>If you already use <a href="https://github.com/chriskempson/base16-shell">Base16 Shell</a>, you can make it aware of vimspectr themes with the following command:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>bash -c 'for f in ~/.vimspectr-shell/*-*; do
  ln -s $f $(echo $f.sh | sed "s#vimspectr-shell/#config/base16-shell/scripts/base16-#")
done'
</code></pre></div></div>

<p>To undo the above command:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>bash -c 'for f in ~/.config/base16-shell/scripts/*vimspectr*; do rm $f; done'
</code></pre></div></div>

<h2 id="troubleshooting">troubleshooting</h2>

<p>If colours aren’t displaying correctly…</p>

<ul>
  <li>…in <strong>neovim</strong>, ensure your configuration does not contain <code class="highlighter-rouge">set termguicolors</code></li>
  <li>…in <strong>tmux</strong>, try launching tmux with <code class="highlighter-rouge">tmux -2</code></li>
</ul>

<p><br /></p>

<blockquote>
  <h2 id="production-notes">production notes</h2>
</blockquote>

<p><br /></p>

<blockquote>
  <h3 id="palette-construction">palette construction</h3>

  <p>Each vimspectr theme consists of 6 theme-specific <strong>base colours</strong> and 8 fixed <strong>accent colours</strong>.</p>

  <p>Base colours were determined by:</p>
  <ul>
    <li>selecting contrast ratios such that values of base colours of the greyscale theme align with 1/24 intervals</li>
    <li>adding saturation to base colours of remaining themes, also observing 1/24 intervals
      <ul>
        <li>saturation rises as value falls</li>
      </ul>
    </li>
  </ul>

  <p>Accent colours were determined by:</p>
  <ul>
    <li>selecting pure hues (“pure red” etc.) at the scale of 1/12 colour wheel intervals</li>
    <li>fine-tuning these hues by 1/48 intervals
      <ul>
        <li>clockwise: red and purple (1 interval), pink (2)</li>
        <li>counterclockwise: orange and teal (1 interval), yellow (2)</li>
      </ul>
    </li>
    <li>selecting saturations and values at the scale of 1/24 intervals
      <ul>
        <li>saturation rises as hue transitions counterclockwise from pink to green</li>
        <li>value rises as hue transitions clockwise from green to pink</li>
      </ul>
    </li>
  </ul>

  <table>
  <thead>
    <tr>
      <th style="text-align: right">greyscale base</th>
      <th style="text-align: left">dark accents</th>
      <th style="text-align: center">light accents</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/141414.png" height="24" width="42" /> <code class="highlighter-rouge">141414</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/b55a4c.png" height="24" width="42" /> <code class="highlighter-rouge">b55a4c</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/e04d38.png" height="24" width="42" /> <code class="highlighter-rouge">e04d38</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/2b2b2b.png" height="24" width="42" /> <code class="highlighter-rouge">2b2b2b</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/b5734c.png" height="24" width="42" /> <code class="highlighter-rouge">b5734c</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/e07638.png" height="24" width="42" /> <code class="highlighter-rouge">e07638</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/6b6b6b.png" height="24" width="42" /> <code class="highlighter-rouge">6b6b6b</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/b59b4c.png" height="24" width="42" /> <code class="highlighter-rouge">b59b4c</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/e0b738.png" height="24" width="42" /> <code class="highlighter-rouge">e0b738</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/8a8a8a.png" height="24" width="42" /> <code class="highlighter-rouge">8a8a8a</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/6d8a50.png" height="24" width="42" /> <code class="highlighter-rouge">6d8a50</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/699e34.png" height="24" width="42" /> <code class="highlighter-rouge">699e34</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/e8e8e8.png" height="24" width="42" /> <code class="highlighter-rouge">e8e8e8</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/508a82.png" height="24" width="42" /> <code class="highlighter-rouge">508a82</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/349e90.png" height="24" width="42" /> <code class="highlighter-rouge">349e90</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/ffffff.png" height="24" width="42" /> <code class="highlighter-rouge">ffffff</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/6a849e.png" height="24" width="42" /> <code class="highlighter-rouge">6a849e</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/4286c9.png" height="24" width="42" /> <code class="highlighter-rouge">4286c9</code></td>
    </tr>
    <tr>
      <td></td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/8b6a9e.png" height="24" width="42" /> <code class="highlighter-rouge">8b6a9e</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/a565c9.png" height="24" width="42" /> <code class="highlighter-rouge">a565c9</code></td>
    </tr>
    <tr>
      <td></td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/b57988.png" height="24" width="42" /> <code class="highlighter-rouge">b57988</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/e0708c.png" height="24" width="42" /> <code class="highlighter-rouge">e0708c</code></td>
    </tr>
  </tbody>
</table>
</blockquote>

<p><br /></p>

<blockquote>

  <h3 id="accent-colour-logic">accent colour logic</h3>

  <p><img src="http://www.colorhexa.com/e04d38.png" height="24" width="42" />
<strong>Red</strong>, the colour of alarm, is used for <strong>warning elements</strong>, including error messages, misspellings, and diff deletions.</p>

  <p><img src="http://www.colorhexa.com/e07638.png" height="24" width="42" />
<strong>Orange</strong>, the colour of fire, can be associated with preliminary “warmup” activity. Orange is therefore used for <strong>preliminary elements</strong>, such as preprocessor commands (which prepare data to be handled by another program), incremental searching (that is, a search term in the process of being typed), titles, and miscapitalized words.</p>

  <p><img src="http://www.colorhexa.com/e0b738.png" height="24" width="42" />
<strong>Yellow</strong>, a classic highlighting colour, is applied to elements that are not warnings, yet should draw attention with high visibility. These <strong>highlighted elements</strong> include search results, task tags (<code class="highlighter-rouge">TODO</code>, <code class="highlighter-rouge">FIXME</code>…), and diff changes.</p>

  <p><img src="http://www.colorhexa.com/699e34.png" height="24" width="42" />
<strong>Green</strong>, the colour that says “go ahead, proceed with the task at hand”, is used for <strong>action elements</strong>, such as statements (if/then, while/do, case…), mode indicators (insert, visual…), vim user prompts, and diff additions.</p>

  <p><img src="http://www.colorhexa.com/349e90.png" height="24" width="42" />
<strong>Teal</strong> is named after the “common teal”, a kind of duck, thus connecting this colour with the concept of “species”, which is a means of classifying life into very specific types. Teal is therefore used for specifying <strong>object types</strong>, such as data type (boolean, integer, string…) or storage class (static, volatile…), as well as mislocalized words.</p>

  <p><img src="http://www.colorhexa.com/4286c9.png" height="24" width="42" />
<strong>Blue</strong>, a colour of calm stability, is used for <strong>constants</strong>, which come in the form of boolean values, integers, floating-point numbers, characters, and strings.</p>

  <p><img src="http://www.colorhexa.com/a565c9.png" height="24" width="42" />
<strong>Purple</strong>, associated with (historically) rare purple dyes produced for special works of art, is used for <strong>special text</strong>, including special characters (standalone or within syntax units), vim tags, debugging statements, and rarely-used words.</p>

  <p><img src="http://www.colorhexa.com/e0708c.png" height="24" width="42" />
<strong>Pink</strong>, the colour of spring blossoms, is used for <strong>object names</strong>, including the names of variables and functions. To code is to bring countless objects blossoming into life as one types their names.</p>
</blockquote>

<p><br /></p>

<blockquote>

  <h3 id="dircolors-logic">dircolors logic</h3>

  <ul>
    <li><strong>directories</strong> are <strong>bold</strong>, reflecting their “expanded” role as a “file that contains files”
      <ul>
        <li><strong>normal directories</strong> use the normal text colour</li>
        <li><strong>“sticky” directories</strong> are <strong>pink</strong>, like sticky bubble gum</li>
        <li><strong>“other-writable” directories</strong> are <strong>orange</strong>, as though warmed by the heat of writing activity</li>
        <li>directories that are <strong>both</strong> “sticky” and “other-writable” are <strong>orange and underlined</strong>: the orange is writing-warmth, while the underline is a “stick”</li>
      </ul>
    </li>
    <li><strong>links</strong> are underlined, like hyperlinks on the internet
      <ul>
        <li>this applies to both <strong>multi-hardlinked files</strong> and <strong>symlinks</strong></li>
        <li>links use the normal text colour except for <strong>orphan links</strong> (symlinks that point to non-existent files), which are <strong>red</strong> (the colour of warning)</li>
      </ul>
    </li>
    <li><strong>device driver files</strong> are <strong>highlighted</strong> with the normal text colour; since this colour is grey (or greyish), these highlighted blocks of texts resemble the grey, boxy form taken by many technological devices</li>
    <li><strong>IPC files</strong> are <strong>blue-highlighted</strong>, since they enable information to flow between processes like water</li>
    <li><strong>setuid files</strong> (u+s) are <strong>purple-highlighted</strong>: p<strong>u</strong>rple = <strong>u</strong>ser</li>
    <li><strong>setgid files</strong> (g+s) are <strong>green-highlighted</strong>: <strong>g</strong>reen = <strong>g</strong>roup</li>
    <li>files that use <strong>capabilities</strong> are <strong>red-highlighted</strong>: red = red-blooded = capable</li>
    <li><strong>executable files</strong> are <strong>green</strong>, since green = “go ahead, proceed with action”</li>
    <li><strong>archive files</strong> are <strong>purple</strong>, since purple is the colour of famous dyes made from sea snails, which are packed (like archives) into shells</li>
    <li><strong>multimedia files</strong> are <strong>blue</strong>, since blue conveys calm, enduring stability (like the sea and sky), just like the great works of art (images, music, video) we can rely on</li>
  </ul>
</blockquote>
