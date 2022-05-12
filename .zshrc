# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/waisel/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


###########################################################################################
#  _                     _                   __          __        _    ______            #
# | |                   (_)                  \ \        / /       | |  |  ____|           #
# | |     __ _ _ __ ___  _ _ __   __ _ _ __   \ \  /\  / /__  _ __| | __ |__   _ ____   __#
# | |    / _` | '_ ` _ \| | '_ \ / _` | '__|   \ \/  \/ / _ \| '__| |/ /  __| | '_ \ \ / /#
# | |____ (_| | | | | | | | | | | (_| | |       \  /\  / (_) | |  |   <| |____| | | \ V / #
# |______\__,_|_| |_| |_|_|_| |_|\__,_|_|        \/  \/ \___/|_|  |_|\_\______|_| |_|\_/  #
#                                                                                         #
###########################################################################################


#  ______                       _       #
# |  ____|                     | |      #
# | |__  __  ___ __   ___  _ __| |_ ___ #
# |  __| \ \/ / '_ \ / _ \| '__| __/ __|#
# | |____ >  <| |_) | (_) | |  | |_\__ \#
# |______/_/\_\ .__/ \___/|_|   \__|___/#
#             | |                       #
#             |_|                       #

# Util funcs
pathadd() {
    [[ ":$PATH:" != *":$1:"* ]] && PATH="$1:${PATH}"
}

# Env
pathadd "~/.local/bin"
export REPOS_DIR="/home/$USER/git"


# K8S
export KUBECONFIG=/home/waisel/git/laminfra/terraform/outputs/kubeconfig_eks-dev:/home/waisel/git/laminfra/terraform/outputs/kubeconfig_eks-prod


# Go
export GOPATH=/home/waisel/go
export GOROOT=/usr/local/go
pathadd "$GOROOT/bin"
pathadd "$GOPATH/bin"
pathadd "~/bin"



#           _ _                    #
#     /\   | (_)                   #
#    /  \  | |_  __ _ ___  ___ ___ #
#   / /\ \ | | |/ _` / __|/ _ \ __|#
#  / ____ \| | | (_| \__ \  __\__ \#
# /_/    \_\_|_|\__,_|___/\___|___/#
#                                  #
#                                  #

# Env
alias sudo="sudo"
alias sz="nano ~/.zshrc; source ~/.zshrc"  # Edit and reload zshrc
alias cls="clear"
alias venv='pushd ${REPOS_DIR}/flow&>/dev/null ; . .venv/bin/activate ; popd &>/dev/null'
alias dea='deactivate'
alias ppy='poetry run ipython'

# Utils
aart() {  # Echo ascii art of argument string
    curl https://artii.herokuapp.com/make\?text\=$1
}

# Kitty terminal
alias kiu='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'  # Update Kitty terminal
alias kiconf="nano ~/.config/kitty/kitty.conf; source ~/.config/kitty/kitty.conf"  # Edit and reload Kitty conf
settabtitle(){kitty @ set-tab-title $1}
newtab() {
    echo "source ~/.zshrc;$2 ${@:3};read"
    kitty @ launch --type=tab --tab-title=$1 zsh -c "source ~/.zshrc;$2 ${@:3};read"
}
sw() {
    echo "source ~/.zshrc;$2 ${@:3};read"
    kitty @ launch --hold --type=tab --tab-title="General" zsh -c "source ~/.zshrc;cd ~;awslog"
    kitty @ launch --hold --type=tab --tab-title="Git" zsh -c "source ~/.zshrc;cdf"
}
_sww() {
    kitty @ launch --hold --type=tab --tab-title="API-Launcher" zsh -c "source ~/.zshrc;cdapi;launchapi"
    kitty @ launch --hold --type=tab --tab-title="WebApp" zsh -c "source ~/.zshrc;cdw;yarn generate-api-client;yarn start"
}
_swbe() {
    kitty @ launch --hold --type=tab --tab-title="BE-Launcher" zsh -c "source ~/.zshrc;cdf"
}
sww() {
    sw
    _sww
}
swbe() {
    sw
    _swbe
}
swf() {
    sw
    _swbe
    _sww
}

