# archlinux-docker

## baixar docker
Mac:
https://download.docker.com/mac/stable/Docker.dmg
Windows:
https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe
Linux:
https://www.google.com/

## rodar maquina

```
docker run -it -v ~/docker-volume:/root/docker-volume --publish 8000:8080 --rm archlinux:1.0
```

## setup ssh
em outro terminal sem ser a maquina docker
copiar arquivos da sua pasta .ssh para o volume docker

```
mkdir ~/docker-volume/.ssh
cp ~/.ssh/* ~/docker-volume/.ssh
```


agora vc ja pode comecar a clonar os projetos dentro da pasta ~/projects
 da maquina docker
ex:


// dentro da maquina docker
/root/docker-volume/projects
```
bb-clone rex-store-ado-atelier
```

bb-clone e um dos programas que foram instalados pra faciliar clonar projetos
do repositorio da empresa


## setup environment variables

Crie um arquivo novo chamado .env na pasta ~/docker-volume
o arquivo deve conter suas chaves do figma e bitbucket

```
export BITBUCKET_USERNAME="<usuario do bitbucket>"
export BITBUCKET_PASSWORD="<senha bitbucket>"
export FIGMA_TOKEN="<token to figma>"
export FIGMA_TEAM=<token team>
```

## como conseguir as chaves do figma 
https://www.figma.com/developers/api#authentication
