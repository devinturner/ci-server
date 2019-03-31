- [v0.1.0 - Local](#v010---local)
- [v0.2.0 - Digital Ocean](#v020---digital-ocean)

## v0.1.0 - Local

- Discovery
    - Terraform support with T/C-CI (TravisCI and/or CircleCI)
- Development
    - ~~Install jenkins + dependencies~~
    - Install docker + dependencies
    - Store image on Dropbox
- Continuous Integration
    - Run tests on all pushes to master branch on Travis/CircleCI
    - Build and push master branch builds to Dropbox
- Continous Delivery
    - Update image format to work with Digital Ocean

## v0.2.0 - Digital Ocean

- Discovery
    - Digital Ocean VM images w/ Packer
- Development
    - Update Packer template to support Digital Ocean
- Continuous Integration
    - Add terraform module testing to CI with terratest
- Continuous Delivery
    - Terraform deploys to Digital Ocean