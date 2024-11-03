#!/usr/bin bash

ask_for_app_name() {
  read -pr "Enter app name: " APP_NAME
  read -pr "Is '$APP_NAME' correct? (y/n): " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    return 0
  else
    ask_for_app_name
  fi
}

ask_for_app_name

echo "APP_NAME=$APP_NAME" > .env

echo "
UID=$(id -u)
GID=$(id -g)
USERNAME=$(id -un)
GROUP=$(id -gn)" >> .env
