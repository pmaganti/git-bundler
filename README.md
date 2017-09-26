# git-bundler
A simple shell script to clone and bundle all the branches from a remote repository of git.

I have a requirement where all of our git repos has to be backed up with all the branches. The simplest way I found is to pass the url and the project name to clone the repository and bundle the repo with all the branhces.

## how to use?

`$ ./bundler.sh`

### what happens when you run it?

1. Reads the remote repo url and the desired project folder name.
2. Creates a bundles folder if not exists.
3. Clones the repo into the desired project folder.
4. Checkout all the remote branches. This is important for backing up all the remote branches.
5. Creates a bundle of repo under bundles folder outside your project.

# That's all!!
