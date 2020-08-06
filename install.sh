# c install
sudo apt install g++

#rust install 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "rust is installed"
sleep 120

# git install and setting
sudo apt install git
sudo config --global user.name "p870613"
sudo config --global user.email "p870613@yahoo.com.tw"

# vim install and setting
sudo apt install vim 
cp -r ./vim ~/
cp ./vimrc ~/

# install youcomplete me
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/plugged/
git submodule update --init --recursive
cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer
./install.py --rust-completer


