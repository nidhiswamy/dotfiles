# edit .vimrc and .zshrc
alias evim='nvim ~/.vimrc'
alias zsh='nvim ~/.zshrc'

# applications
alias music='open -a spotify'

# favorites
alias py='python3'
alias go='cd developer/'
alias web='cd developer/website'
alias remake='make clean && make'

# personal-website aliases
alias run='open ./index.html'

# git commands
alias ga='git add'
alias gall='git add .'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push origin main'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

