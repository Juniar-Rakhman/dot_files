# telnet & ssh aliases
alias telgit='telnet git.rithm.nl 50022'
alias telsafe='telnet safe-dev.rithm.eu 50022'
alias sshsafe='ssh jrakhman@safe-dev.rithm.eu'
alias sshsmadev='ssh jrakhman@52.49.43.119'
alias sshep='ssh -D 5001 jrakhman@easierphone-dev.almende.org'

#directory aliases
alias cdep='cd ~/projects/java/easierphone/easierphone_android_backend'

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
alias lt='ls -altr'

# ros aliases
alias cbt="catkin build --this"
alias sour="source /opt/ros/noetic/setup.zsh"
