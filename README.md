# gpm plugins for Homebrew

This repo contains [homebrew](http//brew.sh) formulae for [gpm](http://github.com/pote/gpm) plugins.

In order to install these plugins you need to tap this repository into homebrew using `brew tap`:

```bash
$ brew tap pote/gpm_plugins
```

Remember that in order for plugins to work you need to be running [gpm v1.1.1](https://github.com/pote/gpm/releases/tag/v1.1.1) or later, updating should be a breeze if you're on homebrew though.

Finally: yes, the name of this repo  makes my OCD run wild too but due to [hoembrew tap's naming rules](https://github.com/Homebrew/homebrew/wiki/brew-tap#naming-conventions-and-limitations) there's pretty much nothing I can do about that.

# Plugins

## gpm bootstrap

[gpm-bootstrap](https://github.com/pote/gpm-bootstrap) is a plugin that provides a simple way to get started with dependency versioning tracking on your Go projects by creating a `Godeps` file with all your dependencies set to their latest versions.

### Installation

```bash
brew install gpm-boostrap
```
### Example usage
![gpm bootstrap](https://raw.github.com/pote/gpm-bootstrap/master/gpm_bootstrap.gif)

### Commands added to gpm

Once installed, gpm-bootstrap adds the following commands to gpm:

```bash
$ gpm bootstrap           # Downloads all external top-level packages required by
                          # your application and generates a Godeps file with their
                          # latest tags or revisions.
$ gpm bootstrap version   # Prints version information for the plugin.
$ gpm bootstrap help      # Prints a help message.
```

