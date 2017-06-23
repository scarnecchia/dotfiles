export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.node/bin:$PATH
export PATH=$HOME/.npm-packages/bin:$PATH
export PATH=/usr/bin/less:$PATH
export GRASS_PYTHON=/usr/bin/pythonw2.7
export HOMEBREW_GITHUB_API_TOKEN=
export PATH=/usr/local/sbin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export BLOCKSIZE=1k
export EDITOR=subl
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;


