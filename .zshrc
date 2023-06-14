# Path to your oh-my-zsh installation.
export ZSH="/home/jrakhman/.oh-my-zsh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# Plugins
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    colored-man-pages
    zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

#AUTOSUGEST_config
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=095'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export GIT_EDITOR=nvim

# GraalVM path
export GRAALVM_HOME=$HOME/.sdkman/candidates/java/22.3.1.r17-grl/
export PATH=$GRAALVM_HOME/bin:$PATH

# GO PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/gocode
export PATH=$GOPATH/bin:$PATH

# Rust PATH
export CARGO_PATH=$HOME/.cargo
export PATH=$CARGO_PATH/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# lazy nvim
LVIM_ROOT=~/.config/lvim
export LVIM_ROOT
alias lvim='XDG_DATA_HOME=$LVIM_ROOT/share XDG_CONFIG_HOME=$LVIM_ROOT nvim'

# astro nvim
AVIM_ROOT=~/.config/astro_nvim
export AVIM_ROOT
alias avim='XDG_DATA_HOME=$AVIM_ROOT/share XDG_CONFIG_HOME=$AVIM_ROOT nvim'

# custom nvim
NVIM_ROOT=~/.config/nv
export NVIM_ROOT
alias nv='XDG_DATA_HOME=$NVIM_ROOT/share XDG_CONFIG_HOME=$NVIM_ROOT nvim'

# Starship
eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jrakhman/.sdkman"
[[ -s "/home/jrakhman/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jrakhman/.sdkman/bin/sdkman-init.sh"
