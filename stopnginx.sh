#!/bin/bash

echo $1

sleep 30

sudo systemctl stop $1

sudo systemctl disable $1

sudo systemctl is-enabled $1
