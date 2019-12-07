adminbox:
	ansible-playbook -i inventory/hosts playbook.yml  --vault-password-file password.yml
ec2:
	 ansible-playbook launch-ec2.yml --vault-password-file password.yml
all: ec2 adminbox
