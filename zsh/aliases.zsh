alias reload!='. ~/.zshrc'

function kill-all-php() {
    kill $(ps aux | grep '[p]hp' | awk '{print $2}')
}

function start-dev() {
    mysql.server start
    phpbrew fpm start
    ulimit -n 1024
    brew services restart redis
    brew services restart memcached
    #brew services restart postgresql
    #redis-server /usr/local/etc/redis.conf
    #pg_ctl -D /usr/local/var/postgres/9.6 -l /usr/local/var/postgres/9.6/server.log start
    sudo nginx
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