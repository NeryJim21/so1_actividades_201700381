# CONCEPTOS DE SISTEMAS OPERATIVOS

## TIPOS DE KERNEL Y SUS DIFERENCIAS

Entiendase por `kernel` como el encargado de administrar los procesos, la memoria, los dispositivos y todas las llamadas al propio sistema, siendo el responsable de ejecutar los programas y decidir cuando van a ser procesado, asignarles los espacios en memoria que requieren y advertir la falta de recursos.

Se conocen seis tipos de kernel:

### Kernel monolítico
En un kernel monolítico, todas las funciones del sistema operativo, como la gestión de memoria, el sistema de archivos y los controladores de dispositivos, se ejecutan en el espacio del núcleo.

Tiene un alto rendimiento, ya que las funciones están directamente integradas en el núcleo.

Como ejemplo de un kernel monolítico podemos mencionar al sistema operativo Linux.

### Kernel Microkernel 
Se centra en ejecutar solo las funciones esenciales del sistema operativo en el espacio del núcleo, mientras que otras funciones se ejecutan como procesos fuera del núcleo.
Busca minimizar la cantidad de código en el núcleo para mejorar la estabilidad y la seguridad del sistema

### Kernel Híbrido
Combina características de los kernels monolíticos y microkernels.
Algunas funciones esenciales se ejecutan en el espacio del núcleo, mientras que otras se ejecutan como procesos en el espacio del usuario.

En este tipo de kernel se puede mencionar el sistema MacOS

### Kernel Exo-kernel
Este enfoque permite a las aplicaciones controlar directamente el hardware, proporcionando flexibilidad y eficiencia.
El kernel se limita a garantizar que las aplicaciones no interfieran entre sí y a proporcionar protección de recursos.

### Kernel en Tiempo Real
Diseñado para sistemas que requieren respuestas en tiempo real, como sistemas embebidos y controladores industriales.
Prioriza la ejecución de tareas críticas en un tiempo determinado.

## USER VS KERNEL MODE
El Modo Usuario y el Modo Kernel representan dos niveles distintos de privilegios en sistemas operativos modernos.

### Modo User
En el Modo Usuario, los programas de aplicación se ejecutan con privilegios limitados y no pueden acceder directamente al hardware o a recursos críticos del sistema. Este modo garantiza la estabilidad y la seguridad al restringir el acceso a funciones sensibles.

#### Características
* Acceso limitado a recursos del sistema.
* Ejecución de aplicaciones de usuario.
* Menor nivel de privilegios.

### Modo Kernel
Opera con privilegios elevados y tiene acceso completo a los recursos del sistema. Es responsable de gestionar la memoria, los controladores de dispositivos y otras funciones fundamentales. La ejecución de tareas críticas se lleva a cabo en este modo.

#### Carcterísticas
* Acceso completo a recursos del sistema.
* Ejecución de tareas críticas del sistema.
* Mayor nivel de privilegios.

### Interacción entre Modo Usuario y Modo Kernel
La cooperación entre el Modo Usuario y el Modo Kernel es esencial para el funcionamiento equilibrado de un sistema operativo. Los programas de usuario llaman al Modo Kernel mediante interrupciones o llamadas al sistema para realizar operaciones que requieren privilegios elevados.

## INTERRUPTIONS VS TRAPS
Interrupciones y trampas son mecanismos esenciales para la gestión de eventos asincrónicos y situaciones excepcionales en sistemas computacionales modernos. 

### Interruptions
Las interrupciones son eventos asincrónicos generados por el hardware o el software que requieren la atención inmediata del sistema. Estos eventos pueden provenir de dispositivos externos, como periféricos, o de condiciones internas que necesitan ser manejadas.

#### Propósitos
* Manejar eventos externos (por ejemplo, entrada/salida).
* Atender situaciones críticas o emergencias.

### Traps
Las trampas, también conocidas como excepciones o interrupciones de software, son eventos generados deliberadamente por el programa en ejecución o en respuesta a condiciones específicas. Estas permiten la ejecución controlada de ciertas acciones o la gestión de errores.

#### Propósitos
* Facilitar la implementación de llamadas al sistema.
* Gestionar errores y situaciones excepcionales controladas.

Ambos mecanismos requieren una gestión adecuada para garantizar una ejecución coherente y eficiente del sistema. Los sistemas operativos proporcionan rutinas de manejo específicas para cada tipo de evento, ya sea una interrupción o una trampa.