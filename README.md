## Portable bash dotfiles (formerly SH (formerly KSH))
This directory is meant to be a standalone set of bash functions and aliases for bash versions 4.4 and up. The sh directory can be located anywhere (e.g. some random network drive) , all you need to do is change to the base directory and source init.sh to populate your current session.

### Usage

add a line in your bashrc to source the init script

```
source /path/to/dir/init.sh
```

### Organization
.
├── lib             # common functions and env vars
├── prompt\_string  # PS1 configuration
├── aliases         # general tool-independent aliases
├── tool\_ext       # bash functions aimed at extending cmdline tools
├── os\_specific    # dotfiles that do things based on what OS you're on
├── host\_specific  # host-specific additions, ignored by git
├── config          # config files for programs, found via XDG\_CONFIG\_HOME
└── notes           # miscellaneous notes on sysadmin utilities and cmdline stuff


<br />
### Adding Dotfiles

From the start to end of the sourcing process in init.sh, the function `printlog` is available for any submodule to print debug output. Debug info will be printed if the var `DOTDEBUG` exists and is non-zero. Thus for a test run, you could do something like `DOTDEBUG=1 && source /path/to/dir/init.sh`

<br />

### Customizing your repo

You, dear reader, can view this as a base for your own dotfiles. The directory-based structure is pretty general, but I suggest you remove everything you don't need or want to understand. Err on the side of throwing something away if unsure. A minimal set to grow from might just include the `lib`, `aliases` and `config` directories.

--------

TODO:
* More string-manipulation trix
* More networking notes
* More non-linux notes
* More linux notes
* More cool bash networking tricks
* Randomized Login Messages
  * Randomized Login Ascii Art
* Integrate this with some stupid webapi (for linux webapp?)
* More c++ utilities
* Pushdown-automata
* A language-interpreter in bash
