.PHONY: update-all update-tmux update-wezterm update-nvim update-alacritty

update-tmux:
	cp ~/.tmux.conf .

update-wezterm:
	cp ~/.wezterm.lua .

update-nvim:
	cp -r ~/.config/nvim ./.config/.

update-alacritty:
	cp -r ~/.config/alacritty ./.config/.

update-kitty:
	cp -r ~/.config/kitty ./.config/.

update-ghostty:
	cp -r ~/.config/ghostty ./.config/.
	
update-all:
	make update-tmux
	make update-wezterm
	make update-nvim
	make update-alacritty
	make update-kitty
	make update-ghostty
