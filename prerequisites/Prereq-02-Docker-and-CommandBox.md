# Setting up Docker
Docker containerizes your applications to maintain them separate from your infrastructure. Download and install Docker desktop.  We will be using Docker to run MySQL 8 and our ContentBox Application.

https://docs.docker.com/get-docker/

# Setting up CommandBox

CommandBox is the CFML Cli to use for many things, most importantly for this workshop, installing our ContentBox App, commandbox tools and running a cfml engine to run our ContentBox App on.

## Installing CommandBox

Installing CommandBox is not hard, but it does depend on your PC setup. Below are links to the documentation to help you through the process.

### Downloading CommandBox

https://commandbox.ortusbooks.com/setup/download

### Installing CommandBox

https://commandbox.ortusbooks.com/setup/installation

### Common Installation Errors

https://commandbox.ortusbooks.com/setup/common-errors

### More help

The Community Forum is the best place to start: https://community.ortussolutions.com/

Although the community is very helpful, if all else fails, CommadnBox King Brad is always on the CFML Slack, Box Team Slack, and the Ortus Community Forum, if you can't find your answer.

Reach out to us in the Slack Channel for the workshop too.

### Start CommandBox

Start CommandBox and then CD into the directory

```
box
cd \your\workshop\directory
```

### Install [commandbox-bullet-train](https://forgebox.io/view/commandbox-bullet-train)

You should install this no matter what, after getting CommandBox.

```sh
install commandbox-bullet-train
```

## Install [contentbox-cli](https://www.forgebox.io/view/contentbox-cli)
```sh
install contentbox-cli
```

### Reload CommandBox

When loading modules you will need to reload the CLI to load the new modules. Running `r` is an alias for `reload`, which will reload the cli. This might take a minute or two.


## Once installed, you can move onto the next step