export BASH_IT_CUSTOM=~/dotfiles/bash/bash_it_custom/

# systemd completions
source /usr/share/bash-completion/completions/systemctl
source /usr/share/bash-completion/completions/journalctl
complete -F _systemctl sc
complete -F _journalctl jc
