alias reload!='. ~/.zshrc'

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