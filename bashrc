export PS1="\[\e[0;32m\]\u\[\e[0;31m\] \w \[\e[0;32m\]\\$\[\e[0m\] "
mark-to-html() {
  pandoc -H ~/dotfiles/github-md-css.html -f markdown_github $1;
}
