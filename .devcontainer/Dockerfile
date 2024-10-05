FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04

# install and configure zsh
RUN apt-get install -y zsh
ENV SHELL /bin/zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
COPY .zshrc /root/.zshrc

# allow git to be used with the root user
RUN git config --global --add safe.directory '*'
