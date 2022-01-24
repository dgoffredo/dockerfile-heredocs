# syntax=docker/dockerfile:1.3-labs
from ubuntu:20.04

run <<END_SCRIPT
set -e
echo "hello!"
echo "I am running a script!"
fail() {
  return 2
}
fail
echo "This will not print"
END_SCRIPT

