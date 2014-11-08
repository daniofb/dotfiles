# Input Mode
bindkey -v
source $HOME/.zshfiles/keybindings
source $HOME/.zshfiles/aliases

# Prompt
autoload -U promptinit
promptinit
prompt bart

# Lines configured by zsh-newuser-install
HISTFILE=${HOME}/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt NO_HIST_BEEP

setopt append_history       # don't _overwrite_ history
setopt inc_append_history   # append history as command are entered
setopt share_history        # share history between shells
setopt hist_verify          # allow correction of !-expressions before running them
setopt hist_ignore_dups     # don't save duplicate entries in history

setopt auto_cd

# Correction
unsetopt beep
setopt correct
setopt correctall

setopt autolist

# Misc
setopt clobber              # > and >> work as expected
setopt multios              # Enable piping to multiple outputs
setopt interactivecomments  # Enable comments in interactive mode
setopt    braceccl                     # {a-z} {0-2} etc expansion

# Directory Changing
setopt autocd           # Automatically change directory
setopt pushdsilent      # Make "popd" be less verbose (like cd)
setopt pushdignoredups  # Don't record the same directory as multiple entries
setopt pushdtohome
setopt cdable_vars
DIRSTACKSIZE=10         # Limit the number of directories to keep in history

# Job Control
setopt notify
setopt long_list_jobs
setopt nohup
setopt autoresume
setopt autocontinue

# Completion, expansion and globbing
setopt automenu
setopt autolist
setopt complete_in_word
setopt always_to_end
setopt menucomplete
setopt listpacked
setopt globdots
setopt extendedglob
setopt markdirs
setopt nomatch
setopt numeric_glob_sort
setopt rc_quotes
setopt rec_exact
unsetopt autoparamslash

# Load completion options
source $HOME/.zshfiles/completion
