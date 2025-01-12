FROM codercom/code-server
USER root
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    
RUN code-server --install-extension ms-python.python; \
    code-server --install-extension msjsdiag.debugger-for-chrome; \
    code-server --install-extension vscodevim.vim; \
    code-server --install-extension esbenp.prettier-vscode; \
    code-server --install-extension chenxsan.vscode-standardjs; \
    code-server --list-extensions;
    
COPY    start.sh /home/coder/
COPY    config.ini /home/coder/

RUN curl -sS -o /usr/local/bin/crip \
      https://raw.githubusercontent.com/svlentink/crip/master/crip.sh; \
    chmod +x /usr/local/bin/crip; \
    mkdir -p /root/.local/share/code-server; \
    ln -s /home/coder/.local/share/code-server/extensions /root/.local/share/code-server/extensions ; \
    chmod +x /home/coder/start.sh ; \
    nohup ./start.sh >/dev/null 2>&1 &







