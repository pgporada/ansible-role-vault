![pgporada.vault](https://img.shields.io/badge/role-pgporada.vault-yellow.svg)
[![License](https://img.shields.io/badge/license-GPLv3-brightgreen.svg)](LICENSE)
[![](https://img.shields.io/badge/Supports%20Vault%20Version-0.7.3-blue.svg)](https://github.com/hashicorp/vault/blob/v0.7.3/CHANGELOG.md)

# Overview: pgporada.vault

One less thing for me to have to go out to the internet to grab when setting up my dev machine(s).

- - - -
# Role Variables

Installs the specified version of [Hashicorp Vault](https://vaultproject.io).

    vault_version: 0.7.3

- - - -
# Example Playbook

To run the local playbook, issue the following command.

    ansible-playbook local_playbook.yml -b -K

To use this role in another playbook

    cat << EOF > some_playbook.yml
    ---
    - hosts: localhost
      connection: local
      roles:
        - pgporada.vault
    ...
    EOF
    ansible-playbook some_playbook.yml -b -K

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen. You will need a ruby environment with gem and bundler for these tests.

    # This takes care of twiddling all the bits that need to be updated when bumping the vault version
    ./update_automagic.sh x.x.x

    # This will run your vault update through the test system
	bundle update
	bundle install
	bundle exec kitchen create
   	bundle exec kitchen converge
   	bundle exec kitchen verify
	bundle exec kitchen destroy

- - - -
# License and Author Information
GPLv3

2017 - [Phil Porada](https://philporada.com)

- - - -
# Theme Song
[Daisy Dukes - Silent Partner](https://www.youtube.com/watch?v=OCk0cNr3v00)
