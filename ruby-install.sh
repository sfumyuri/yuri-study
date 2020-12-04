git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git .rbenv/plugins/ruby-build
# ~がダメだったから$HOMEにした
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
rbenv install -l
# 確認
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
# 以下はやらなくてもインストールできた
# sudo apt-get install gcc
# sudo apt-get install build-essential
# sudo apt-get install libssl-dev libreadline-dev zlib1g-dev
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
# もう一回これでようやくrbenvが使えるようになる
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
rbenv install -l
rbenv install 2.7.2
rbenv global 2.7.2
ruby -v
