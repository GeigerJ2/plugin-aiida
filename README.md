<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

❤️

<img src="https://www.aiida.net/_static/logo-dark.svg" align="left" width="20%" height="20%"/>

<br/>

An aiida aliases plugin for `Fisher`, based on the `omf-git-plugin`.

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.5.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

## Demo

![](https://github.com/GeigerJ2/plugin-aiida/blob/main/demo/fish_aiida_plugin_demo.gif)

## Install

fisher:

```fish
fisher install GeigerJ2/plugin-aiida
```

## Note

For the AiiDA profile to appear on the right prompt, one needs to manually apply the following modification:

`\x1epython\x1ejava -> \x1epython\x1eaiida\x1ejava`

in the file:

`$HOME/.config/fish/fish_variables`

For the universal variable:

`_tide_right_items`

which is set via:

`SETUVAR`

I tried using `sed` to automate this, but didn't manage due to the `\x1e` control characters...

<div style="page-break-after: always;"></div>

## Usage

### Archive

Create, inspect and import AiiDA archives.

### Calcjob

Inspect and manage calcjobs.

### Code

Setup and manage codes.

### Computer

Setup and manage computers.

### Config

Manage the AiiDA configuration.

### Daemon

Inspect and manage the daemon.

### Data

Inspect, create and manage data nodes.

### Devel

Commands for developers.

### Group

Create, inspect and manage groups of nodes.

### Help

Show help for given command.

### Node

Inspect, create and manage nodes.

### Plugin

Inspect AiiDA plugins.

### Process

Inspect and manage processes.

### Profile

Inspect and manage the configured profiles.

### Quicksetup

Setup a new profile in a fully automated fashion.

### Restapi

Run the AiiDA REST API server.

### Run

Execute scripts with preloaded AiiDA environment.

### Setup

Setup a new profile.

### Shell

Start a python shell with preloaded AiiDA environment.

### Status

Print status of AiiDA services.

### Storage

Inspect and manage stored data for a profile.

### User

Inspect and manage users.

# License

[MIT][mit] © [Julian Geiger][author]

[mit]: https://opensource.org/licenses/MIT
[author]: https://github.com/GeigerJ2
[contributors]: https://github.com/GeigerJ2/plugin-aiida/graphs/contributors
[omf-link]: https://github.com/oh-my-fish/oh-my-fish
[fisher-link]: https://github.com/jorgebucaran/fisher
