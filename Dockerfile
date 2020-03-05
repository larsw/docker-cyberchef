FROM nginx:alpine
LABEL maintainer="Lars Wilhelmsen <lars@sral.org>"
WORKDIR /usr/share/nginx/html
RUN apk add --no-cache curl zip && \
    curl -L https://github.com/gchq/CyberChef/releases/download/v9.13.1/CyberChef_v9.13.1.zip -o cyberchef.zip && \
    unzip cyberchef.zip && \
    rm cyberchef.zip && \
    mv CyberChef_v9.13.1.html index.html && \
    apk del --purge -f curl zip

