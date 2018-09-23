# FlexBE CI [![Build Status](https://travis-ci.org/FlexBE/flexbe_ci.svg?branch=master)](https://travis-ci.org/FlexBE/flexbe_ci)

Continuous integration for FlexBE.

## Usage

Copy the file `.travis.yml` into the root folder of your repo.

Substitute

    before_install:
      - ln -s $PWD ~/flexbe_ci
      - source ~/flexbe_ci/setup.bash

by

    before_install:
      - git clone https://github.com/FlexBE/flexbe_ci.git ~/flexbe_ci
      - source ~/flexbe_ci/setup.bash

Happy testing!
