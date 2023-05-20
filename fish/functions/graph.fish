function graph --wraps='git log --all --graph --decorate --oneline' --description 'alias graph=git log --all --graph --decorate --oneline'
  git log --all --graph --decorate --oneline $argv
        
end
