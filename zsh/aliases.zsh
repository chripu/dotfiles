alias reload!='. ~/.zshrc'

alias ll='ls -la'

function kill-all-php() {
    kill $(ps aux | grep '[p]hp' | awk '{print $2}')
}

function kill-all-nginx() {
    kill $(ps aux | grep '[n]ginx' | awk '{print $2}')
}

function start-cert() {
    clear
    cd ~dev/certificationy-cli
    php certificationy.php --number=10       
}

function hosts-plusserver() {
    sudo sh -c 'cat /etc/hosts.default /etc/hosts.custom > /etc/hosts'
}

function hosts-burda() {
    sudo sh -c 'cat /etc/hosts.default /etc/hosts.custom /etc/hosts.site2site > /etc/hosts'
}

function nginx-reload() {
    launchctl unload -w /Users/d429161/Library/LaunchAgents/homebrew.mxcl.nginx.plist
    launchctl load -w /Users/d429161/Library/LaunchAgents/homebrew.mxcl.nginx.plist
}

function use-php-7.4() {
    brew unlink php@8.1;
    brew unlink php@8.2;
    brew link php@7.4 --force --overwrite;
    php -v
}

function use-php-8.1() {
    brew unlink php@7.4;
    brew unlink php@8.2;
    brew link php@8.1 --force --overwrite;
    php -v
}

function use-php-8.2() {
    brew unlink php@7.4;
    brew unlink php@8.1;
    brew link php@8.2 --force --overwrite;
    php -v
}