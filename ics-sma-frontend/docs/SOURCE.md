# Source Code Setup

## App Repository

Assumes the **\$SMA_REPO_HOST** environment variable is setup with the devops Azure git host URL.

Clone the **ics_sma_frontend** repository into the **\$HOME/sma/project** directory.


Powershell

```powershell
$ cd $Env:HOME/sma
$ mkdir project
$ cd project
$ git $Env:SMA_REPO_HOST/ics_sma_frontend
$ cd ics_sma_frontend
$ .\clone.ps1
```

Bash

```bash
$ mkdir -p $HOME/sma/project
$ cd $HOME/sma/project
$ git $SMA_REPO_HOST/ics_sma_frontend
$ cd ics_sma_frontend
$ ./clone.sh
```

The **clone** script setups the required library projects for the app. The final step in the script is to run **flutter run**. The app should be running.
