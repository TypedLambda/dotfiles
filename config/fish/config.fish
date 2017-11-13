
fish_vi_key_bindings

# source $HOME/kerl/19.2/activate.fish 
# dynamic-colors init



#the rest is for normal users, not for root
if test (id -u) -eq 0
    exit
end

if python -c 'import pkgutil; exit(0 if pkgutil.find_loader("virtualfish") else 1)'
    eval (python -m virtualfish)
end
if which -s opan
    eval (opam config env)
end

# set -gx PATH /usr/local/lib/erlang20/bin $PATH
set -gx PATH "$HOME/.node/bin" $PATH
set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx NODE_PATH "$HOME/.node/lib/node_modulesr" $NODE_PATH 

source "$HOME/.asdf/asdf.fish"
