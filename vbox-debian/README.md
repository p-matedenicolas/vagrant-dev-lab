# Virtualbox debian dev lab

Vagrantfile used to deploy multiple virtual machines in virtualbox to use as home lab

## Setup

There is an [example config file](config.yaml.example) you can rename to ```config.yaml``` and adapt to the needs

The following variables can be configured

- ssh_username
    - SSH username to connect to the machine during the initial configuration
- ssh_password
    - SSH password to connect to the machine during the initial configuration
- machines
    - The type and number of machines to be deployed
    - variables:
        - number: number of VMs of the current type to deploy
        - cpu: number of cpus to use by the VM
        - mem: RAM memory to use by the VM
        - box: name of the box in [Vagrant Cloud](https://app.vagrantup.com/boxes/search)
        - ip_base: base of the ip to assign to the VM
        - ip_start: this will be the last section of the ip to assign to the VM, it increases with each machine deployed, defined by the number variable

### Example
```YAML

ssh_username: vagrant
ssh_password: vagrant

machines:
  bento-debian-server:
    number      : 1
    cpu         : 2
    mem         : 1024
    box         : bento/debian-11
    ip_base     : 192.168.1.
    ip_start    : 110
  bento-debian-agent:
    number      : 1
    cpu         : 2
    mem         : 512
    box         : bento/debian-11
    ip_base     : 192.168.1.
    ip_start    : 120
```
