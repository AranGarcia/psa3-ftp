# FTP Server

## Requerimientos

- GNU Make 4.2.1
- Docker 19.03.12


## Instalacion

Construye la imagen ejecutando la instruccion

```bash
make build
```

## Uso

El servidor inicia en la direccion [ftp://localhost:2121](ftp://localhost:2121)

```bash
make run
```

## Funcionalidades

- Servidor de archivos utilizando el protocolo FTP
  - [ ] Permitir acceso al recurso con dirección IP del cliente seleccionada
  - [ ] Restringir acceso al recurso por dirección IP del cliente
  - [ ] Restringir acceso al recurso por usuario
  - [ ] Restringir acceso al recurso por grupo de usuarios
- Configuración de puerto de operación
  - [X] Puerto de operación diferente al puerto estándar
- Servidor de aplicación utilizando el protocolo seguro para la transferencia de archivos
  - [ ] Definición de certificados de operación
  - [ ] Transferencia cifrada entre extremos
- Implementación de de jaulas para diferentes usuarios
  - [X] Directorio de operación local a usuarios del sistema
- Configuración de los sistemas de registro de acceso al sistema
  - [ ] Configurar los diferentes niveles de operación de as bitácoras
- Resumen de operación del servidor (Recursos consultados/editados, usuario, tipo de operación realizada)
  - [ ] Mostrar resumen de usuarios (Nombre/IP/Dominio)
  - [ ] Mostrar resumen de recursos manipulados/consultados
  - [ ] Mostrar resumen de operación por día, usuario, dirección, evento, entre otros parámetros.