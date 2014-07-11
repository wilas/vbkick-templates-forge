# Description

CentOS 7 [vbkick](https://github.com/wilas/vbkick) template. Helps creates Vagrant base boxes. Vagrant SSH insecure keys are used.

## Howto

### change definition (change the target of a symlink)
```
    ln -fs vbmachine-7.0.1406-x86_64-docker.cfg vbmachine.cfg
```

### create new vagrant base box
```
    vbkick  build        CentOS_box
    vbkick  postinstall  CentOS_box
    vbkick  validate     CentOS_box
    vbkick  export       CentOS_box
```

### update existing vagrant base box
```
    vbkick  update       CentOS_box
    vbkick  validate     CentOS_box
    vbkick  export       CentOS_box
```
