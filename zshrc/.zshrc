# edit .vimrc and .zshrc
alias evim='nvim ~/.vimrc'
alias zsh='nvim ~/.zshrc'
alias vim='nvim'

# applications
alias music='open -a spotify'

# favorites
alias py='python3'
alias go='cd developer/'
alias web='cd developer/website'
alias remake='make clean && make'

# personal aliases
alias run='open ./index.html'
alias c='clear'

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

# Prompt customization
export PS1="%B%F{green}%n%f%b %3~ ⇉ "
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
