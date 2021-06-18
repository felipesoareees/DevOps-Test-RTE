#!/bin/bash
################ Informações sobre o script ##########################################
#AUTOR: FELIPE SOARES								     #
#DATA: 18/06/2021								     #
#DESCRIÇÃO: ENVIA UM ALERTA INFORMANDO QUE O PROJETO DevOps-Test-RTE FOI ALTERADO ####

curl -m 5 -X POST -H 'Content-Type: application/json' -d '{"chat_id": "-1001243857260","text": "FOI REALIZADO UM NOVO COMMIT NO PROJETO DEVOPS-TEST-RTE. VOCÊ PODE OPTAR POR EXECUTAR A JOB ANSIBLE_NGINX. BASTA ACESSAR O JENKINS NO ENDEREÇO: http://18.116.71.153:8080", "disable_notification": false}' https://api.telegram.org/bot637003638:AAGcQQaW2UPLS7DN8iBMbreEIHIfp7OU57Q/sendMessage
