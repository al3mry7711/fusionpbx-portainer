FROM debian:bullseye

# تثبيت الأدوات الأساسية
RUN apt-get update && \
    apt-get install -y bash curl git gnupg2 ca-certificates lsb-release sudo && \
    curl -sSL https://raw.githubusercontent.com/fusionpbx/fusionpbx-install.sh/master/debian/install.sh | bash && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
