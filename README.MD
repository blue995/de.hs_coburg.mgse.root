# Introduction
This is the root repository of the MGSE project in 2018.

## Clone the project
Short Version: `git clone --recursive https://github.com/blue995/de.hs_coburg.mgse.root.git`

## Update submodules
**Important**: If you want to change something in a submodule you have to check that the submodule branch is on `master`. ALWAYS do a `git checkout master` before changing/committing/pushing anything.
* *in submodule*: Push outstanding changes in submodule (`commit` -> `pull` -> `push`) (! Check `master`, NOT detached HEAD !)
* *in root*: Push outstanding changes in root (...)
Now you've updated the pointer of the submodule to the most recent commit on `master`. Teammembers can update their local submodules with the commands described in the following section.

## Pull changes in submodules
* `git pull`
* `git submodule update`

# Structure of this repository
## Submodule: docker
This submodule contains some important containers that help developers to setup their development environment (Databases, administative tools, ...). A guide on how to use docker and especially the preconfigured containers can be found in the README.MD of this submodule.

## Submodule: platform
This submodule represents our software platform. It consists of DSLs that are developed with the help of the [Xtext](https://www.eclipse.org/Xtext/) language workbench. More information about the languages and the repository itself can be found in the README.MD of this submodule.
