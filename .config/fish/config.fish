if status is-interactive
    # theme_gruvbox light medium
    # fish_config theme save "Catppuccin Macchiato"
    # Commands to run in interactive sessions can go here

    alias lg="lazygit"
    alias vim="nvim"

    set fish_greeting

    export PATH="$PATH:/snap/bin:$HOME/.fzf/bin:$HOME/.local/bin"
    export PATH="$PATH:/usr/local/go/bin"

    # Integrations
    zoxide init fish | source
    fzf --fish | source
    starship init fish | source
end