# Git
gri() {
    git rebase -i HEAD~$1
}


# cd
alias cdf='cd ${REPOS_DIR}/flow'
alias cdlmpy='git ${REPOS_DIR}/flow/saas/lamipy/'
alias cdapi='cd ${REPOS_DIR}/flow/saas/apiserver/'
alias cddora='cd ${REPOS_DIR}/flow/saas/msdora/'
alias cddb='cd ${REPOS_DIR}/flow/saas/dboss/'
alias cdin='cd ${REPOS_DIR}/flow/saas/laminsight'
alias cdw='cd ${REPOS_DIR}/flow/webapp'
# old cd
alias cdsync='cd ${REPOS_DIR}/flow/saas/mrsyncer/'
alias cdbb='cd ${REPOS_DIR}/flow/saas/batchboy/'


# K8S
alias k="kubectl"
alias kdev="kubectl config use-context eks_eks-dev"
alias kprod="kubectl config use-context eks_eks-prod"
alias kp="kubectl get pods"
alias kd="kubectl get deployments"
alias kj="kubectl get jobs"
alias kc="kubectl get cronjobs"


# VPN
alias vpn="sudo tailscale"
alias vpnup="sudo tailscale up --accept-routes"


# AWS
alias awslog="aws sso login &>/dev/null"
alias awsprod="export AWS_PROFILE=Prod"
alias awssand="export AWS_PROFILE=Sandbox"



#  ____             _                  _    _____      _               #
# |  _ \           | |                | |  / ____|    | |              #
# | |_) | __ _  ___| | _____ _ __   __| | | (___   ___| |_ _   _ _ __  #
# |  _ < / _` |/ __| |/ / _ \ '_ \ / _` |  \___ \ / _ \ __| | | | '_ \ #
# | |_) | (_| | (__|   <  __/ | | | (_| |  ____) |  __/ |_| |_| | |_) |#
# |____/ \__,_|\___|_|\_\___|_| |_|\__,_| |_____/ \___|\__|\__,_| .__/ #
#                                                               | |    #
#                                                               |_|    #


setdocker() {
    export DOCKER_NAME=$2
    if [ ! "$(docker ps -a | grep  $DOCKER_NAME)" ]; then
        echo "Docker $DOCKER_NAME doesn't exist, installing";
        $1
        sleep 2
    elif [ "$(docker container inspect -f '{{.State.Running}}' $DOCKER_NAME)" = "true" ]; then
        echo "Docker $DOCKER_NAME already running";
    else
        echo "Starting docker $DOCKER_NAME"
        docker start $DOCKER_NAME &>/dev/null
    fi
}


_export_postgres_env() {
    export POSTGRES_HOST="localhost"
    export POSTGRES_PORT=5432
    export POSTGRES_PASSWORD="mysecretpassword"
    export POSTGRES_USER="postgres"
    #export POSTGRES_DB="cdp_laminar-sandbox"
    export POSTGRES_DB="cdp_dbi-staging-dump-20220324"
    export DOCKER_NAME="postgres-for-lmnr"
    export SKIP_ALEMBIC_VALIDATION="TRUE"
}

_export_postgres_env_prod() {
    export POSTGRES_HOST="uxie-prod.chopjaudpud5.us-east-2.rds.amazonaws.com"
    export POSTGRES_PORT=5432
    export POSTGRES_PASSWORD="5G@N*Xcb4sgKDMkg"
    export POSTGRES_USER="lamiuser"
    export POSTGRES_DB="cdp_rocketmiles"
}

_export_mongo_env() {
    export MONGO_PORT=27017
    export MONGO_HOST=localhost
    export CLIENT_NAME="laminar-sandbox"
}


_set_local_postgres_debug() {
    _export_postgres_env
    docker run --name $DOCKER_NAME -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD -e POSTGRES_DB=$POSTGRES_DB -p $POSTGRES_PORT:$POSTGRES_PORT -d $POSTGRES_USER &>/dev/null;
}


launch_uvicorn() {

    # Execute API Server
    echo "Launchung uvicorn"
    poetry run uvicorn --reload apiserver.main:app --timeout-keep-alive 10 --host ::1
}

