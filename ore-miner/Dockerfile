FROM ubuntu:22.04
MAINTAINER "Andrey Valentinovich" <f3n1b00t>

RUN apt update -y
RUN echo -ne '\n' | curl https://sh.rustup.rs -sSf | sh && apt install cargo -y && export PATH=/root/.cargo/bin:$PATH && cargo install ore-cli
RUN rm -rf /var/lib/apt/lists/*
COPY mine.sh /root/mine.sh
COPY wallet.json /root/wallet.json
ENTRYPOINT ["sh", "/root/mine.sh"]
