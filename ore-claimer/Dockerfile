FROM ubuntu:22.04
MAINTAINER "Andrey Valentinovich" <f3n1b00t>

RUN apt update -y 
RUN echo -ne '\n' | curl https://sh.rustup.rs -sSf | sh && apt install cargo -y && export PATH=/root/.cargo/bin:$PATH && cargo install ore-cli 
RUN rm -rf /var/lib/apt/lists/*
COPY wallet.json /root/wallet.json
COPY claim.sh /root/claim.sh
ENTRYPOINT ["sh", "/root/claim.sh"]