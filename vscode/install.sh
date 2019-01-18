SOURCE=~/Library/Application\ Support/Code/User
TARGET="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "\033[1;32mConfiguring VS Code...\033[0m"

if [ ! -z $(readlink "$SOURCE") ]; then
    echo "\033[1mDetected symlink at $(readlink $"$SOURCE"). Skipping step.\033[0m"
else
    rm -rf $SOURCE
    ln -s $TARGET/User $SOURCE
fi
