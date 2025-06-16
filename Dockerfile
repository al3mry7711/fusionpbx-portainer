FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y bash curl git gnupg2 ca-certificates lsb-release sudo nginx php php-pgsql php-cli php-curl php-mbstring php-xml unzip && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80 443
CMD ["bash"]
