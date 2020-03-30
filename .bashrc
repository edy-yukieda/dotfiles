# .bashrc

############################################
# 共通bashrcの読み込み
############################################
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

############################################
# プロンプトの設定
############################################
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@:\[\033[33m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
############################################
# Gitの設定
############################################
alias ga='git add .'
alias gs='git status'
alias gdf='git diff'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcm='git commit -m'
alias gb='git branch'
alias gp='git push origin head'
alias gby='git branch | grep yuuuking'
alias inic='git commit --allow-empty -m "WIP commit [ci skip]"'

############################################
# aliasの設定
###########################################
alias vb='vim ~/.bashrc'
alias vv='vim ~/.vimrc'
alias vc="vim ."

alias be='bundle exec'
alias rs='bundle exec rails s -b 0.0.0.0'
alias bmg='bundle exec rake db:migrate'

# for Docker
# licky
alias lweb="docker exec -it licky_web /bin/bash"
alias ldb="docker exec -it licky_db /bin/bash"
alias ltest="docker exec -it licky_test /bin/bash"
alias lredis="docker exec -it licky_redis /bin/bash"

# prismy
alias pweb="docker-compose exec rails bash"
alias pat="docker attach pf-api-rails"

alias dps="docker ps"
alias dcm="docker-compose"
alias dup="docker-compose up -d"
alias ddown="docker-compose down"
alias da="docker attach"
alias dset="docker-sync start && docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d && docker attach licky_web"

alias tweb='docker exec -it taimee-rails-api_app_1 /bin/bash'
alias tdb='docker exec -it taimee-rails-api_mysql_1 /bin/bash'
alias dat='docker attach taimee-rails-api_app_1'


# 標準エディタ
export EDITOR=/usr/bin/vim                # Vimを標準エディタとして使う
############################################
