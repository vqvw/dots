#
#   Include
#

source ~/.config/zsh/aliases.sh
source ~/.config/zsh/fzf.sh
source ~/.config/zsh/widgets.sh


#
#   Eval
#

eval "$(starship init zsh)"
eval "$(fzf --zsh)"


#
#   Env
#

export JAVA_HOME='/usr/lib64/jvm/java-17-openjdk-17'
export JRE_HOME='/usr/lib64/jvm/jre-17'
export TMUX_TMPDIR='/tmp'


#
#   Path
#

export PATH="$PATH:/usr/local/go/bin:$HOME/.npm-global/bin:$HOME/.cargo/bin:$HOME/.local/share/nvim/mason/bin:$HOME/x/flutter/sdk/bin:$JAVA_HOME/bin:$HOME/x/java/apache-maven-3.9.9/bin:$HOME/AppImage/bin"


#
#   Functions
#

# check updates
function chkup() {
  print -P '%B%F{blue}Zypper:%f%b'
  zypper lu
  echo
  print -P '%B%F{blue}Flatpak:%f%b'
  flatpak_updates=$(flatpak remote-ls --updates)
  [ "$flatpak_updates" != '' ] && echo $flatpak_updates || echo 'Nothing to update.'
  echo
  print -P '%B%F{blue}Snap:%f%b'
  snap refresh --list
}

# convert to pdf: topdf myfile.docx
function topdf() {
  lowriter --convert-to pdf "$@"
}

# remove spaces from filenames, replaced with underscores: rmspaces *.pdf
function rmspaces() {
  for f in "$@"; do
    dir=$(dirname "$f")
    bn=$(basename "$f")
    bnFormatted=$(echo "$bn" | tr " " _)
    mv "$f" "$dir/$bnFormatted"
  done
}

# zip directories: zipdir mydir myotherdir
function zipdir() {
  for f in "$@"; do
    zip -r "$f" "$f"
  done
}

# make and change into directory: mkcd mydir
function mkcd() {
  mkdir $1 && cd $1
}

# git checkout
function gc() {
  git checkout $(git branch | fzf)
}

# git checkout remote
function gcr() {
  git checkout $(git branch -r | fzf)
}

# google search with $BROWSER: search bash replace in string
function search() {
  q=$(echo "$@" | sed 's/\s\+/+/g')
  "$BROWSER" "https://www.google.co.uk/search?q=$q"
}

# open notes
function notes() {
  nvim ~/Documents/Notes/notes.md
}

# create tmux session
function create_sessions() {
  sh ~/.config/tmux/create_sessions.sh
}
