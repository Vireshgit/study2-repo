#!/bin/bash

echo "count number of commits"
git log --oneline | wc -l

echo
echo

echo "count number of commits by different users"
git shortlog -sn --all

echo
echo

echo "list down the commits done by particular user"
echo "enter the user name"
read $username
git shortlog -sn --all | grep $username

echo
echo

echo "list the modified file names only in a commit without any other data"
echo "enter the commit id" 
read $commitid
git show --name-only $commitid

echo
echo

echo "print the git log in a reverse order"
git log --oneline --reverse 
