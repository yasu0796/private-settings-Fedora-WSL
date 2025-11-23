#!/bin/sh
ansible-playbook -i hosts.yaml playbook.yaml --tags packages -v