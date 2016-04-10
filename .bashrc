
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if [ "$TERM" == "xterm" ]; then
# No it isn't, it's gnome-terminal
  export TERM=xterm-256color
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
