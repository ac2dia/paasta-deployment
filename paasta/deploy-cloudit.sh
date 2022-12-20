#!/bin/bash

BOSH_ENVIRONMENT="${BOSH_ENVIRONMENT}"			 # bosh director alias name (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 bosh envs에서 이름을 확인하여 입력)

bosh -e ${BOSH_ENVIRONMENT} -d paasta -n deploy paasta-deployment.yml \
	-o operations/cloudit.yml \
	-o operations/use-haproxy.yml \
	-o operations/use-haproxy-public-network.yml \
	-o operations/use-postgres.yml \
	-o operations/cce.yml \
	-o operations/rename-network-and-deployment.yml \
	-l vars.yml \
	-l /root/workspace/paasta-5.5.2/deployment/common/common_vars_latest.yml > deploy.manifes