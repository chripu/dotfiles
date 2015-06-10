alias la='ls -FAlhq'   # long ls
alias lt='ls -FAlhtq'  # long ls by time
alias lss='ls -AlhqS'  # long ls by size

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias cls='clear'

alias showdotfiles='defaults write com.apple.finder AppleShowAllFiles -boolean true;killall Finder'
alias hidedotfiles='defaults write com.apple.finder AppleShowAllFiles -boolean false;killall Finder'

alias startmongo='mongod run --fork --config /usr/local/etc/mongod.conf'
