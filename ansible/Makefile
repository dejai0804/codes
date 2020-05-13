
#set variables here
export InstanceIds=i-0a98a5e7c35fd0fc5
export AWS_PROFILE=aakinlofa

#------------------------------------------------------------------------------------------------#
general:   # rules to install common tools
	ansible-playbook -i inventory/hosts general.yml  --vault-password-file password.yml

#------------------------------------------------------------------------------------------------#

adminbox:
	ansible-playbook -i inventory/hosts admin_box.yml  --vault-password-file password.yml
#-------------------------------------------------------------------------------------------------#
ec2:
	 ansible-playbook launch-ec2.yml --vault-password-file password.yml
#-------------------------------------------------------------------------------------------------#
all: ec2 adminbox
#-------------------------------------------------------------------------------------------------#
start-adminbox:
	sh /Users/aakinlofa/codes/admin/scripts/startInstances.sh
#--------------------------------------------------------------------------------------------------#
stop-adminbox:
	sh /Users/aakinlofa/codes/admin/scripts/stopInstances.sh
#---------------------------------------------------------------------------------------------------#

