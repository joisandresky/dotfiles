.PHONY: update-all update-tmux update-nvim update-ghostty

update-tmux:
	cp ~/.tmux.conf .

update-nvim:
	cp -r ~/.config/nvim ./.config/.

update-ghostty:
	cp -r ~/.config/ghostty ./.config/.
	
update-all:
	make update-tmux
	make update-nvim
	make update-ghostty
