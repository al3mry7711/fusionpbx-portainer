FROM debian:bullseye

RUN apt update && \
    apt install -y git curl gnupg2 ca-certificates lsb-release sudo && \
    curl -sSL https://raw.githubusercontent.com/fusionpbx/fusionpbx-install.sh/master/debian/install.sh | bash

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
