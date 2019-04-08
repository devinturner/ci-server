# ci-server - jenkins

This directory contains the jenkins image for the ci-server project. It leverages the base image found in the [image](../image) directory.

- [requirements](#requirements)
- [usage](#usage)
- [variables](#variables)

## requirements

- make >= 4.2.1
- packer >= 1.3.5
- inspec >= 3.7.11
- VirtualBox >= 6.0

## usage

```bash
# build image - includes preseed and clean
make build

# validate template
make validate

## remove output folder
make clean
```


## variables

**NOTE** the Makefile will set the correct variables for packer. The template.json file has unset variables by default. Below is a list of variables that can be set if you prefer to run packer directly.

| name              | description                        | required |
| ----------------- | ---------------------------------- | -------- |
| USERNAME          | username for the SSH communicator  | yes      |
| USER_PASSWORD     | password for the SSH communicator  | yes      |
| PACKER_OUTPUT_DIR | output directory for packer images | yes      |
| VERSION           | image version to output            | yes      |
| VM_NAME           | name of the packer image           | yes      |
| DOMAIN            | domain of the packer image         | yes      |
| PACKER_HEADLESS   | run virtualbox in headless mode    | no       |
