FROM circleci/android:api-27-node8-alpha

RUN mkdir ~/.npm-global && \
    npm config set prefix '~/.npm-global' && \
    echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc

RUN npm install -g appium
