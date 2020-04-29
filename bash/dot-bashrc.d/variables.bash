source $HOME/.bin/git-completion.sh

export ALTERNATE_EDITOR=""
export BROWSER="firefox"
export EDITOR="$HOME/.bin/em"
export EMAIL="hello@harryrschwartz.com"
export GOPATH="$HOME/code/go"
export GPG_TTY=$(tty)
export HISTFILESIZE=20000
export LANG="en_US"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export NAME="Harry R. Schwartz"
export PROMPT_DIRTRIM=3
export TEXINPUTS=/home/hrs/.texmf:$TEXINPUTS

# Don't spy on me, folks.
export HOMEBREW_NO_ANALYTICS=1
export SAM_CLI_TELEMETRY=0

# Enable tab-completion in `pass`
source /etc/bash_completion.d/password-store

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby 2.7.0

# Remove this once Rails gets past 6.0.2.2.
export RUBYOPT="-W:no-deprecated"

eval $(opam env)

### local config settings, if any

if [ -e $HOME/.bashrc.local ]; then
  source $HOME/.bashrc.local
fi
