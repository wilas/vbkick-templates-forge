# Description

Plasma Active [vbkick](https://github.com/wilas/vbkick) template. Help creates VBox VM Guests.
More: [Plasma_Active_on_VirtualBox](http://community.kde.org/Plasma/Active/VirtualBox)

## Howto

### create the new VM (child steps)
```
    vbkick  build           plas
    vbkick  postinstall     plas    # update, setup cursor and render backend
```

### playing with the new VM (more fun is with the GUI)
```
    vbkick  build           plas
    vbkick  postinstall     plas    # update and other tuning is done here
    vbkick  ssh             plas    # as ssh_user="root" in vbmachine.cfg
    vbkick  destroy         plas
```

#### Plasma Active Home Screen

![plasma-home](docs/screens/plasmaactive_home.png)

#### Plasma Active Menu

![plasma-menu](docs/screens/plasmaactive_menu.png)

#### Plasma Active Add Items

![plasma-items](docs/screens/plasmaactive_additems.png)

#### Plasma Active Activity

![plasma-activity](docs/screens/plasmaactive_activity.png)

