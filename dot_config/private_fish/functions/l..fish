function l. --wraps='eza -a | grep -E "^\\."' --description 'alias l.=eza -a | grep -E "^\\."'
    eza -a | grep -E "^\." $argv
end
