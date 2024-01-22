# suckless-build
My personal build for dwm, st and dmenu, the three main Suckless tools: https://suckless.org/

## Dwm config files and compilation

Routine to customization:
    1. make a backup copy of config.def.h into backup folder
    2. do your customization and patching on config.def.h
    3. cp config.def.h config.h
    4. sudo make clean install
    5. if you want to go back, just do cp backup/config.def.lastbackup.h config.h and recompile
    6. if everything works do a commit for each customization or patch installed!
    
