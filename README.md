# .tmux

tmux settings and plugins

### Installation

```
rm -rf ~/.tmux ~/.tmux.conf
git clone --recurse-submodules https://github.com/jethrodaniel/.tmux ~/.tmux
ln -s ~/.tmux/conf ~/.tmux.conf
```
Then

1. Replace your normal terminal shortcut (<kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>t</kbd> on Ubuntu) with `gnome-terminal --full-screen -e tmux`
2. Be sure to initalize [tpm](https://github.com/tmux-plugins/tpm) by typing <kbd>ctrl</kbd>+<kbd>f</kbd>+<kbd>I</kbd> inside a tmux session (be patient), then restarting tmux.

### Updating

```
( cd ~/.tmux && git submodule foreach git checkout master && git pull )
```

### What it do

Tmux, by default, is ugly. But a little work, and suddenly it's beautiful.

Plugins are handled by [tpm](https://github.com/tmux-plugins/tpm).

You need tmux version 2 or greater:

```
$ tmux -V
tmux 2.6
```

Tmux plugins used:
* [battery](https://github.com/tmux-plugins/tmux-battery)
* [online-status](https://github.com/tmux-plugins/tmux-online-status)
* [open](https://github.com/tmux-plugins/tmux-open)
* [resurrect](https://github.com/tmux-plugins/tmux-resurrect)
* [sensible](https://github.com/tmux-plugins/tmux-sensible)

