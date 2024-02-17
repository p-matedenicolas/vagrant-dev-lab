# Virtualbox dev lab

Vagrantfile used to deploy multiple virtual machines in virtualbox to use as home lab

## Setup

There is an [example config file](config.yaml.example) you can rename to ```config.yaml``` and adapt to your needs

The following variables can be configured

- user: name of the user to create in the box
- sshKeyHostPath: path to the ssh key to copy from the host
- sshKeyBoxPath: path to the ssh key to copy inside the box
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

user: "paulo"
sshKeyHostPath: "../ssh/id_rsa.pub"
sshKeyBoxPath: "/home/vagrant/.ssh/paulo.pub"

machines:
  bento-debian-server:
    number      : 1
    cpu         : 2
    mem         : 1024
    box         : bento/debian-12
    ip_base     : 192.168.1.
    ip_start    : 110
  bento-debian-agent:
    number      : 0
    cpu         : 2
    mem         : 512
    box         : bento/debian-12
    ip_base     : 192.168.1.
    ip_start    : 120
```
