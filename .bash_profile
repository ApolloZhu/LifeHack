# To update, execute:
# . ~/.bash_profile

safe_exit(){
        while true
        do
                echo -n "Is it okay to exit? (yes/no):"
                read decision
                if  [ "$decision"x = "yes"x ]; then
                        echo "Exit confirmed"
                        \exit
                else
                        echo "Cancelled"
                        break
                fi
        break
        done
}
alias exit="safe_exit"

alias unicode="python3 ~/LifeHack/UnicodeUtil.py"
alias download="python3 ~/LifeHack/Download\ File.py"

alias libcmd="pico ~/.bash_profile"

export PS1=">_ "
