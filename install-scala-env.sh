#!/bin/bash

# remove yourself
rm $0

# dowbload temporary coursier native-image to bootstrap the installation
curl -fLo cs https://git.io/coursier-cli-"$(uname | tr LD ld)"

# make it executable
chmod +x cs

# setup environment
./cs setup --yes --jvm graalvm --apps ammonite,bloop,cs,giter8,sbt,scala,scalafmt

# remove the temporary native-image
rm cs

echo "Don't forget to restart your terminal and/or your session!"
