#!/bin/bash
STEMCELL_VERSION=621.94
STEMCELL_DIR="/home/ubuntu/workspace/paasta-5.5.2/stemcell/paasta"
CURRENT_IAAS="${CURRENT_IAAS}"					 # IaaS Information (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 cloudit 입력, 미 입력시 bosh-lite)
BOSH_ENVIRONMENT="${BOSH_ENVIRONMENT}"			 # bosh director alias name (PaaS-TA에서 제공되는 create-bosh-login.sh 미 사용시 bosh envs에서 이름을 확인하여 입력)

if [[ ${CURRENT_IAAS} = "cloudit" ]]; then
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell ${STEMCELL_DIR}/bosh-stemcell-${STEMCELL_VERSION}-cloudit-qemu-ubuntu-xenial-go_agent.tgz -n
else
        bosh -e ${BOSH_ENVIRONMENT} upload-stemcell ${STEMCELL_DIR}/bosh-stemcell-${STEMCELL_VERSION}-warden-boshlite-ubuntu-xenial-go_agent.tgz -n
fi
