# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias cls='clear'

alias showdotfiles='defaults write com.apple.finder AppleShowAllFiles -boolean true;killall Finder'
alias hidedotfiles='defaults write com.apple.finder AppleShowAllFiles -boolean false;killall Finder'

alias startmongo='mongod run --fork --config /usr/local/etc/mongod.conf'
