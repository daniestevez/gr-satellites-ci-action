# gr-satellites-ci-action
gr-satellites CI pipeline action

This Github action build gr-satellites using an `ubuntu:latest` Docker
container.

## Branches and tags

The `main` branch builds against GNU Radio 3.9, installed from the PPA. The
`maint-3.8` branch builds against GNU Radio 3.8, installed from the Ubuntu
repository. The `v1.x.y` tags correspond to the `main` branch. The `v0.x.y` tags
correspond to the `maint-3.8` branch.
