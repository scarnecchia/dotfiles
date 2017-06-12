# Add `~/bin` to the `$PATH`
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.node/bin:$PATH
export PATH=$HOME/.npm-packages/bin:$PATH
export PATH=/usr/bin/less:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
export PATH=/usr/local/opt/findutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/findutils/libexec/gnuman:$MANPATH
export GRASS_PYTHON=/usr/bin/pythonw2.7
export HOMEBREW_GITHUB_API_TOKEN=60d789f0948538b9e8faf19e5ca762298d0979b9
source ~/perl5/perlbrew/etc/bashrc
export PATH=/usr/local/sbin:$PATH

eval "$(rbenv init -)"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;
