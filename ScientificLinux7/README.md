# Description

Scientific Linux 7 [vbkick](https://github.com/wilas/vbkick) template. Helps creates Vagrant base boxes. Vagrant SSH insecure keys are used.

## Howto

### change definition (change the target of a symlink)
```
    ln -fs vbmachine-7a-x86_64-docker.cfg vbmachine.cfg
```

### create new vagrant base box
```
    vbkick  build        SL_box
    vbkick  postinstall  SL_box
    vbkick  validate     SL_box
    vbkick  export       SL_box
```

### update existing vagrant base box
```
    vbkick  update       SL_box
    vbkick  validate     SL_box
    vbkick  export       SL_box
```

### tests & hack SL7-alpha
```
    vbkick  build       SL_box
    vbkick  snap        SL_box
    vbkick  validate    SL_box
    vbkick  postinstall SL_box
    vbkick  validate    SL_box

    vbkick  shutdown    SL_box
    vbkick  resnap      SL_box
    vbkick  on          SL_box
    vbkick  validate    SL_box

    vbkick  ssh         SL_box
```
