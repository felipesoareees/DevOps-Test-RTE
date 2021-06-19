# DevOps-Test-RTE
Creating a infrastructure to deploy a simple website (helloword!) with monitoring.

Documentação Projeto DevOps Test SRE.

O projeto consiste na integração de diversas tecnologias, entre elas: docker, ansible, jenkins, git, prometheus,grafana,etc. A ideia é simular alertas, execução de pipelines e também provisionamento de um webservice qualquer. 

Web Service a ser deployado: 

O web service escolhido foi a imagem de um nginx. Customizei uma imagem de um webService qualquer para demonstração. E esta imagem está disponível no docker hub em : https://hub.docker.com/repository/docker/felipesoareees/nginx-hello-word 

Jenkins: 
Criei 2 jobs no jenkins, sendo um deles 1 projeto free-style e outro uma pipeline. 

free-style project: Executa o script commitReport.sh que por sua vez avisa ao telegram (no grupo público @devopscommitReport) para que os participantes optem por executar ou não a pipeline. Qualquer modificação no projeto irá gerar um alerta e é necessário que o DevOps faça o deploy manual. Este modulo foi escolhido por mim para dar mais segurança no caso de commit's que possam gerar erros em produção.

pipeline project: Baixa o projeto do git e faz um re-build da imagem por meio de um dockerfile e hospeda com uma tag de versão latest a imagem mais atual e chama um ansible-playbook para deployar num inventory file.

Ansible: 
Criei 2 playbooks dos quais :

- installDocker : Realiza a instalação do docker caso a máquina slave ainda não seja provisionada. 
- deployApp: Atualiza a imagem no host destino e sobe a modificação já em produção. 

