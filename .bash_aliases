alias cdind='cd /opt/liferay/ind/liferay/tomcat'
alias cdindfe='cd /opt/liferay/indfe/liferay/tomcat'
alias telgit='telnet git.rithm.nl 50022'
alias telindtest='telnet ind-test-be.rithm.eu 50022'
alias telinddev='telnet ind-dev-be.rithm.eu 50022'
alias sshindtest='ssh jrakhman@ind-test-be.rithm.eu'
alias sshinddev='ssh jrakhman@ind-dev-be.rithm.eu'
alias telsafe='telnet safe-dev.rithm.eu 50022'
alias sshsafe='ssh jrakhman@safe-dev.rithm.eu'
alias telpoc='telnet ind-poc.rithm.eu 50022'
alias sshpoc='ssh jrakhman@ind-poc.rithm.eu'

alias vi="vim"
alias svim="sudo vim"
alias r="source ~/.zshrc"
alias tat='tmux new-session -As $(basename "$PWD" | tr . -)' # will attach if session exists, or create a new session
alias tmuxsrc="tmux source-file ~/.tmux.conf"
alias tmuxkillall="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}" # tmux kill all sessions
alias ct="ctags -R --exclude=.git --exclude=node_modules"
alias dotfiles="ls -a | grep '^\.' | grep --invert-match '\.DS_Store\|\.$'"

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ls -AlF'
alias l='ls -CF'
