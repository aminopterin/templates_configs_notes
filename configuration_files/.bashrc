# Filename: .bashrc
# Author: Tzu-Yu Jeng
# Date: mostly late 2016
# Description: An interactive non-login shell loads this file.

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# To open Bash profile.
alias OpenBashrc="mvim -v ~/.bashrc"
# To source Bash profile.
alias SourceBashrc="source ~/.bashrc"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# To configure color.

# To prompt time in minutes, and current directory (not full path).
export PS1="\[\033[0;32m\]aminopterin\[\033[0;34m\][\A]\[\033[0;31m\]@\W\[\033[0;37m\]$ "

# To enable color in command line interface.
export CLICOLOR=1

# To specify color settings used by `ls` ("list") display.
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"

# `ls` for hidden & short form; `Ls` unhidden & long form;
# `-G`: to enable colorized output;
# `-F`: to display a slash;
# `-h`: to use human readable format, e.g. KB, MB, GB,...;
# `-l`: to use long format, including permissions and date modified;
# `-a`: to display hidden files, say `.DS_Store`
alias ls="ls -GFh"
alias Ls="ls -alGFh"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# Command-line completion resp. using up and down arrow keys.
bind "\"\e[A\": history-search-backward"
bind "\"\e[B\": history-search-forward"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# To set MacVim as the default editor, such as commit logs.
export VISUAL="mvim -v"
export EDITOR="${VISUAL}"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# To show hidden files in Mac `Finder.app`.
alias ShowFiles="defaults write com.apple.finder AppleShowAllFiles YES"
# To show hidden files in Mac `Finder.app`.
alias HideFiles="defaults write com.apple.finder AppleShowAllFiles NO"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# `cd` (change directory) shortcuts.
# Double quotes ensures they are passed as a single entity.
MY_DOC="${HOME}/Documents"
alias GoToEssays="cd \"${MY_DOC}/essays_vol_8_(since_Jan_2017)\""
alias GoToAllFairCopies="cd \"${MY_DOC}/all_fair_copies\""
alias GoToLilyPondWork="cd \"${MY_DOC}/LilyPond_work\""
alias GoToLaTexWork="cd \"${MY_DOC}/LaTeX_work\""
alias GoToPrograms="cd \"${MY_DOC}/programs_of_mine\""
alias GoToStackExchange="cd \"${MY_DOC}/stack_exchange_posts\""
alias GoToBooks="cd \"${MY_DOC}/books\""

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# Application shortcuts.
# `&` runs process in background; `$@` expands to all passed parameters.

# To compile LilyPond `.ly` file.
alias LilyPond="/Applications/LilyPond.app/Contents/Resources/bin/lilypond"

# To open `foo` as pure text with TextEdit with `TextEdit foo`.
function TextEdit ()
{
   open -a TextEdit "$@" &
}

# To rename `foo` with `bar`, with `RecursivelyRename foo bar`,
# within filenames throughout current directory and all subdirectories.
# A Perl-based utility `rename` is used; `-S` for "substitute all".
# Enter `brew install rename` to install that.
function RecursivelyRename ()
{
   find . -exec rename -S "$@" {} +
}

# To open with MacVim embedded in the terminal.
alias Vim="mvim -v"

# To browse PTT.
alias BrowsePtt="ssh bbsu@ptt.cc"
# To browse PTT2.
alias BrowsePtt2="ssh bbsu@ptt2.cc"

# The folder where scripts are saved.
MY_SCRIPTS="${HOME}/templates_configs_scripts/scripts"
# To compile Markdown (possibly with LaTeX embedded) into PDF.
alias Pandoc="${MY_SCRIPTS}/run_pandoc.sh"
# To compile LaTeX (without Chinese) into PDF.
alias Pdflatex="${MY_SCRIPTS}/run_pdflatex.sh"
# To compile XeLaTeX source (possibly with Chinese) into PDF.
alias Xelatex="${MY_SCRIPTS}/run_xelatex.sh"

# This line was added by system when installing Perl5.
# It calls `perlbrew`, which maintains and updates Perl.
source "/Users/amino/perl5/perlbrew/etc/bashrc"

