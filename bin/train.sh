#!/bin/bash

rm train/*

for i in `seq 1 30`; do
    touch "train/${i}"
    git add train/
    git commit --message "[ci skip] Automatic Training ${i}"
    git push
    bundle exec rspec
done