_api_prod() {
    # Set up in relevant directory
    echo "Setting up APIServer environment"
    cdapi

    # Export
    _export_postgres_env_prod
    export DEBUG=True

    # Execute API Server
    echo "Launchung uvicorn"
    poetry run uvicorn --reload apiserver.main:app --timeout-keep-alive 10 --host ::1
}

_api_local() {
    # Set up in relevant directory
    echo "Setting up APIServer environment"
    cdapi

    # Export
    _export_postgres_env
    export DOCKER_NAME="postgres-for-lmnr"
    export DEBUG_TENANT="dbi-staging-dump-20220324"
    export DEBUG=True

    # Start docker
    setdocker _set_local_postgres_debug $DOCKER_NAME

    # Update DB
    echo "Upgrading DB schema"
    (poetry run alembic upgrade head) || (echo "Cannot upgrade DB schema to head"; return 1)

    # Execute API Server
    echo "Launchung uvicorn"
    env
    poetry run uvicorn --reload apiserver.main:app --timeout-keep-alive 10
}


_dora_local() {
    # Set up in relevant directory
    echo "Setting up Ms. Dora environment"
    # venv
    cddora

    # Export
    echo "Exporting variables"
    _export_postgres_env
    _export_mongo_env
    export LAMIDATA_BUCKET_NAME="laminar-definitions"

    # Connecting to AWS
    echo "Setting up AWS creds and env"
    #awslog
    awsprod
    #awssand

    # Start docker
    setdocker _set_local_postgres_debug $DOCKER_NAME

    # Start mongod
    echo "Starting Mongod"
    #systemctl start mongod

    # Populate DB
    echo "Populating MongoDB"
    cddb
    poetry run python3 ./scripts/populate_global_test_db.py

    # Start main
    echo "Starting Ms. Dora main"
    cddora
    poetry run python3 msdora --create-analyzer
}


_runbecomp() {
    newtab $1 $2 ${@:3} &>/dev/null
}


launchapi_prod() {
    _runbecomp APIServerProd "_api_prod"
}

launchapi() {
    _runbecomp APIServer "_api_local"
}


launchdora() {
    _runbecomp "Ms. Dora" "_dora_local"
}





#  _                                 #
# | |                                #
# | |     ___  __ _  __ _  ___ _   _ #
# | |    / _ \/ _` |/ _` |/ __| | | |#
# | |____  __/ (_| | (_| | (__| |_| |#
# |______\___|\__, |\__,_|\___|\__, |#
#              __/ |            __/ |#
#             |___/            |___/ #

matcherup_prod() {
    export POSTGRES_PASSWORD="PLACEHOLDER"  # insert prod password
    export POSTGRES_DB=matching_$1
    export POSTGRES_USER="redservice"
    export POSTGRES_HOST="uxie-prod.chopjaudpud5.us-east-2.rds.amazonaws.com"
    export POSTGRES_PORT=5432
    cd ~/git/flow/saas/lamipy/lamipy/redservice/matcher
    python3 __main__.py
}


_bb_local() {

    echo $0 $1
    echo $0 $2
    echo $0 $@
    echo $0 ${@:3}

    # Set up in relevant directory
    echo "Setting up Batchboy environment"
    venv
    cdbb
    cd batchboy

    # Export
    echo "Exporting variables"
    export BATCHBOY_DATE=$1 #2021-10-17
    export BUCKET_NAME="laminar-messages-datalake-prod-new"
    export CLIENT_NAME_EVENTS=$2 #sock-shop-datadog  # client name in s3
    export MONGO_HOST="localhost"
    export MONGO_PORT="27017"
    export CLIENT_NAME_MONGO="test"

    # TEST
    echo $BATCHBOY_DATE
    echo $CLIENT_NAME_EVENTS

    # run mongo
    echo "Starting Mongo"
    sudo systemctl start mongod

    # Generate AWS SSO token via login
    echo "Generating AWS SSO token via manual login"
    awslog

    # Execute
    echo "Executing BatchBoy python"
    python3 __main__.py
}


