yaourt -S --noconfirm jdk8-openjdk android-studio && \
  echo "export ANDROID_HOME=~/Android/Sdk" >> ~/.bashrc && \
  echo "export PATH=\${PATH}:\${ANDROID_HOME}/tools" >> ~/.bashrc && \
  echo "export PATH=\${PATH}:\${ANDROID_HOME}/platform-tools" >> ~/.bashrc && \
  source ~/.bashrc
