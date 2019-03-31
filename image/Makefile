ROOT_PASSWORD := packer
USER_FULLNAME := packer
USER_PASSWORD := packer
USERNAME := packer
PACKER_OUTPUT_DIR := output
PACKER_HEADLESS := true

version : VERSION
	@test -f VERSION

preseed : http/preseed_tpl.cfg
	@sed -e 's/ROOT_PASSWORD/${ROOT_PASSWORD}/g' \
		-e 's/USER_FULLNAME/${USER_FULLNAME}/g' \
		-e 's/USER_PASSWORD/${USER_PASSWORD}/g' \
		-e 's/USERNAME/${USERNAME}/g' \
		http/preseed_tpl.cfg > http/preseed.cfg

validate : version
	@${eval VERSION := ${shell cat VERSION}}
	@packer validate \
		-var ROOT_PASSWORD=${ROOT_PASSWORD}\
		-var USERNAME=${USERNAME} \
		-var USER_PASSWORD=${USER_PASSWORD} \
		-var PACKER_OUTPUT_DIR=${PACKER_OUTPUT_DIR} \
		-var PACKER_HEADLESS=${PACKER_HEADLESS} \
		-var VERSION=${VERSION} \
		template.json

build : preseed version clean
	@${eval VERSION := ${shell cat VERSION}}
	@packer build \
		-var ROOT_PASSWORD=${ROOT_PASSWORD}\
		-var USERNAME=${USERNAME} \
		-var USER_PASSWORD=${USER_PASSWORD} \
		-var PACKER_OUTPUT_DIR=${PACKER_OUTPUT_DIR} \
		-var PACKER_HEADLESS=${PACKER_HEADLESS} \
		-var VERSION=${VERSION} \
		template.json

clean :
	rm -rf ${PACKER_OUTPUT_DIR}

.PHONY: clean
