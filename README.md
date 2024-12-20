# headlinr

Displays a message on top of every new terminal session you spawn

![headlinr.PNG](/screenshots/headlinr.PNG?raw=true "Screenshot")

### Setup

1. Clone with git or download zip. Leave directory structure unchanged.
2. Make ```headlinr.sh``` executable with ```chmod u+x headlinr.sh```.
3. Add absolute path to ```headlinr.sh``` in your ```.*rc```.
4. If ```lolcat``` is not present, remove it from ```headlinr.sh```

Ex:

If ```headlinr.sh``` is inside ```~/headlinr/```, add ```~/headlinr/headlinr.sh``` to ```~/.*rc```

### Test

Run ```exec *``` to replace current session with a new one.

\* - bash/zsh/...
