# .bashrc

# Source global definitions
# Debian
[ -f /etc/bash_completion ] && . /etc/bash_completion

# User specific environment
declare -a paths=(
    "$HOME/bin"
    "$HOME/.local/bin"
)

for p in "${paths[@]}"; do
    [[ ":$PATH:" != *"$p"* ]] && PATH="$p:$PATH"
done
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Add FZF keybindings
# Debian
[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && . /usr/share/doc/fzf/examples/key-bindings.bash

# Use ripgrep for fzf (not in silverblue host though as it won't be installed)
if which rg >/dev/null 2>&1; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

# Aliases
alias ls="ls --color"
alias ll="ls -lA"

# Disable command not found searching as it is slow and pointless
unset command_not_found_handle
