# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

fastfetch

. "$HOME/.local/bin/env"

# use jq . piped alias prettyget="
alias get="curl -X GET"
alias header="curl -I"

# some stupid typescript that needs to be disabled
alias script="echo 'nah nah nah'"

alias gom="go mod init"
alias c="clear"
alias s="source"
alias going="go run ."
alias goinga="go run"
alias clip="pbcopy" #yea ik this is shit
alias pgarc="bash ~/scripts/ping_script.sh"
alias pgg="bash ~/scripts/google_ping.sh"
alias cdd="cd ~/Desktop"
alias reload="source ~/.zshrc" #no need, use zsh
alias scripts="nvim ~/scripts"
alias zshrc="nvim ~/.zshrc"
alias ff="fastfetch"
alias pgv="bash ~/scripts/ping_vercel.sh"
alias runclip="go run ~/Desktop/c/ding/Sensitive/clipboard-assistant/main.go"
alias ytd="yt-dlp -o ~/ytvideos"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias edit="nvim"
alias ed="nvim"
alias ..="cd .."
alias hm="cd"
alias ex="exit"
alias ctrc="cat ~/.zshrc"
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
alias list="echo 'gom = go mod init\nc = clear\ns = source\ngoing = go run .\ngoinga = go run\nclip = pbcopy\npgarc = run ping script\ncdd = cd desktop\nreload = reload .zshrc\nzshrc = open .zshrc\nff = fastfetch\npgv = ping vercel'"

# Added by Antigravity IDE
#export PATH="/Users/soyuz/.antigravity-ide/antigravity-ide/bin:$PATH"

