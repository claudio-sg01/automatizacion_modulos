• ¿Qué es la terminal y qué es una línea de comandos? R: La terminal es el programa que actúa como puente entre tú y el sistema operativo. Te permite ejecutar instrucciones directamente sin usar la interfaz gráfica y la linea de comandos es el lenguaje o instrucciones para decrile a la computadora que haceer.

• Navegación: cd, dir, cd, rcls.
R:
cd /d <ruta>	Muy útil: Si necesitas cambiar de unidad (por ejemplo, de C: a D:), cd por sí solo no basta. El parámetro /d te permite cambiar de unidad y de carpeta al mismo tiempo.
pushd <ruta>	Guarda la ruta actual en una "pila" y te mueve a la nueva ubicación. Es como poner un marcador.
popd	Te devuelve exactamente a la última ruta que guardaste con pushd.
dir /s	Lista todos los archivos de la carpeta actual y también los de todas las subcarpetas.
dir /a	Muestra todos los archivos, incluyendo los que tienen atributos ocultos o de sistema.
tree	Muestra toda la estructura de carpetas de tu ubicación actual en formato de árbol visual.
cd ..	Retrocede un nivel, llevándote a la carpeta contenedora superior.
cls	Limpia la pantalla de la terminal para dejarla en blanco.

• Manejo de archivos: mkdir, echo, type, del, rmdir.
R: 
mkdir <nombre>: Crea una nueva carpeta (make directory).

echo <texto> > archivo.txt: Crea un archivo con el texto que especifiques. El símbolo > redirige el texto hacia un archivo.

type <archivo.txt>: Muestra el contenido de un archivo de texto en la pantalla.

del <archivo>: Elimina un archivo específico.

rmdir <carpeta>: Elimina una carpeta (debe estar vacía para que funcione).

• Comandos de red: ping, ipconfig, curl. 
R:
ping <dirección>: Envía paquetes de prueba a un servidor (ej. ping google.com) para verificar si hay conexión y medir el tiempo de respuesta.

ipconfig: Muestra la configuración de red de tu equipo (tu dirección IP, máscara de subred y puerta de enlace).

curl <URL>: Una herramienta avanzada para transferir datos. Permite descargar archivos o probar conexiones a servidores web directamente desde la línea de comandos.