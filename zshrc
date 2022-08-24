#   -------------------------
#   PATH CONFIGURATION # NEEDS FIXING
#   -------------------------
export PATHBREW="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
export PATHCONDA="/Users/ayman/anaconda3/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
export PATHNAND="$PATH:~/Downloads/nand2tetris/tools"

alias path_brew="export PATH='$PATHBREW'"
alias path_conda="export PATH='$PATHCONDA'"
alias path_nand="export PATH='$PATHNAND'"

#   -------------------------
#   NAVIGATION
#   -------------------------
alias projects="cd ~/Documents/Dev/"
alias css="cd ~/Documents/Obsidian/.obsidian/snippets/"
alias tkinter="curl https://raw.githubusercontent.com/aymannel/guitemplate/master/guitemplate.py --output interface.py"
alias leet='cd ~/Documents/Dev/python/leet && mvim -c ":bot terminal" main.py'
alias newleet='cd ~/Documents/Dev/python/leet && cp template.py leet_$(date +"%I%M%S").py && mvim leet_$(date +"%I%M%S").py'
#alias newleet='cd ~/Documents/Dev/python/leet && cp template.py leet_$(date +"%I%M%S").py && mvim -c ":bot terminal" leet_$(date +"%I%M%S").py'

# zsh scripts
alias gitme="/usr/local/bin/gitme.zsh"

# conda environments
alias coshh="cd ~/Documents/Dev/coshh/autocoshh/ && conda deactivate && conda activate coshh"
alias scrappyenv="cd ~/Documents/Dev/scrappy/ && conda deactivate && conda activate scrappy"

scrappy() { python ~/Documents/Dev/python/scrappy/run.py "$1" "$2" "$3" "$4" }

#   -------------------------
#   COMMANDS
#   -------------------------
alias path='echo -e ${PATH//:/\\n}'
alias conf="mvim ~/.zshrc"
alias vimrc="mvim ~/.vimrc"
alias sconf='source ~/.zshrc'
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias cp='cp -iv'
alias mv='mv -iv'
alias ll='ls -FAhs'
mcd () { mkdir -p "$1" && cd "$1";}
archive () { command mv "$@" ~/.Trash;}


#   -------------------------
#   INITIALISE CONDA
#   -------------------------

__conda_setup="$('/Users/ayman/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ayman/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ayman/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ayman/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup


#   -------------------------
#   INITIALISE OCAML
#   -------------------------
#
[[ ! -r /Users/ayman/.opam/opam-init/init.zsh ]] || source /Users/ayman/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
