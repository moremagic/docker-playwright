FROM moremagic/docker-sshd-x11

#### playwrigth install ####
WORKDIR /root

SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN apt update && apt install -y curl
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
RUN source ~/.bashrc && echo NVM_DIR=$NVM_DIR
RUN nvm install 16.17.1
RUN npm install -g npm@8.19.2
RUN npx playwright install-deps
SHELL ["/bin/bash", "--login", "-c"]

RUN echo echo \\##################################  >> /etc/ssh/sshrc
RUN echo echo hello >> /etc/ssh/sshrc
RUN echo echo npm init playwright@latest >> /etc/ssh/sshrc
RUN echo echo  >> /etc/ssh/sshrc
RUN echo echo Happy hacking! 🎭 >> /etc/ssh/sshrc
RUN echo echo \\##################################  >> /etc/ssh/sshrc

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
