# dotfiles

## Dependencies

Install [pip](https://pip.pypa.io/en/stable/installing/) and then [pygments](http://pygments.org)


Template containing common settings for `.gitignore`; add to your repository like so:

    curl https://raw.githubusercontent.com/davidfmiller/dotfiles/master/dotgitignore >> .gitignore

## dotprofile

Bash profile

### Aliases

`c [path]` → `cd [path]`

`..` → `cd ..`

`r [path]` → `rm [path]`

`mk [name]` → `mkdir [name]`

`~` → `cd ~`


`json` reads from stdin and pretty prints the JSON object


### Utilities


### Mac OS-specific

The profile

[apples](https://github.com/davidfmiller/apples)



#### killport
Kills the process listening on a given port

    > killport 4444
