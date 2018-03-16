FROM circleci/android:api-24-node8-alpha

RUN mkdir ~/.npm-global && \
    npm config set prefix '~/.npm-global' && \
    echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc

ENV PATH="$HOME/.npm-global/bin:$PATH"

RUN npm install -g appium
