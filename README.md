установка в одну команду:

git clone https://github.com/aronsx/config.git ~/aronsx && cp ~/aronsx/.myvimrc ~ && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && mkdir -p ~/.vim/bundle1/code_complete/plugin/ && cp ~/aronsx/ ~/.vim/bundle/code_complete/plugin/ && vim +PluginInstall +qall
