# Developer Tools Setup

## Git

[Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

Verify the **git** command is in the *$PATH*.

Powershell

```powershell
$ git --version
```

Bash

```bash
$ git --version
```

## Flutter
 
Install [Flutter Windows](https://docs.flutter.dev/get-started/install/windows)

Additional Setup

* Copy the **flutter** directory into your **sma** directory
* Add *$HOME/sma/flutter/bin* to your $PATH
* Verify the **flutter** command is in the *$PATH*.

Powershell

```powershell
$ flutter doctor
```

Bash

```bash
$ flutter doctor
```

* Examine the output. Verify the Windows platform is setup correctly. Any issues consult [Flutter Troubleshooting](FLUTTER.md)
* To disable other platforms, run:

Powershell

```powershell
$ flutter config --no-enable-ios
$ flutter config --no-enable-android
$ flutter config --no-enable-web
```

Bash

```bash
$ flutter config --no-enable-ios
$ flutter config --no-enable-android
$ flutter config --no-enable-web
```

### Melos

Melos is a CLI tool used to manage Dart projects with mulitple packages. See [Melos](https://melos.invertase.dev/) for more information.

[Install Melos](https://melos.invertase.dev/getting-started)

Verify the **melos** command is in the *\$PATH*. If not, add **%USERPROFILES%\AppData\Local\Pub\Cache\Bin** to your Windows PATH.

Powershell

```powershell
$ melos --help
```

Bash

```bash
$ melos --help
```

