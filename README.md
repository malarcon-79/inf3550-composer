# INF 3550 Composer
Repositorio de referencia para trabajo práctico INF 3550 Blockchain

## Prerequisitos

Para el correcto funcionamiento del ambiente local de desarrollo con Hyperledger Composer, se requiere de:
- Vagrant
- Windows / MacOS: software de virtualización o virtualizador nativo
- 4 GB RAM mínimo (8+ recomendado)
- Al menos 20 GB de espacio libre

Para el caso de Windows, se recomienda usar Hyper-V como virtualizador. Esto es posible sólo con Windows 8.1, Windows 10 Pro o Windows Server 2016 o superior.

El script de provisión permite levantar una máquina virtual usando VirtualBox. Esto permite ejecutar el ambiente en versiones de Windows que no soportan Hyper-V.

## Instalación

Para iniciar la máquina virtual con __Hyper-V__ (iniciar en PowerShell como administrador):

```shell
vagrant up --provider hyperv
vagrant ssh -- -L 8080:localhost:8080
cd /vagrant
./start_composer.sh
```

Para iniciar la máquina virtual con __VirtualBox__:

```shell
vagrant up --provider virtualbox
vagrant ssh -- -L 8080:localhost:8080
cd /vagrant
./start_composer.sh
```

## Uso

Abrir la dirección: localhost:8080

## Limpieza

Ejecutar:

```shell
vagrant destroy
```