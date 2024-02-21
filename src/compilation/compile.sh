#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        cargo rustc -- -C link-arg=-nostartfiles
elif [[ "$OSTYPE" == "darwin"* ]]; then
        cargo rustc -- -C link-args="-e __start -static -nostartfiles"