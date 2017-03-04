#!/bin/bash
echo "Banner /etc/haboryn/banner" >> /etc/ssh/sshd_config
mkdir /etc/haboryn/
touch /etc/haboryn/banner
echo "Bem Vindo(a) ao Servidor $nome" >> /etc/haboryn/banner
