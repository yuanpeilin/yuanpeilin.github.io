# +----------------------------------+
# |          some GIT alias          |
# +----------------------------------+
alias g='clear && git log --format="%C(yellow)%h%Creset %C(auto)%d%Creset %s %C(blue)(%cr) %C(blue)<%an>" --graph -15 && echo ""'
alias gg='clear && git log --format="%C(yellow)%h%Creset %C(auto)%d%Creset %s %C(blue)(%cr) %C(blue)<%an>" --graph --all -15 && echo ""'
alias glof='git log --format="%C(yellow)%h%Creset %C(auto)%d%Creset %s %C(blue)(%cr) %C(blue)<%an>"'
alias glo='git log --format="%C(yellow)%h%Creset %C(auto)%d%Creset %s %C(blue)(%cr) %C(blue)<%an>" --graph'
alias glol='git log --format="%C(yellow)%h%Creset %C(auto)%d%Creset %s %C(blue)(%cr) %C(blue)<%an>" --graph'
alias gloa='git log --format="%C(yellow)%h%Creset %C(auto)%d%Creset %s %C(blue)(%cr) %C(blue)<%an>" --graph --all'
alias gbr='git branch -vv'
alias gbrvv='git branch -vv'
alias gclone='git clone'
alias gcma='git commit -a -m'
alias gcm='git commit -m'
alias gco='git checkout'
alias gdi='git diff'
alias gdc='git diff --cached'
alias gdn='git diff --name-status'
alias gds='git diff --stat'
alias gft='git fetch'
alias gindex='git ls-files -s'
alias glast='git log --stat -1 HEAD'
alias gmerge='git merge --no-ff'
alias gpprint='git cat-file -p'
alias gptags='git push origin --tags'
alias gpull='git pull'
alias gpulla='git pull --all'
alias gpush='git push'
alias gpusha='git push --all'
alias grf='git reflog'
alias gre='git remote'
alias grev='git remote -v'
alias groll='git checkout HEAD --'
alias gsa='git stash'
alias gsapply='git stash apply'
alias gsclear='git stash clear'
alias gsdrop='git stash drop'
alias gslist='git stash list'
alias gspop='git stash pop'
alias gsshow='git stash show'
alias gst=' clear && git status -bs'
alias gtag='git tag'
alias gtree='git ls-tree -r'
alias gtype='git cat-file -t'
alias gunstage='git reset HEAD --'

# +----------------------------------+
# |           OTHER alias            |
# +----------------------------------+
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias vdir='vdir --color=auto'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias '.bashrc'='vim ~/.bashrc && source ~/.bashrc'
alias '.bash_aliases'='vim ~/.bash_aliases && source ~/.bashrc'
alias bgrep='cat ~/.bashrc | grep'
alias calculator='python3'
alias clean='sudo apt autoclean'
alias desktop='cd ~/Desktop && ls'
alias document='cd ~/Documents && ls'
alias download='cd ~/Downloads && ls'
alias dir='dir --fromat=long --color=auto'
alias du='du -h'
alias free='free -h'
alias '.gitconfig'='vim ~/.gitconfig'

alias hgrep='history | grep'
alias id_rsa.pub='echo "~/.ssh/id_rsa.pub: " && cat ~/.ssh/id_rsa.pub'
alias install='sudo apt install'
alias jnotebook='jupyter notebook &>/dev/null &'
alias l='ls -C'
alias la='ls -CA'
alias ll='ls -ClhA'
alias less='less --color=auto -m'

alias profile='sudo vim /etc/profile && source /etc/profile'
alias remove='sudo apt autoremove'
alias s='source ~/.bashrc'
alias schmod='sudo chmod'
alias shadowsocks='sudo sslocal -c ~/Documents/ss.json -d restart'
alias smkdir='sudo mkdir'
alias sql="mysql -uroot -p980620 --prompt='\u@\h [\d]> ' --database=must"
alias 'ss.json'='vim ~/Documents/ss.json'
alias sservice='sudo service'
alias svim='sudo vim'
alias t1='tree -L 1'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias t4='tree -L 4'
alias t5='tree -L 5'

alias update='sudo apt update'
alias upgrade='sudo apt full-upgrade'
alias .vimrc='vim /home/ypl/workspace/yuanpeilin.github.io/software/src/vimrc'
alias wl='wc -l'
alias ws='cd ~/workspace && ls'

# +----------------------------------+
# |            USER alias            |
# +----------------------------------+
PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\e[01;32m\]\u@\h\[\e[00m\] \[\e[01;34m\]\w$(git_branch)\[\e[00m\]\$ '

export CDPATH=.:/home/ypl/
export VULTR='149.28.149.197'

alias yuanpeilin='cd ~/workspace/yuanpeilin.github.io && git status -bs'
alias svultr='ssh root@$VULTR'

mc() {
    fcitx_pids=$(ps -ef | grep fcitx | awk '{print $2}' | tr '\n' ' ')
    echo "$fcitx_pids"
    for pid in $fcitx_pids; do
        kill $pid
    done
    unset fcitx_pids pid
    java -jar /opt/hmcl/HMCL-3.3.172.jar &>/dev/null &
}
