#!usr/bin/env bash
#Zero TrustSSH

# Description

This project covers SSH key generation and configuration. It demonstrates how to connect to a remote server securely using an RSA key pair and how to manage SSH settings with Puppet.

#Scripts and usage
 0. Generate SSH key pair (0-create_ssh_key_pair.sh)
It generates a 4096-bit RSA key pair named school
It creates the key inside the .ssh folder and if it already exists it prints ,SSh key already exists. No new key generated.

1.Display public key (1-submit_public_key.sh)
Displays the public key for submission to the server administrator 

2.Connect using private key (2-use_a_private_key.sh)
Connects to the personnal server as user briank using the private key

3. Configure SSH (3-ssh_config)
Configures SSH to connect using the alias school, with the server IP, username and private key
Running ssh school takes you directly to the personal server

4. Manages SSH configuration with puppet (100-puppet_ssh_config.pp)
Uses puppet to create and maintain the required SSH configuration
puppet apply 100-puppet_ssh_config.pp  :enforces it

Requirements
>Ubuntu Linux
>OpenSSH
>Puppet
>RSA SSH key pair

Security
>Never share the private key (school)

