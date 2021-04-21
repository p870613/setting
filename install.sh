# c install
sudo apt install g++

#rust install 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "rust is installed"
sleep 5

# git install and setting
sudo apt install git
sudo config --global user.name "p870613"
sudo config --global user.email "p870613@yahoo.com.tw"

# vim install and setting
sudo apt install vim -y

#zsh install 
sudo apt install zsh -y
chsh -s /usr/bin/zsh
apt install wget git
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc

#vindlle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/

# install youcompleteme needed package
sudo apt-get install build-essential cmake python-dev python3-dev

# install youcomplete me
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/plugged/
cd ~/.vim/plugged/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer
python3 ./install.py --rust-completer

#install racer
#cd ~/
#rustup toolchain add nightly
#cargo +nightly install racer
#rustup component add rust-src
#echo RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src >> ~/.zshrc
#racer complete std::io::B
