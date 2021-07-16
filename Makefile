
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

update1:
	git pull origin master

update2:
	git add --all

update3:
	git commit -m "Automates sync: $(git status --porcelain)"

update4:
	git push --set-upstream origin master


.PHONY: all vim awesome zsh cvim tmux ideavim
