#!/bin/bash
docker run --rm -it -v $PWD:/usr/src/app rspec-next-step bundle exec rspec $@
