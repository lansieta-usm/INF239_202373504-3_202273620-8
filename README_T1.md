# T1_202373504-3_202273620-8

Nombres:
    Lucas Ansieta M. Rol: 202373504-3. Paralelo 200.
    Miguel Reyes O. Rol: 202273620-8. Paralelo 200.

Entornos de desarrollo: Visual Studio Code (macOS).

Consideraciones previas a la ejecución:
    Para este trabajo, hemos decidido usar PostgreSQL como nuestro DBMS, por lo que las instrucciones de ejecución serán válidas para este software en particular.

Instrucciones de ejecución:
    Asumimos que recién se ha descargado PostgreSQL desde su sitio oficial https://www.postgresql.org/download/. Hecho esto, se abre pgAdmin 4 y:
    1. Creación de la Base de Datos:
        - Se despliegan los menús de "Servers" y "PostgreSQL 17", se podría pedir entre medio alguna contraseña que cada usuario previamente definió en el momento de la instalación.
        - Desplegamos el menú "Bases de Datos" y seleccionamos la Base de Datos por defecto "postgres".
        - En la barra "Navegador (Object Explorer)", buscamos la "Herramienta de Consulta" y la seleccionamos.
        - En el editor de código, escribimos: 'CREATE DATABASE sistema_articulos;' y ejecutamos el script.
        - Una vez creada la BDD, vamos nuevamente hacia el menú "Bases de Datos", click derecho, refresh. Debería aparecer inmediatamente la nueva BDD "sistema_articulos".
        - Seleccionamos la BDD recién creada y repetimos el proceso de abrir la "Herramienta de Consulta".
        - Dentro del editor de código, buscamos la opción "Open file", abrimos y ejecutamos el script de creación 'createScript.sql' con el fin de insertar las tablas necesarias dentro de la BDD.
    2. Población de la Base de Datos:
        - Seleccionamos la Base de Datos "sistema_articulos" y abrimos la "Herramienta de Consulta".
        - En el editor de código, buscamos la opción "Open file", abrimos y ejecutamos el script de población 'insertScript.sql' con el fin de insertar todos los datos correspondientes en cada una de las tablas en la BDD.
    3. Evaluación de consultas:
        NOTA: Para este punto, no teníamos claro si los ayudantes iban a formular el código de cada consulta al momento de evaluar o si debíamos entregárselo nosotros... Debido a lo anterior, dentro de la carpeta se encuentra un script llamado 'consultas.sql', el cual, al ejecutarse, retorna correctamente todas y cada una de las consultas que se solicitan en el enunciado. Por lo demás, recomendamos hacer cada una de las consultas por separado (es decir, ejecutar primero solo la consulta 1, luego ejecutar solo la consulta 2, etc.).
        - Seleccionamos la Base de Datos "sistema_articulos" y abrimos la "Herramienta de Consulta".
        - En el editor de código, buscamos la opción "Open file", abrimos y ejecutamos el script de consultas 'consultas.sql'. Se recomienda ejecutar cada una de las consultas por separado.

Consideraciones adicionales:
    - Al fijarse en el archivo 'createScript.sql', se puede notar en las líneas 2 y 5 que la idea era que llegando y ejecutando una pura vez el script se creara de inmediato la BDD con sus tablas, sin embargo, la Herramienta de Consulta de pgAdmin 4 no reconoce el comando de selección de Base de Datos '\c'... Por lo que si se intentara ejecutar el archivo descomentando las líneas mencionadas daría error. Dado lo anterior, las instrucciones de ejecución son como son, teniéndo que forzosamente seleccionar la BDD correspondiente usando la interfaz gráfica (por lo demás, si el script se prueba en otra herramienta que si pueda interpretar la instruccion '\c', éste debería funcionar a la perfección).
    - Para las consultas 6 y 10, con el fin de que se note que la respuesta retornada es correcta, recomendamos cambiar el número de evaluación por otro mucho más grande (ej: de 3, pasar a 30 o 31 [31 como máximo, evaluar mejor basándose en la consulta 5])... Esto porque dentro de nuestra BDD insertamos solo a 50 revisores, y dado que cada uno de los 400 articulos tiene a 3 revisores, es fácil notar que todos los 50 revisores van a tener más de 3 artículos asignados. En resumen, si se hace la consulta tal como aparece en el enunciado (con el número 3), para la consulta 6, va a retornar a los 50 revisores, y para la consulta 10, va a retornar el nombre de los 400 artículos pero cada uno repetido 3 veces (debido a los 3 revisores por artículo), o sea, 1200 datos. Si se hiciese con un número mayor, se notaría de mucho mejor forma que el retorno es correcto.