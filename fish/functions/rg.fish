function rg --description 'Pipe ripgrep to less'
	/usr/local/bin/rg -p $argv | less -RFX;
end
