alias reload!='. ~/.zshrc'

alias ll='ls -la'

function php-ext-version() {
    php --re $1 | head -1
}

function kill-all-php() {
    kill $(ps aux | grep '[p]hp' | awk '{print $2}')
}

function kill-all-nginx() {
    kill $(ps aux | grep '[n]ginx' | awk '{print $2}')
}

function xdebug-enable() {
    export XDEBUG_MODE=debug XDEBUG_SESSION=1 
}

function xdebug-disable() {
    unset XDEBUG_MODE
    unset XDEBUG_SESSION
}

function use-php-8.2() {
    brew unlink php@8.3;
    brew unlink php@8.4;
    brew unlink php@8.5;
    brew link php@8.2 --force --overwrite;
    php -v
}

function use-php-8.3() {
    brew unlink php@8.2;
    brew unlink php@8.4;
    brew unlink php@8.5;
    brew link php@8.3 --force --overwrite;
    php -v
}

function use-php-8.4() {
    brew unlink php@8.2;
    brew unlink php@8.3;
    brew unlink php@8.5;
    brew link php@8.4 --force --overwrite;
    php -v
}

function use-php-8.5() {
    brew unlink php@8.2;
    brew unlink php@8.3;
    brew unlink php@8.4;
    brew link php@8.5 --force --overwrite;
    php -v
}

function use-mysql-8.4() {
    brew unlink mysql@9.0;
    brew link mysql@8.4 --force --overwrite;
    php -v
}

function use-mysql-9.0() {
    brew unlink mysql@8.4;
    brew link mysql@9.0 --force --overwrite;
    php -v
}