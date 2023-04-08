setup:
	ansible-galaxy install -r requirements.yml
	ansible-playbook --vault-password-file local.vault-password setup.yml -i inventory.ini

deploy:
	ansible-playbook --vault-password-file local.vault-password deploy.yml -i inventory.ini

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml

decrypt-vault:
	ansible-vault decrypt group_vars/webservers/vault.yml

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml