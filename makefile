build: prereqs build/tmux-3.1c
	cd build/tmux-3.1c && ./configure && make && sudo make install
	rm -rf build
build/tmux-3.1c: build/tmux-3.1c.tar.gz
	tar xzvf build/tmux-3.1c.tar.gz -C build
build/tmux-3.1c.tar.gz: build_dir
	wget https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz -O $@
build_dir:
	mkdir -p build
prereqs:
	sudo yum install libevent-devel-2.0.21-4.el7.x86_64 ncurses-devel
