if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/usr/lib:$PATH
export PATH=$HOME/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export PYTHONPATH=$PYTHONPATH:/usr/bin/zenmap
# Go variables and path
export GOPATH=/root/go-workspace
export GOROOT=/usr/local/go
PATH=$PATH:$GOROOT/bin/:$GOPATH/bin
export GOROOT=/usr/local/go
export GOPATH=$PATH:/usr/local/go/bin
DISABLE_LS_COLORS="true"
DISABLE_LS_COLORS="true"

# alias zshconfig="mate ~/.zshrc"
alias uu="sudo pacman -Syyu"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias list-packages="ls /var/cache/pacman/pkg/ | less"
alias install="sudo pacman -S"
alias unistall="sudo pacman -R"
alias remove="sudo pacman -Sc"
alias list-unused="sudo pacman -Qtdq"
alias autoremove="sudo pacman -R $(pacman -Qtdq)"
alias ls="lsd"
alias tree="lsd --tree"
alias py="python3"
alias add-key="eval \`ssh-agent -s\` && ssh-add ~/.ssh/github-key"
alias start-database="sudo -u postgres psql"
alias python="python3"
alias cm="chmod +x "
alias py-shebang="echo '#!/usr/bin/python3' | tee "
alias go-shebang="echo '//usr/bin/true; exec /usr/bin/env go run "'$0'" "'$@'"' | tee "
alias generate-key="mkdir ~/.ssh && cd ~/.ssh && ssh-keygen -t ed25519 -C 'mr.oteinobryan@gmail.com'"
alias start-mysql="sudo mkdir /var/run/mysqld/ && sudo service mysql start"
alias start-mysql-root="sudo mkdir /var/run/mysqld/ && sudo service mysql start && mysql -u root -p"
alias run="mysql -u root -p"
alias psql-exec="psql swan -d swan -f"
alias go-to="psql -h localhost -p 5432 -U"
alias pull="git pull --ff-only"
alias push="git push"
alias install="sudo pacman -S"
alias commit="git commit -m"
# alias vim="nvim"
alias cm="chmod u+x"
alias alx="cat ~/bin/c_template.c >>"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
