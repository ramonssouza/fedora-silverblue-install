#!/bin/bash

ostree admin pin 0

rpm-ostree upgrade

echo "Atualizdo com Sucesso!"

systemctl reboot -h 1 "O sistema será reiniciado"
