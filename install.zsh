#!/bin/zsh

emulate -LR zsh

# 1. Make sure MACOS's Xcode Command Line Tools are installed
#
## TODO Add logic to check for xcode CLI before trying to install it.
#
### BGN
xcode-select --install
### END

# 2. Make sure that brew is installed
#
## TODO Add logic to check for brew before trying to install it
#
### BGN
curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/master/install.sh | /bin/bash

# Add the directory Homebrew uses to store its executables at the front of the PATH environment variable.
echo "export PATH=/usr/local/bin:$PATH" | tee -a ~/.zshrc

# restart zsh
source ~/.zshrc

# add in the bare essentials
brew install tree zsh 

### END
