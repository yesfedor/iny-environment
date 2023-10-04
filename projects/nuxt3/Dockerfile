FROM node:18

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash \
    && export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && nvm install 18 \
    && nvm use 18

WORKDIR /app

RUN npm install -g nuxt@3
RUN npm run build
RUN npm run start

CMD ["nuxt", "build"]
