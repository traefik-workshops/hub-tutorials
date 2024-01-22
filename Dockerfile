FROM node:20-alpine3.19
ENV APP_VERSION=1.0.0-alpha.21

LABEL description="JSON Server image for Traefik Hub tutorials"
LABEL maintainer="Traefik Hub Team"

# hadolint ignore=DL3018
RUN npm install -g json-server@${APP_VERSION} \
    && npm cache clean --force

USER node
ENTRYPOINT [ "json-server", "--host", "0.0.0.0" ]
