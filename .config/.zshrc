# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

fastfetch

. "$HOME/.local/bin/env"

# use jq . piped alias prettyget="
alias get="curl -X GET"
alias header="curl -I"

# some stupid typescript that needs to be disabled
alias script="echo 'nah nah nah'"

# some commands related to ffmpeg
# ffmpeg -i something.webp somethingelse.png
# very useful
alias fix="kill $THIS"
alias edit="nvim $HOME/.config/nvim/init.lua"
alias ghost="nvim $HOME/.config/ghostty/config.ghostty"
alias up="uptime"
alias gom="go mod init"
alias c="clear"
alias s="source"
alias going="go run ."
alias goinga="go run"
alias clip="pbcopy" #yea ik this is shit
alias pgarc="bash $HOME/scripts/ping_script.sh"
alias pgg="bash $HOME/scripts/google_ping.sh"
alias cdd="cd ~/Desktop"
alias reload="source ~/.zshrc" #no need, use zsh
alias scripts="nvim $HOME/scripts"
alias zshrc="nvim $HOME/.zshrc"
alias ff="fastfetch"
alias pgv="bash $HOME/scripts/ping_vercel.sh"
alias runclip="go run $HOME/Desktop/c/ding/Sensitive/clipboard-assistant/main.go"
alias ytd="yt-dlp -o $HOME/ytvideos"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ed="nvim ."
alias ..="cd .."
alias hm="cd"
alias ex="exit"
alias ctrc="cat $HOME/.zshrc"
alias coffee="caffeinate"
alias i="whoami"
alias I="whoami"
alias coffeew="caffeinate -w"

# git commands
alias gs="git status"
alias gc="git commit -m"
alias gl="git log"
alias gol="git log --oneline"
alias gp="git push -u"
alias gaa="git add ."
alias ga="git add"
alias gr="git rm"
alias grm="git rm --cached"
alias gcl="git clone"

# list 
alias list="cat $HOME/.zshrc | grep --color=never alias" 

# Added by Antigravity IDE
#export PATH="/Users/soyuz/.antigravity-ide/antigravity-ide/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
. "$HOME/.deno/env"

# Added by cua-driver-rs installer — see https://github.com/trycua/cua
export PATH="$HOME/.local/bin:$PATH"
