set -ex

TMUX_DIR=~/dotfiles/home/.tmux/third_party/
mkdir -p $TMUX_DIR/local

ln -srf ./conf ~/.tmux.conf

cd third_party

wget https://github.com/libevent/libevent/releases/download/release-2.1.11-stable/libevent-2.1.11-stable.tar.gz
tar zxvf libevent-2.1.11-stable.tar.gz
cd libevent-2.1.11-stable
sh autogen.sh && ./configure --prefix="$TMUX_DIR/local"
make -j && make install
cd -

wget https://ftp.gnu.org/pub/gnu/ncurses/ncurses-6.2.tar.gz
tar zxvf ncurses-6.2.tar.gz
cd ncurses-6.2/
./configure --prefix="$TMUX_DIR/local"
make -j&& make install
cd -

cd tmux
sh autogen.sh
./configure --prefix=$TMUX_DIR/local \
    CPPFLAGS="-I$TMUX_DIR/local/include -I$TMUX_DIR/local/include/ncurses" \
    LDFLAGS="-L$TMUX_DIR/local/lib"
make -j && make install

export LD_LIBRARY_PATH="$(realpath .)/third_party/local/lib/:$LD_LIBRARY_PATH"
cd -

./local/bin/tmux -V

sudo cp -v ./local/bin/tmux /usr/bin/
sudo cp -v ./local/share/man/man1/tmux.1 /usr/share/man/man1/
