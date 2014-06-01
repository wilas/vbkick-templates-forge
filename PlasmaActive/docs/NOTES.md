# Troubleshooting
## Problem: Installation

### Desc.
```
boot_cmd_sequence=(
    "<Down><Enter>"             # Choose Installation
    "<Multiply(<Wait>,30)>"     # Wait
    "1<Enter>"                  # select option 1 for Hard Disk installation
    "2<Enter>"                  # select option 2 for the Full Disk install
    "y<Enter>"                  # confirm
)
Unable to open /usr/lib/rpm/rpmrc for reading: No such file or directory.
```

### Solution
```
Use boot option and install plasma using installer-shell
```

## Problem: Error during kickstarting (```"installer-shell<Enter>"```)

### Desc.
```
Unable to open /usr/lib/rpm/rpmrc for reading: No such file or directory.
```

### Solution: exec installer once more (I have tried zypper, zypper up but it did not help.)
```
$ installer-shell
```

## Problem: Error during kickstarting (```"installer-shell<Enter>"```)

### Desc.
```
error: package {{package}} is not installed
moblin-live
installer-launch
installer
pykickstart
```

### Solution: ?
