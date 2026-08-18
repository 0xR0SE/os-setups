PROMPT='$ '
HISTFILE=~/.zshrc_history
HISTSIZE=10000
SAVEHIST=10000

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

autoload -Uz compinit
compinit

. "$HOME/.cargo/env"
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/games

alias cpudef="doas sh -c 'echo 1 > /sys/devices/system/cpu/cpufreq/boost' && doas cpupower frequency-set -g powersave"
alias cpump="doas sh -c 'echo 1 > /sys/devices/system/cpu/cpufreq/boost' && doas cpupower frequency-set -g performance"
alias cpulp="doas sh -c 'echo 0 > /sys/devices/system/cpu/cpufreq/boost' && doas cpupower frequency-set -g powersave"
alias torssh='torsocks ssh'
alias tornc='torsocks nc'
alias sudo='doas'
alias qwen2.5-coder-14b='OLLAMA_API_BASE=http://10.0.0.131:11434 aider --model ollama/qwen2.5-coder:14b'
alias qwen3-coder-30b='OLLAMA_API_BASE=http://10.0.0.131:11434 aider --model ollama/qwen3-coder:30b'
alias gemma-cli='OLLAMA_API_BASE=http://10.0.0.131:11434 aider --model ollama/gemma4:12b'
