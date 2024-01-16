alias csc='CSCOPE_EDITOR=vim cscope -dqp6'
alias buildcscope="find . -name "*.c" -o -name "*.cpp" -o -name "*.h" > cscope.files; cscope -b"
alias buildctags="ctags -R -b"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
