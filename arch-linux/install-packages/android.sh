mount -t tmpfs -o size=4G,mode=1777 overflow /tmp && \
  yaourt -S --noconfirm jdk8-openjdk android-studio && \
  echo "export ANDROID_HOME=~/Android/Sdk" >> ~/.bashrc && \
  echo "export PATH=\${PATH}:\${ANDROID_HOME}/tools" >> ~/.bashrc && \
  echo "export PATH=\${PATH}:\${ANDROID_HOME}/platform-tools" >> ~/.bashrc && \
  source ~/.bashrc

# Use ARM images / host GPU turned off / possibly non-dynamic skin
