function gll --wraps='git log --all --oneline' --description 'alias gll=git log --all --oneline'
  git log --all --oneline $argv
        
end