_matcher_local() {
    # Set up in relevant directory
    echo "Setting up Matcher environment"
    venv
    cdf
    cd saas/lamipy

    # Export
    echo "Exporting Matcher variables for local configuration"
    export CLIENT_NAME="sock-shop-datadog"
    export KAFKA_TOPICS="$CLIENT_NAME-data-events"
    export KAFKA_URL="b-1.kafka-laminar-prod.ox6dxl.c2.kafka.us-east-2.amazonaws.com:9092,b-2.kafka-laminar-prod.ox6dxl.c2.kafka.us-east-2.amazonaws.com:9092,b-3.kafka-laminar-prod.ox6dxl.c2.kafka.us-east-2.amazonaws.com:9092"
    export KAFKA_GROUP_ID="1"
    export POSTGRES_PASSWORD="mysecretpassword"
    export POSTGRES_USER="postgres"
    export POSTGRES_DB="matching_postgres"
    export POSTGRES_HOST="localhost"
    export POSTGRES_PORT=5432
    export DOCKER_NAME="postgres-for-matcher"

    # Start docker
    if [ ! "$(docker ps -a | grep  $DOCKER_NAME)" ]; then
        echo "Docker doesn't exist, installing";
        sleep 2
        docker run --name $DOCKER_NAME -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD -e POSTGRES_DB=$pgdb -p $POSTGRES_PORT:$POSTGRES_PORT -d $POSTGRES_USER &>/dev/null;
    elif [ "$(docker container inspect -f '{{.State.Running}}' $DOCKER_NAME)" = "true" ]; then
        echo "Docker already running";
        sleep 2
    else
        echo "Starting docker"
        docker start $DOCKER_NAME &>/dev/null
    fi

    # Update DB
    echo "Upgrading DB schema"
    (alembic upgrade head &>/dev/null) || (echo "Cannot upgrade DB schema to head"; return 1)

    return 1 #TODO: finish implementing
}


_matcher_prod() {
    # Set up in relevant directory
    echo "Setting up Matcher environment"
    venv
    cdf
    cd saas/lamipy/lamipy/redservice/matcher

    # Export
    echo "Exporting Matcher variables for PRODUCTION configuration"
    export CLIENT_NAME="sock-shop-datadog"
    export KAFKA_TOPICS="$CLIENT_NAME-data-events"
    export KAFKA_URL="b-1.kafka-laminar-prod.ox6dxl.c2.kafka.us-east-2.amazonaws.com:9092,b-2.kafka-laminar-prod.ox6dxl.c2.kafka.us-east-2.amazonaws.com:9092,b-3.kafka-laminar-prod.ox6dxl.c2.kafka.us-east-2.amazonaws.com:9092"
    export POSTGRES_USER="redservice"
    export POSTGRES_DB="matching_$CLIENT_NAME"
    export POSTGRES_HOST="uxie-prod.chopjaudpud5.us-east-2.rds.amazonaws.com"
    export POSTGRES_PASSWORD="PLACEHOLDER"  # Fill matcher password here
    export POSTGRES_PORT=5432

    # Execute
    echo "Executing Matcher-server python"
    python3 __main__.py
}


_sync_local() {
    # Set up in relevant directory
    echo "Setting up MRSyncer environment"
    venv
    cdsync
    cd mrsyncer

    # Export
    # env vars
    export CLIENT_NAME_MONGO="test"
    export MONGO_HOST="localhost"
    export MONGO_PORT="27017"
    export DEFINITIONS_BUCKET="laminar-definitions"
    # for matcher server
    export MATCHER_URL="http://localhost:5000"
    export CLIENT_NAME="postgres"
    # for apiserver
    export API_SERVER_URL="http://localhost:8000"
    export CLIENT_NAME_APISERVER="postgres"

    # Run mongo
    sudo systemctl start mongod

    # Execute MRSyncer python
    python3 __main__.py

}

launchbb() {
    _runbecomp Batchboy "_bb_local" $1 $2
}

launchmatcher_prod() {
    _runbecomp Matcher "_matcher_prod"
}

launchsync() {
    _runbecomp MRSyncer "_sync_local"
}

lbe() {
    #launchmatcher_prod
    launchapi
    sleep 5
    launchsync
}

export PATH="$HOME/.local/bin/:$PATH"
