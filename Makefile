.PHONY: update-all update-tmux update-wezterm update-nvim update-alacritty

update-tmux:
	cp ~/.tmux.conf .

update-wezterm:
	cp ~/.wezterm.lua .

update-nvim:
	cp -r ~/.config/nvim ./.config/.

update-alacritty:
	cp -r ~/.config/alacritty ./.config/.

update-all:
	make update-tmux
	make update-wezterm
	make update-nvim
	make update-alacritty