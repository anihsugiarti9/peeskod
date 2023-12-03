FROM ubuntu:22.04

RUN apt update && apt install -y curl

# install VS Code (code-server)
RUN curl -fsSL https://code-server.dev/install.sh | sh

# install VS Code extensions
RUN code-server --install-extension redhat.vscode-yaml \
                --install-extension ms-python.python

RUN EXT_LIST="redhat.vscode-yaml ms-python.python" && \
    for EXT in $EXT_LIST; do code-server --install-extension $EXT; done
