# helper functions

function lastPassCopy () {
  lpass show --password ${1} | xclip -sel clip
}

# usage: replace <search term> <replacement> <files/dirs>
function replace () {
  grep -rl ${1} ${@:3} | xargs sed -i '' "s/${1}/${2}/g"
}

# aliases
alias cdw='cd ~/projects/open-source/windbreaker-io'
alias cdp='cd ~/projects/private'
alias cdo='cd ~/projects/open-source'
alias cdg='cd ~/projects/golang'

alias pbcopy='xclip -selection clipboard'

alias cdl='cd ~/work/lifeomic'

alias killn='killall node'

alias kblm='kb-el-switcher "Mechanical Keyboard"'
alias kbld='kb-el-switcher "Default profile"'

# when chunkwm acts up
alias ffs='brew services restart chunkwm'

alias rmswp='find . -name "*.sw*" -ok rm {} +'

alias chromedriver='~/chromedriver'

alias imgcat='~/scripts/imgcat.sh'

alias awsgen='~/scripts/awsgen.sh'
alias pawsgen='~/scripts/personal-awsgen.sh'

alias octave='/usr/local/octave/3.8.0/bin/octave-3.8.0'
alias adb='/usr/local/opt/android-sdk/platform-tools/adb'
alias mp='markdown-preview'
alias m='bat'

alias weather="~/scripts/weather.sh"

alias loadnvm='source ~/.nvm/nvm.sh'

alias ns='npm start'
alias nt='npm test'
alias ys='yarn start'
alias yt='yarn test'

alias notes='pushd ~/notes; vim; popd'

alias control-center='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'

set -o ignoreeof

# nvm use default

export PATH="$HOME/.cargo/bin:$PATH"

alias okta='lpass show --password okta.com | ~/work/okta.sh'
alias lpcp='lastPassCopy'

alias lodash='lifeomic-deployment-dashboard'
alias lodiff='lifeomic-deployment-diff lifeomic-dev lifeomic-prod'

alias git-recent="git for-each-ref --sort=committerdate refs/heads/ \
  --format='%(HEAD) \
  %(color:yellow)%(refname:short)%(color:reset) - \
  %(color:red)%(objectname:short)%(color:reset) - \
  %(contents:subject) - \
  %(authorname) \
  (%(color:green)%(committerdate:relative)%(color:reset))'"

# python
PATH="$HOME:/home/charlie/.local/lib/python2.7/site-packages:$PATH"

# ruby
PATH=":$HOME/.rbenv/bin:$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# fnm
export PATH="$HOME/.fnm:$PATH"
eval "`fnm env --multi`"

# startup
fnm use 8.10 --quiet
eval "$(rbenv init -)"

keychain -q id_rsa
. ~/.keychain/`uname -n`-sh
