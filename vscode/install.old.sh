SOURCE=~/Library/Application\ Support/Code/User
TARGET="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "\033[1;32mConfiguring VS Code...\033[0m"

if [ -z $(readlink "$SOURCE") ]; then
    rm -rf $SOURCE
    ln -s $TARGET/User $SOURCE
fi

code --install-extension akamud.vscode-theme-onedark
code --install-extension editorconfig.editorconfig
code --install-extension dbaeumer.vscode-eslint
