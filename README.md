# .tmux

tmux settings and plugins

### Installation

```
rm -rf ~/.tmux ~/.tmux.conf
git clone --recurse-submodules https://github.com/jethrodaniel/.tmux ~/.tmux
ln -s ~/.tmux/conf ~/.tmux.conf
```

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

