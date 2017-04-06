#!/bin/bash

cd "`dirname \"$0\"`"
cd ../_site

echo "In directory"
pwd
echo

regex='schul(([^0-9a-zA-Z-])+|([[^:space:-]])*|[[:space:]]+-[[:space:]]*|[[:space:]]*-[[:space:]]+)cloud|shcul'

echo 1

echo grep -n -riE "$regex"
if grep -n -riE "$regex"
then
  1>&2 echo -e "\e[1;31mMisspelling detected!\e[0m"
  exit 1
fi

1>&2 echo -e "\e[1;32mAll correct\e[0m"
exit 0
