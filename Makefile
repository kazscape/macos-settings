.PHONY: all apply apply-sudo apply-config apply-no-brew apply-no-brew-sudo check

all: apply-sudo

apply:
	ansible-playbook local.yml

apply-sudo:
	ansible-playbook local.yml --ask-become-pass

apply-config:
	ansible-playbook local.yml --skip-tags "brew"

apply-no-brew:
	ansible-playbook local.yml --skip-tags "brew"

apply-no-brew-sudo:
	ansible-playbook local.yml --skip-tags "brew" --ask-become-pass

check:
	ansible-playbook local.yml --syntax-check
