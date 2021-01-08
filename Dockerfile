FROM archlinux
# Update
RUN pacman --noconfirm -Sy
# Install dependece package
RUN pacman --noconfirm -Sy xfce4-panel xfce4-notes-plugin xfce4-dev-tools \
    git base-devel git bash-completion openssh vim
