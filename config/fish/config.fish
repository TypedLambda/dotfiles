
fish_vi_key_bindings

set -gx PATH $HOME/.cargo/bin $PATH

# source $HOME/kerl/19.2/activate.fish 
# dynamic-colors init

if test (id -u) -ne 0
    # if normal user
    eval (python -m virtualfish); or true
    eval (opam config env); or true
    source $HOME/.kiex/scripts/kiex.fish
end

