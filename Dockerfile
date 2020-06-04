FROM nginx:alpine
LABEL maintainer="Lars Wilhelmsen <lars@sral.org>"
WORKDIR /usr/share/nginx/html
RUN apk add --no-cache curl zip && \
    curl -L https://github.com/gchq/CyberChef/releases/download/v9.20.7/CyberChef_v9.20.7.zip -o cyberchef.zip && \
    unzip cyberchef.zip && \
    rm cyberchef.zip && \
    mv CyberChef_v9.20.7.html index.html && \
    apk del --purge -f curl zip

