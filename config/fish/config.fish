set -gx PATH $HOME/.cargo/bin $PATH

# source $HOME/kerl/19.2/activate.fish 
source $HOME/.kiex/scripts/kiex.fish
dynamic-colors init

eval (python -m virtualfish); or true
eval (opam config env); or true
