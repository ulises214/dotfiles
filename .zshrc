#StartX
source ~/.custom_zshrc/.zshrc_init
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX="true"
export ZSH="/home/ulisesr/.oh-my-zsh"
DISABLE_AUTO_UPDATE="true"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""
prompt default &> /dev/null
#PROMPT='%F{magenta}%1~%f %F{red}❯%F{yellow}❯%F{green}❯ %f'



# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# git add, git commit, git push all my rices
alias upload-all-rices="cd $DOTFILES/rices && find * -maxdepth 0 -type d -exec upload-rice '{}' ';'"

# opens a random pornhub video
alias porn='mpv "http://www.pornhub.com/random"'

bindkey "^U" backward-kill-line

bindkey "^[l" forward-word
bindkey "^[h" backward-word
bindkey "^[j" down-line-or-history
bindkey "^[k" up-line-or-history

bindkey '^ ' autosuggest-accept
bindkey '^H' autosuggest-clear

if [ -d $HOME/.oh-my-zsh/additional ];
then
    
    # autosuggestions_colorscheme
    autosuggestions_colorscheme=$HOME/.oh-my-zsh/additional/plugins/auto-suggestions/auto-suggestions.colorscheme.conf
    [ -f $autosuggestions_colorscheme ] && source $autosuggestions_colorscheme
    
    # prompt
    prompt_config=$HOME/.oh-my-zsh/additional/prompt.conf
    [ -f $prompt_config ] && source $prompt_config
fi



#eval $(thefuck --alias)
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.custom_zshrc/.zshrc-highlighter
source ~/.custom_zshrc/.zshrc-functions
source ~/.custom_zshrc/.variables
source ~/.custom_zshrc/.paths
source ~/.custom_zshrc/.aliases
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
