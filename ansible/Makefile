
RESET = \033[0m
PURPLE = \033[0;35m
GREEN = \033[0;32m
LINE = $(PURPLE)----------------------------------------------------------------------------------------- $(RESET)

HOST ?= yumupdate
#set variables here
export InstanceIds=i-0a98a5e7c35fd0fc5
export AWS_PROFILE=aakinlofa

#PATH := $(PATH):/Users/aakinlofa/codes/ansible/group_vars/

#------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#

proxy-server:
	ansible-playbook -i inventory/hosts proxy.yml --vault-password-file passwordFile 
#-------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#


adminbox:
	ansible-playbook -i inventory/hosts admin_box.yml  --vault-password-file passwordFile 
#-------------------------------------------------------------------------------------------------#



#-------------------------------------------------------------------------------------------------#
ec2:
	 ansible-playbook launch-ec2.yml --vault-password-file passwordFile 
#-------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#
all: ec2 adminbox
#-------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#
start-adminbox:
	sh /Users/aakinlofa/codes/admin/scripts/startInstances.sh
#--------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#
stop-adminbox:
	sh /Users/aakinlofa/codes/admin/scripts/stopInstances.sh
#---------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#



deploy-general:
	 ansible-playbook -i inventory/hosts general.yml --vault-password-file passwordFile 

#-------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#

yum-update:
	ansible-playbook -v -i inventory/hosts yum-update.yml  --vault-password-file passwordFile 
#-------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#

monitoring:
	ansible-playbook -i inventory/hosts monitoring.yml --vault-password-file passwordFile  --tags iptables

#-------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#

aws-common:
	ansible-playbook -vv -i inventory/hosts aws-common.yml --vault-password-file passwordFile  

#-------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#

backup:
	ansible-playbook -i inventory/hosts backup.yml --vault-password-file passwordFile  

#-------------------------------------------------------------------------------------------------#


#-------------------------------------------------------------------------------------------------#

hostname:
	ansible-playbook -i inventory/hosts hostname.yml --vault-password-file passwordFile  

#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#

general:
	ansible-playbook -i inventory/hosts general.yml --vault-password-file passwordFile  

#-------------------------------------------------------------------------------------------------#

pinghost:  ## check connections with hosts
	@echo "$(LINE)"
	@echo "Checking Hosts to know the ones alive"
	ansible -i inventory/hosts $(HOST) -m ping --vault-password-file ./passwordFile
	@echo "$(LINE)"
	
#-------------------------------------------------------------------------------------------------#

#-------------------------------------------------------------------------------------------------#

local-dns:
	ansible-playbook -i inventory/hosts local-dns.yml --vault-password-file passwordFile  

#-------------------------------------------------------------------------------------------------#

jenkins:
	ansible-playbook -i inventory/hosts jenkins.yml --vault-password-file passwordFile  