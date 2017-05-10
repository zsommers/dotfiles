# Dotfiles
This is a collection of my configuration files. I owe @rlbaker a beer for all
the help he's given me by walking me through his configs. I'm including
instructions for setting this up both for anyone who's curious as well as
myself the next time I have to set things up from scratch! As you can guess
from the many references to [Homebrew], this is for [macOS].

---

### Homebrew
Install [Homebrew] by doing this:
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

---

### Neovim
First install [neovim](https://github.com/neovim/neovim) with [Homebrew]:
```bash
brew install neovim/neovim/neovim
```
Then install [vim-plug]:
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
You'll need to symlink to the config:
```bash
ln -s <path to repo>/nvim/init.vim ~/.config/nvim/
```
Lastly, reload the config and install the plugs with `nvim`:
```
:source <path to your config>
:PlugInstall
```
Find more commands [here](https://github.com/junegunn/vim-plug#commands)

---

### fish
Install [fish] with [Homebrew]:
```bash
brew install fish
```
Link to the repo configs:
```bash
ln -s <path to repo>/fish/config.fish ~/.config/fish/
ln -s <path to repo>/fish/functions ~/.config/fish/
```
Then change the default shell:
```bash
# You may need to add fish to the list of approved shells
echo `which fish` >> /etc/shells
chsh fish
```
If you don't have [virtualfish], there will probably be some errors. See below
for [virtualfish] instructions.

---

### Git
Install current [Git] with [Homebrew]:
```bash
brew install git
```
Then symlink the repo configs:
```bash
ln -s <path to repo>/git/.gitconfig ~/
ln -s <path to repo>/git/.gitignore_global ~/
```

---

### Python
Use [Python 3]!
```bash
brew install python3
```
Configure [pycodestyle] to not shout about line length:
```bash
ln -s <path to repo>/python/pycodestyle ~/.config/
```
#### VirtualEnv
I use [VirtualEnv] because it's what I'm most comfortable with. Install with
pip:
```bash
# By using pip3, python3 becomes the default python for new envs
pip3 install virtualenv
```
#### Virtualfish
If you work with Python and want something akin to [virtualenvwrapper], your
best best is [virtualfish].

Install using `pip`:
```bash
pip install virtualfish
```

[fish]: https://fishshell.com
[Git]: https://git-scm.com
[Homebrew]: https://brew.sh
[macOS]: https://www.apple.com/macos/
[neovim]: https://github.com/neovim/neovim
[pycodestyle]: http://pycodestyle.readthedocs.io/en/latest/
[Python 3]: https://www.python.org
[vim-plug]: https://github.com/junegunn/vim-plug
[VirtualEnv]: https://virtualenv.pypa.io/en/latest/
[virtualenvwrapper]: https://virtualenvwrapper.readthedocs.io/en/stable/index.html
[virtualfish]: http://virtualfish.readthedocs.io/en/latest/
