autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "on git:%{$fg_bold[green]%}[$(git_prompt_info)]%{$reset_color%}"
    else
      echo "on git:%{$fg_bold[red]%}[$(git_prompt_info)]%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

username_or_alias () {
  [ -f ~/.user-name ] && cat ~/.user-name || echo $USER
}

user_name () {
  echo "%{$fg_bold[cyan]%}$(username_or_alias)%{$reset_color%}"
}

php_version_current() {
  if type "php" > /dev/null
  then
    local version=$(php -v | grep -E "PHP [578]" | sed 's/.*PHP \([^-]*\).*/\1/' | cut -c 1-6 | xargs) 
#    if [[ -z "$PHPBREW_PHP" ]]
#    then
#      echo "php:$version-system"
#    else
#      echo "php:$version-phpbrew"
#    fi
    echo "php:$version-brew"
  else
    echo "php:not-installed"
  fi
}

php_version() {
  echo "%{$fg_bold[magenta]%}$(php_version_current)%{$reset_color%}"
}

directory_name() {
  echo "%{$terminfo[bold]$fg[yellow]%}${PWD/#$HOME/~}%{$reset_color%}"
}

export PROMPT=$'\n$(user_name) with $(php_version) in $(directory_name) $(git_dirty)$(need_push) \n$> '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
