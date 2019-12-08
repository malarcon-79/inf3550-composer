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

```shell
cd localenv
```

El directorio `localenv` contiene el archivo `Vagrantfile` que automatiza la provisión de una máquina virtual.

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

Abrir la dirección: http://localhost:8080

## Limpieza de la Máquina Virtual

Para destruir completamente la máquina virtual, ejecutar:

```shell
vagrant destroy
```

Esto no destruye cualquier almacenamiento permanente que se haya montado a la máquina virtual.

## Ejemplos

Se provee un ejemplo de modelamiento simple basado en la emisión de un contrato [aquí](localenv/MsaExample/README.MD)