Configuration Files For Vim
===========================

## Setup
Create a symlink in $HOME named `.vim` on UNIX-like, `vimfiles` on Windows operating systems.

## vimrc
Contains all settings. I haven't bothered splitting it up so far.
* `$VIMLOCAL` is set dependung on the OS, check `:h vimrc`. Is set to `$HOME./vimfiles` if on Windows, to `$HOME/.vim` otherwise.
* Thus, the options `backupdir`and `undodir` are OS agnostic.

## Directories
All directories needed for `vimrc` to work contain `.keep` files, allawing the directories to be included in the repo.
* `backup`
* `undo`...

--  
Have fun!  
schwammerl
