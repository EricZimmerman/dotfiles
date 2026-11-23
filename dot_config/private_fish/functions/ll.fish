function ll --wraps=ls --wraps='eza --icons --group-directories-first -l -b --total-size -g -h' --description 'alias ll=eza --icons --group-directories-first -l -b --total-size -g -h'
    eza --icons --group-directories-first -l -b --total-size -g -h $argv
end
