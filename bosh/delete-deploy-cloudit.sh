#!/bin/bash

bosh delete-env bosh.yml \
	--state=cloudit/state.json \
	--vars-store=cloudit/creds.yml \
	-o cloudit/cpi.yml \
	-o use-offline-releases-uaa.yml \
	-o use-offline-releases-cce.yml \
	-o use-offline-releases-credhub.yml \
	-o use-offline-releases-jumpbox-user.yml \
	-o use-offline-releases-syslog.yml \
	-l cloudit-vars.yml