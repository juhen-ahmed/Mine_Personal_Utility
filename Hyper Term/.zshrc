# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
DISABLE_AUTO_TITLE="true"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls='clear'
alias gita='git add .'
alias gitc='git commit -m'
alias gitp='git push'
alias gitpl='git pull'
alias gits='git status'
alias ls='lsd'




export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz add-zsh-hook

typeset -g __last_real_cmd=""

add-zsh-hook preexec capture_cmd
add-zsh-hook precmd add_spacing

capture_cmd() {
  __last_real_cmd="$1"
}

add_spacing() {
  [[ -z "$__last_real_cmd" ]] && return
  [[ "$__last_real_cmd" == "clear" || "$__last_real_cmd" == "cls" ]] && return
  print ""
}

eval "$(zoxide init zsh)"

export DISABLE_LS_COLORS="true"
unset LS_COLORS
unset LSCOLORS


if command -v vivid >/dev/null; then

export LS_COLORS="$(vivid generate snazzy)"

export LS_COLORS="no=00:fi=00:di=34:ow=34;40:ln=35:pi=30;44:so=35;44:do=35;44:bd=33;44:cd=37;44:or=05;37;41:mi=05;37;41:ex=00:*.js=38;5;220:*.jsx=38;5;220:*.mjs=38;5;220:*.html=38;5;202:*.htm=38;5;202:*.css=38;5;33:*.scss=38;5;201:*.sass=38;5;201:*.ts=38;5;33:*.tsx=38;5;33:*.json=38;5;197:*.yaml=38;5;197:*.yml=38;5;197:*.md=38;5;113:*.py=38;5;113:*.php=38;5;141:*.svg=38;5;209:*.webp=38;5;111:*.png=38;5;111:*.jpg=38;5;111:*.jpeg=38;5;111:*.gif=38;5;111:*.pdf=38;5;197:*.sh=38;5;113:*.zsh=38;5;113:*.sql=38;5;220:*.env=38;5;220:*.git=38;5;202:*.c=38;5;33:*.cpp=38;5;33:*.h=38;5;141:*.java=38;5;202:*.rb=38;5;197:*.go=38;5;33:*.xml=38;5;202:*.txt=38;5;250:*.log=38;5;113:*.exe=01;31:*.zip=1;35:*.tar=1;35:*.gz=1;35:*.rar=1;35:*.7z=1;35:*.dmg=1;35:*.bin=1;35:*.sqlite=34:*.gpg=34:*.env=38;5;220:*.swift=38;5;202:*.avif=38;5;111"

fi

unset LSCOLORS
