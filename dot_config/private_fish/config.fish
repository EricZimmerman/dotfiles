if status is-interactive
    # Commands to run in interactive sessions can go here

    set -g fish_greeting

    alias cat="bat"
    #    alias ssh="kitty +kitten ssh"

    abbr -a --position anywhere -- --help '--help | bat -plhelp'
    abbr -a --position anywhere -- -h '-h | bat -plhelp']

    set -x EDITOR nvim
    set -x VISUAL nvim

    starship init fish | source
end
