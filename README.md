# Git Commands

A few useful Git Commands

## Commands

-   `gitignore-list` - Get a list of Gitignore templates from [Github's
    gitignore templates repository][GG].
-   `gitignore-add` - Add a Gitignore from [Github's gitignore templates
    repository][GG].
-   `deploy` - If you use Heroku or such a workflow in which you deploy using
    git, then this command will be helpful. Create `.gitdeploy` executable
    script that does eveything you'd do at the time of deployment and run the
    script using `git deploy`.

[GG]: http://github.com/github/gitignore

## Usage

### For most systems

1. Put the above files in the `git-core` directory.
2. Make sure they are executable.

### Multiple git installations (for example on Mac)

Sometimes you may have Git installed at multiple places in your system. In that
case, do the following:

1. Clone this repository
2. Give all the files executable permissions.
3. Add the directory to your path.

**Warning:** the issue with this approach is that Git's autocomplete won't
work at all. In that case, I just create new aliases in my global
`.gitconfig` to execute these files.
