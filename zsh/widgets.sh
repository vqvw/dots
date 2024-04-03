# find and go to the location of a file or directory
function _find() {
  filename=$(eval $FZF_DEFAULT_COMMAND | fzf)
  [ -f "$filename" ] && filename=$(dirname "$filename")
  cd "$filename"
  zle reset-prompt
}

# go to location a pre-defined location
function _goto() {
  cd "$(cat ~/locations.txt | fzf)"
  zle reset-prompt
}

# find and open file
function _open() {
  filename=$(eval $FZF_DEFAULT_COMMAND | fzf)
  open "$filename" 2&> /dev/null
  zle reset-prompt
}

# find and open file in neovim
function _nvim() {
  nvim $(eval $FZF_DEFAULT_COMMAND | fzf)
  zle reset-prompt
}

zle -N _find && bindkey "^F" _find
zle -N _goto && bindkey "^G" _goto
zle -N _open && bindkey "^O" _open
zle -N _nvim && bindkey "^V" _nvim
