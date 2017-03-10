set KIEX_HOME $HOME/.kiex
setenv PATH $KIEX_HOME/bin $PATH

if test -f $KIEX_HOME/elixirs/.default.fish
  source $KIEX_HOME/elixirs/.default.fish
end
