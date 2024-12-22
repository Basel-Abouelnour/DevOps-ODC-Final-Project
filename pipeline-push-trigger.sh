#!/bin/bash

#this scripts simulates the pushing process to triger the GitHub actions pipeline

touch trigger-date.txt
date >> trigger-date.txt #logs the date of the trigger

git add .
git commit -m "Github actions trigger script"

git push
