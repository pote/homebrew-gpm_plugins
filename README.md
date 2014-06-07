# gpm plugins for Homebrew

This repo contains [homebrew](http//brew.sh) formulae for [gpm](http://github.com/pote/gpm) plugins.

In order to install these plugins you need to tap this repository into homebrew using `brew tap`:

```bash
$ brew tap pote/gpm_plugins
```

Remember that in order for plugins to work you need to be running [gpm v1.1.1](https://github.com/pote/gpm/releases/tag/v1.1.1) or later, updating should be a breeze if you're on homebrew though.

Finally: yes, the name of this repo  makes my OCD run wild too but due to [homebrew tap's naming rules](https://github.com/Homebrew/homebrew/wiki/brew-tap#naming-conventions-and-limitations) there's pretty much nothing I can do about that.

# Plugins

gpm plugins are basically just executables named in the pattern `gpm-<name of the plugin>`, whenever an unknown command is passed to the `gpm` call it will look for an appropriately named plugin and run it with any additional arguments included in the original call. Thus the command `gpm bootstrap version` will call the `version` action in the `gpm-bootstrap` executable.

This allows for a lot of flexibility for anyone who wants to write a plugin for gpm: they can be Go binaries, bash scripts like gpm, ruby gems, python packages, you name it. gpm wants to make it easy for you to extend it. :)

## gpm bootstrap

[gpm-bootstrap](https://github.com/pote/gpm-bootstrap) is a plugin that provides a simple way to get started with dependency versioning tracking on your Go projects by creating a `Godeps` file with all your dependencies set to their latest versions.

### Installation

```bash
brew install gpm-bootstrap
```

### Example Usage
![gpm bootstrap](https://raw.github.com/pote/gpm-bootstrap/master/gpm_bootstrap.gif)

### Plugin Commands

Once installed, gpm-bootstrap adds the following commands to gpm:

```bash
$ gpm bootstrap           # Downloads all external top-level packages required by
                          # your application and generates a Godeps file with their
                          # latest tags or revisions.
$ gpm bootstrap version   # Prints version information for the plugin.
$ gpm bootstrap help      # Prints a help message.
```

## gpm git

`gpm-git` is a plugin that adds support for direct Git management of
directories inside of a `gpm`-managed `$GOPATH`.

The project lives in: https://github.com/technosophos/gpm-git

### Installation

```bash
brew install gpm-git
```

### Plugin Commands

Once installed, gpm-git adds the following commands to gpm:

```bash
$ gpm git             # Same as 'install'.
$ gpm git version     # Outputs version information
$ gpm git help        # Prints this message
```

### Use Cases

Using this plugin, you can use gpm to...

* Work with Git repos that are password protected (e.g. private
  Bitbucket repos).
* Use any git repo that `git clone` can use.
* Clone a full git repo into a local working copy, and modify it within
  the copy. (Not necessarily recommended, but possible).

### Documentation

Further docs can be found in [the gpm-git repository](https://github.com/technosophos/gpm-git)

## gpm link

gpm-link's goal is to encapsulate any project dependency within the .godeps folder. Even the current project.

It allows removing all the local import paths but mantaining control of the $GOPATH and having everything encapsulated in the .godeps folder.

The project lives in: https://github.com/elcuervo/gpm-link

### Installation

```bash
brew install gpm-link
```

### Plugin Commands

Once installed, gpm-git adds the following commands to gpm:

```bash
$ gpm link add alias_name [path]  # This will make a symbolic link in the .godeps
                                  # folder with the given alias name to a given
                                  # path being "." the default one.
                                  # Eg: gpm link add github.com/elcuervo/minimalweather .
$ gpm link del alias_name         # Removes a current link
$ gpm link version                # Current gpm link version
$ gpm link help                   # Help message and usage
```

### Documentation

Further docs can be found in [the gpm-link repository](https://github.com/elcuervo/gpm-link)


## gpm local

This plugin makes it possible for go tools to find subpackages in the present package by fully qualified package name.

The project lives in: https://github.com/technosophos/gpm-local

### Installation

```bash
brew install gpm-local
```

### Plugin Commands

Once installed, gpm-git adds the following commands to gpm:

```bash
$ gpm local name bitbucket.org/foo/bar  # Set the local repo name
                                        # to bitbucket.org/foo/bar
$ gpm local version                     # Outputs version information
$ gpm local help                        # Prints this message
```

### Documentation

Further docs can be found in [the gpm-local repository](https://github.com/technosophos/gpm-local)

## gpm prebuild

This plugin runs a go build on all of your dependencies in the `$GOPATH`. If you are using a per-project `$GOPATH` (the standard way of using [gvp](https://github.com/pote/gvp) then prebuilding is a simple way of improving performance.

The project lives in: https://github.com/technosophos/gpm-prebuild

### Installation

```bash
brew install gpm-prebuild
```

### Plugin Commands

Once installed, gpm-git adds the following commands to gpm:

```bash
$ gpm prebuild             # Pre-build everything in Godeps, alias of build
$ gpm prebuild build       # Pre-build everything in Godeps
$ gpm prebuild build-git   # Pre-build everything in Godeps-Git
$ gpm prebuild git         # Alias of build-git
$ gpm prebuild version     # Outputs version information
$ gpm prebuild help        # Prints this message
$ gpm prebuild clean       # Deletes existing prebuilds only from
                           # the first path on GOPATH.
```

### Documentation

Further docs can be found in [the gpm-prebuild repository](https://github.com/technosophos/gpm-prebuild)
