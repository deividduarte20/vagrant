# Vagrant

## Esse projeto consiste provisionar VM Debian/Buster com placa de rede no modo bridge com ip fixo na sua faixa de IP e o mesmo importa a chave ssh do seu linux

### Requisitos:

Vagrant

Virtualbox

Git

Ssh

### Etapas:

Primero baixe o diretório com o comando:

git clone https://github.com/deividduarte20/vagrant.git

Após baixar acesse o diretório via terminal:

1 - copie sua chave ssh pública com o comando:
cp /root/.ssh/id_rsa.pub .

2 - Modifique o detalhe abaixo no arquivo Vagrantfile para o nome da sua placa de rede e um IP livre dentro da sua faixa de rede:

De:
desafio_config.vm.network "public_network", ip: "192.168.1.10", bridge: "wlp18s0"

Para:
desafio_config.vm.network "public_network", ip: "ip_sua_faixa_de_rede", bridge: "sua_placa_de_rede"

3 - Para provisionar a vm Debian/buster o box do Debian utilizado é oficial (O comando deve ser executado dentro do diretório onde está localizado o Vagrantfile):

vagrant up

Para acessar:

ssh vagrant@ip

Se tudo ocorreu bem, você já estará acessando sua VM provisionada comunicando na mesma rede para que facilite seus testes.
