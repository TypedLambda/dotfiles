fish_vi_key_bindings

# source $HOME/kerl/19.2/activate.fish 
# dynamic-colors init

#the rest is for normal users, not for root
if test (id -u) -eq 0
    exit
end

function export_prepend_dir -d 'prepend a path to a variable if it exists'
    if test -d $argv[1]
        set -gx $argv[1] $argv[2..-1] $$argv[1]
    end
end

function source_existing -d 'source file if it exists'
    if test -f "$argv"
        source "$argv"
    end
end

if which -s python2.7 
    alias python python2.7
    set PYTHON_VER 2.7
else
    if which -s python3.6
        alias python python3.6
        set PYTHON_VER 3.6
    end
end


if set -q PYTHON_VER
    if python -c 'import pkgutil; exit(0 if pkgutil.find_loader("virtualfish") else 1)'
        eval (python -m virtualfish)
    end
end

if which -s opan
    eval (opam config env)
end

# set -gx PATH /usr/local/lib/erlang20/bin $PATH
export_prepend_dir PATH  "$HOME/.node/bin"
export_prepend_dir PATH "$HOME/.cargo/bin"
export_prepend_dir NODE_PATH "$HOME/.node/lib/node_modules" 
source_existing "$HOME/.asdf/asdf.fish"
# source_existing "$HOME/.erlang-20.2/activate.fish"
source_existing "$HOME/.asdf/asdf.fish"

set -gx querty "-=qwertyuiop[]asdfghjkl;'zxcvbnm,./_+QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>?"
set -gx dvorak "[]',.pyfgcrl/=aoeuidhtns-;qjkxbmwvz{}\"<>PYFGCRL?+AOEUIDHTNS_:QJKXBMWVZ"

