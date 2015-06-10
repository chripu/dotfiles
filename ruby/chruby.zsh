if (( $+commands[chruby] ))
then
  RUBIES=($HOME/.rubies/rub*)
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi
