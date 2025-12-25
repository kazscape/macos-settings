.PHONY: all apply check

all: apply

apply:
	ansible-playbook local.yml

check:
	ansible-playbook local.yml --syntax-check
