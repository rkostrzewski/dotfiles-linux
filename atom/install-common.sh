#! /usr/bin/bash

apm install atom-beautify \
  Sublime-Style-Column-Selection \
  autocomplete-project-paths \
  browser-plus \
  color-picker \
  file-icons \
  git-time-machine \
  highlight-selected \
  merge-conflicts \
  pigments \
  platformio-ide-terminal
  project-manager \
  script \
  sort-lines && \
apm install linter \
  language-docker \
  language-swift && \
apm rebuild
