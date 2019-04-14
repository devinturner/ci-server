ROOT_PASSWORD := packer
USER_FULLNAME := packer
USER_PASSWORD := packer
USERNAME := packer
PACKER_OUTPUT_DIR := output
PACKER_HEADLESS := true
VM_NAME := jenkins
DOMAIN := local
SOURCE_PATH := ../image/output/jenkins-base-0.0.5.ova

version : VERSION
	@test -f VERSION

validate : version
	@${eval VERSION := ${shell cat VERSION}}
	@packer validate \
		-var ROOT_PASSWORD=${ROOT_PASSWORD}\
		-var USERNAME=${USERNAME} \
		-var USER_PASSWORD=${USER_PASSWORD} \
		-var PACKER_OUTPUT_DIR=${PACKER_OUTPUT_DIR} \
		-var PACKER_HEADLESS=${PACKER_HEADLESS} \
		-var VERSION=${VERSION} \
		-var VM_NAME=${VM_NAME} \
		-var SOURCE_PATH=${SOURCE_PATH} \
		template.json

build : version clean
	@${eval VERSION := ${shell cat VERSION}}
	@packer build \
		-var ROOT_PASSWORD=${ROOT_PASSWORD}\
		-var USERNAME=${USERNAME} \
		-var USER_PASSWORD=${USER_PASSWORD} \
		-var PACKER_OUTPUT_DIR=${PACKER_OUTPUT_DIR} \
		-var PACKER_HEADLESS=${PACKER_HEADLESS} \
		-var VERSION=${VERSION} \
		-var VM_NAME=${VM_NAME} \
		-var SOURCE_PATH=${SOURCE_PATH} \
		template.json

clean :
	rm -rf ${PACKER_OUTPUT_DIR}

.PHONY: clean
