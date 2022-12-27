# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
  alias zshconfig="nano ~/.zshrc"
  alias ohmyzsh="nano ~/.oh-my-zsh"
# git alias
  alias giti="git init"
  alias gitic="git add . && git commit -m 'Initial commit'"
# npm alias
  alias npmi="npm init -y"
  alias npms="npm start"
  alias npmrd="npm run dev"
  alias npmI="npm install"
  alias npmD="npm install --save-dev"
  alias npmG="npm install -g"
# apt alias
  alias aptup="sudo apt update"
  alias aptupg="sudo apt upgrade"
  alias aptall="sudo apt update && sudo apt upgrade"
# exa
  alias ll="exa -l --icons --no-user --group-directories-first  --time-style long-iso"
  alias la="exa -a -l --icons --no-user --group-directories-first  --time-style long-iso"
  
  
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search copypath jsontools aws docker node terraform)
