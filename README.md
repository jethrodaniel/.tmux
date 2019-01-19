# .tmux

tmux settings and plugins

### Installation

```
rm -rf ~/.tmux ~/.tmux.conf
git clone --recurse-submodules https://github.com/jethrodaniel/.tmux ~/.tmux
ln -s ~/.tmux/conf ~/.tmux.conf
```
Then be sure to initalize [tpm](https://github.com/tmux-plugins/tpm) by typing <kbd>prefix</kbd>+<kbd>I</kbd> inside a tmux session (be patient), then restarting tmux.

### Updating

```
( cd ~/.tmux && git pull && git submodule foreach git checkout master && git pull )
```

### What it do

Tmux, by default, is ugly. But a little work, and suddenly it's beautiful.

<kbd>prefix</kbd> is set to <kbd>ctrl</kbd>+<kbd>f</kbd>

Plugins are handled by [tpm](https://github.com/tmux-plugins/tpm).

You need tmux version 2 or greater:

```
$ tmux -V
tmux 2.6
```

Tmux plugins used:
* [battery](https://github.com/tmux-plugins/tmux-battery)
* [fingers](https://github.com/Morantron/tmux-fingers)
* [online-status](https://github.com/tmux-plugins/tmux-online-status)
* [open](https://github.com/tmux-plugins/tmux-open)
* [pain-control](https://github.com/tmux-plugins/tmux-pain-control)
* [resurrect](https://github.com/tmux-plugins/tmux-resurrect)
* [sensible](https://github.com/tmux-plugins/tmux-sensible)
* [sidebar](https://github.com/tmux-plugins/tmux-sidebar)
* [yank](https://github.com/tmux-plugins/tmux-yank)

### Tab completion

To enable Bash tab completion for tmux, add the following to your `~/.bashrc`

```
if [ -f ~/.tmux/bash_completion_tmux.sh ]; then
  . ~/.tmux/bash_completion_tmux.sh
fi
```

The following lines will get you tab completion in tmux even if you're not using the rest of these settings

```
mkdir -p ~/.tmux
curl https://raw.githubusercontent.com/jethrodaniel/.tmux/master/bash_completion_tmux.sh > ~/.tmux/bash_completion_tmux.sh

cat << TMUX_TABS >> ~/.bashrc
if [ -f ~/.tmux/bash_completion_tmux.sh ]; then
  . ~/.tmux/bash_completion_tmux.sh
fi
TMUX_TABS

. ~/.bashrc
```
