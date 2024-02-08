# suckless-build
My personal build for dwm, st and dmenu, the three main Suckless tools: https://suckless.org/

## Dwm config files and compilation

Routine to customization:
    1. make a backup copy of config.def.h into backup folder
    2. do your customization and patching on config.def.h
        2.1 use patch -p1 < path/to/patch.diff to patch 
    3. cp config.def.h config.h
    4. sudo make clean install
    5. if you want to go back, just do cp backup/config.def.lastbackup.h config.h and recompile
    6. if everything works do a commit for each customization or patch installed!
    
## How to revert to an old commit ? 

First fetch and pull, then reset the local repo to the old commit using its hash, then do something else if you need and at last, with the third command, push
the current commit forcing remote to accept it (YOU WILL LOSE THE COMMITS NEWER THAN THE ONE YOU REVERTED BACK TO!)
```
git fetch && git pull
git reset --hard <commit-hash>
git push -f <current-branch-name> origin
```




