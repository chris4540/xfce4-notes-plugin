[![License](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://gitlab.xfce.org/panel-plugins/xfce4-notes-plugin/-/blob/master/COPYING)

# xfce4-notes-plugin

The notes plugin provides you a quick way to write down a todo list,
to paste a piece of code, to leave a note to your friend, or whatever
else you had like to do with a Post-It note.

----

### Homepage

[xfce4-notes-plugin documentation](https://docs.xfce.org/panel-plugins/xfce4-notes-plugin)

### Changelog

See [NEWS](https://gitlab.xfce.org/panel-plugins/xfce4-notes-plugin/-/blob/master/NEWS) for details on changes and fixes made in the current release.

### Source Code Repository

[Xfce4-notes-plugin source code](https://gitlab.xfce.org/panel-plugins/xfce4-notes-plugin)

### Download a Release Tarball

[Xfce4-notes-plugin archive](https://archive.xfce.org/src/panel-plugins/xfce4-notes-plugin)
    or
[Xfce4-notes-plugin tags](https://gitlab.xfce.org/panel-plugins/xfce4-notes-plugin/-/tags)

### Installation

From source code repository:

    % cd xfce4-notes-plugin
    % ./autogen.sh
    % make
    % make install

From release tarball:

    % tar xf xfce4-notes-plugin-<version>.tar.bz2
    % cd xfce4-notes-plugin-<version>
    % ./configure
    % make
    % make install

### Reporting Bugs

Visit the [reporting bugs](https://docs.xfce.org/panel-plugins/xfce4-notes-plugin/bugs) page to view currently open bug reports and instructions on reporting new bugs or submitting bugfixes.

### Docker development container

Now this project support using vscode to develop the application within a docker container.

If you would like to use docker image to develop, please check the following site.

- [Resolve Xauthority in a container](https://stackoverflow.com/a/25280523)
- [VSCode devcontainer.json reference](https://code.visualstudio.com/docs/remote/devcontainerjson-reference)

#### Sharing Git credentials with your container

Check the following page to see how to use ssh-keys within the container.  
[Sharing Git credentials with your container - Using SSH key](https://code.visualstudio.com/docs/remote/containers#_using-ssh-keys)

1. Add the ssh key to your agent

    ```bash
    ssh-add <your-ssh-key-to-git-repo>
    ```

2. If your host OS is `Ubuntu`, add the following code in ~/.profile

    ```bash
    if [ -z "$SSH_AUTH_SOCK" ]; then
    # Check for a currently running instance of the agent
    RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
    if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> .ssh/ssh-agent
    fi
    eval `cat .ssh/ssh-agent`
    fi
    ```

    To activate the `ssh-agent`, you may need to reboot or re-login your system.

3. Check if it works in the container by:

    ```bash
    ssh-add -L
    ```
