# Fullstack

A fullstack view on all the system components and the devops.

## Checkout

To checkout with all submodules:

    git clone --recurse-submodules -j8 git@github.com:TubeRecorder/fullstack.git

To make sure `master` branch is checked out:

    git submodule foreach "(git checkout master; git pull)&"

## Running Locally

To spin up the `devops` stack:

    make devops_up

This will do the following:

- Bring up the logs aggregation stack (WIP)
- Build any base images needed for releasing docker images

Then bring up the dev stack:

    make up
