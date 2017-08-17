
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

source $HOME/.kiex/scripts/kiex.fish

