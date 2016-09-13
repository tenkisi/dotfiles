#!/bin/sh

CURRENT=$(pwd)

abort()
{
    echo "$1" 1>&2
    exit 1
}

[ "$CURRENT" != "$HOME/dotfiles" ] && abort "You can't run the install.sh"

for f in .??*
do
    [ "$f" = ".git" ] && continue
    ln -snfv "$CURRENT"/"$f" "$HOME"/"$f"
done

if [ -e "$HOME"/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
    echo "zsh-syntax-highlighting has already installed"
else
    mkdir -p "$HOME"/.zsh/zsh-syntax-highlighting
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME"/.zsh/zsh-syntax-highlighting
fi

