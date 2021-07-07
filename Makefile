export ANSIBLE_TIMEOUT = 2

apply:
	ansible-playbook home.yml -K --tags "homebrew,dotfiles,extra-packages,vscode"

deps: deps-collections deps-roles

deps-collections:
	ansible-galaxy collection install -r requirements.yml --force

deps-roles:
	ansible-galaxy role install -r requirements.yml --force
