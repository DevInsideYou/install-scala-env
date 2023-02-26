#!/bin/bash

# remove yourself
rm $0

# dowbload temporary coursier native-image to bootstrap the installation
curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs

# make it executable
chmod +x cs

# setup environment
./cs setup --yes --jvm graalvm-ce-java8 --apps ammonite,bloop,cs,giter8,sbt,scala,scala3-repl,scalafmt

# remove the temporary native-image
rm cs

echo "Don't forget to restart your terminal and/or your session!"
