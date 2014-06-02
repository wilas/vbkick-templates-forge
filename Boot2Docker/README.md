# Description

Boot2docker [vbkick](https://github.com/wilas/vbkick) template. Helps create a new boot2docker VBox machine.

## Howto

### change definition (change the target of a symlink)
```
  ln -fs definition-persist-data.cfg definition.cfg
```

### create and play with the new VM
```
    vbkick  build       boot2docker     # create the new VM

    vbkick  postinstall boot2docker     # run postinstall commands
    vbkick  ssh         boot2docker     # manual hacking
    vbkick  play        boot2docker     # hack by running play commands
    vbkick  snap        boot2docker     # save work

    vbkick  shutdown    boot2docker     # finnish work

    vbkick  resnap      boot2docker     # load saved work - note that you don't need configure "persist data",
                                        # "persist data" is useful if you need disk space bigger than size of RAM assign to the VM
    vbkick  on          boot2docker     # start VM
    vbkick  ssh         boot2docker     # continue work
```
