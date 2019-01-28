#!/bin/bash

for i in `seq 1 30`; do
    touch "train/${i}"
    git add train/
    git commit --message "[ci skip] Automatic Training ${i}"
    bundle exec rspec
done
