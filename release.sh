#!/bin/bash
git flow release start $1 && git flow release finish $1 && git switch main
