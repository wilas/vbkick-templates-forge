# Description

Debian "Jessie" [vbkick](https://github.com/wilas/vbkick) template. Help creates Vagrant base boxes. Vagrant SSH insecure keys are used.

## Howto

### change definition (change the target of a symlink)
```
    ln -fs vbmachine-jessie-x86_64-docker.cfg vbmachine.cfg
```

### create new vagrant base box
```
    vbkick  build        Debian_box
    vbkick  postinstall  Debian_box
    vbkick  validate     Debian_box
    vbkick  export       Debian_box
```

### update existing vagrant base box
```
    vbkick  update       Debian_box
    vbkick  validate     Debian_box
    vbkick  export       Debian_box
```
