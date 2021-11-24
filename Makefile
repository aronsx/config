SYNC = rsync -avzru

all: vim awesome zsh cvim tmux ideavim 

vim:
	$(SYNC) ~/.vimrc .vimrc
	$(SYNC) .vimrc ~/.vimrc

awesome:	~/.vimrc
	$(SYNC) ~/.vimrc /awesome/
	$(SYNC) .vimrc ~/.vimrc

zsh:	~/.zshrc
	$(SYNC) ~/.zshrc .zshrc
	$(SYNC) .zshrc ~/.zshrc

cvim:	~/.cvimrc
	$(SYNC) ~/.cvimrc .cvimrc
	$(SYNC) .cvimrc ~/.cvimrc

tmux:	~/.tmux.conf
	$(SYNC) ~/.tmux.conf .tmux.conf
	$(SYNC) .tmux.conf ~/.tmux.conf

ideavim:	~/.ideavimrc
	$(SYNC) ~/.ideavimrc .ideavimrc
	$(SYNC) .ideavimrc ~/.ideavimrc

nvim:	~/.config/nvim/init.vim
	$(SYNC) ~/.config/nvim/init.vim init.vim
	$(SYNC) init.vim ~/.config/nvim/init.vim

update: pull add commit push

pull:
	git pull origin master

add:
	git add --all

commit: add
	git commit -m "Automates sync: $(git status --porcelain)"

push:
	git push --set-upstream origin master



.PHONY: all vim awesome zsh cvim tmux ideavim
