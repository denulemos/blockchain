# Desarrollo Blockchain

# Blockchain

Inventado por Satoshi Najamoto en 2008, creador del Bitcoin, planteado como una red P2P para crear transacciones digitales. Es un libro mayor de transacciones almacenado en bloques (Ledger). Se puede escribir, pero no editar ni eliminar.

* Blockchain es un libro de registros perfecto e infalsificable

### Cadena de bloques

* Representa una BD disribuida y segura, donde las transacciones son bloques. Cada bloque esta relacionado con el anterior mediante metodos criptograficos.
* Gracias a esta relacion entre bloques se mantiene una consistencia. Si se modifica una, quedan invalidadas todas.
* Un bloque almacena un numero de transacciones.

### Caracteristicas de Blockchain

* Es una red P2P, un usuario usa y compone la red al mismo tiempo. En estas redes no hay un nodo central, todo se comparte entre los participantes (Un ejemplo P2P es por ejemplo, los Torrents)
* Todos los participantes de la red tienen una copia exacta de los datos. Los datos pueden repudiar la informacion falseada.
* Es Descentralizado, no hay un nodo central que maneje todo. Las transacciones se gestionan por todos los nodos de la red, que deben reconocerlas como validas, no dejando pasar falsificaciones.
* Los datos son inmutables, una vez escritos, no se tocan. Por eso a blockchain se le dice tambien **fuente de la verdad**

### Blockchain como BD distribuida

Cuando los datos son centralizados, se depende de un nodo central, en cambio, en uno distribuido o descentralizado, como Blockchain, hay muchas copias de los datos, y si uno falla, se tiene una copia, y los nodos pueden desconectarse cuando se desee.

* Blockchain es **trustless**

### Algoritmo de consenso

Todos los nodos pueden validar la informacion, entonces ¿Cómo alcanzamos el acuerdo entre todos los participantes?, esto se resuelve con el **algoritmo de consenso**, se llama **Proof of Work (Prueba de trabajo)** que funciona tanto en BTC como ETH. Los mineros usan todo el poder del hardware de sus maquinas para resolver un problema matematico complejo para ganar la competicion de minado.

### ¿Quienes participan en Blockchain?

Estan los Usuarios, Developers y Mineros.

* Los devs desarrollan el software que implementa el protocolo, esto es open source.
* Usuarios tienen una billetera con sus divisas
* Los mineros usan su hardware para minar, lo que les permite participar en la verificacion de bloques. Ganan recompensas en forma de divisa. En BTC la recompensa es en esa misma moneda, y en ETH la recompensa es en Ether.

### Recompensas de Minado

* Si el miner halla la solucion al problema matematico, hallando el numero nonce, se le dará una recompensa por ganar esta competicion.
* En BTC son 12.5 BTC por dia y ETH son 3 ethers por dia. (2021)
* Tambien reciben las Comisiones (GAS) de quienes hayan realizado transacciones.

### Tiempo de minado de bloques

* En BTC es de 10 minutos, y ETH 15 segundos. (2021)
* Cada bloque sube su dificultad, o la baja, dependiendo de la tardanza en resolver el problema de bloques anteriores.

## Criptografia en Blockchain - Hashing

* Hashing = Convierte un texto a un hash de longitud fija. Para un mismo texto se obtiene el mismo hash, y si se cambia un bit, el hash cambia casi por completo. 
* Los hashes no son revertibles, no se podrá volver al elemento original. Solo pueden compararse.
* Los hashes se usan para enlazar los bloques unos con otros. BTC usa SHA-256 y ETH KECCAK-512. El bloque tiene el hash de su contenido y el hash del contenido del bloque anterior. Si se cambia cualquier contenido, se invalida el hash del bloque previo, y esto se propagaria en toda la cadena.
* Para que un hash sea valido debe estar por debajo de la dificultad objetivo establecida en ese bloque. Modificamos el hash cambiando el numero NONCE continuamente hasta dar con el valido.
* `if hash(contenido bloque + nonce) + dificultad`, el bloque es valido.
* Los mineros ejecutan una funcion de hashing en donde proporcionan el contenido del bloque y un numero que cambia de forma random, hasta que el hash resultante sea menor a un numero de dificultad. No es facil minar un bloque tras otro, es un proceso lento, costoso y usa mucho poder computacional.

# Transacciones en ETH

* En Blockchain los usuarios tienen un identificador para su cuenta, en donde pueden recibir y dar divisas. Somos los unicos poseedores de las claves privadas de nuestras cuentas.
* Las cuentas son anonimas.
* Los usuarios pueden firmar transacciones con su clave privada, encriptandola con la misma.
* Una transaccion tiene la cuenta de origen, destino, y el valor a transferir. Tambien tiene el TxHash que identifica a la transaccion de forma unica, el Timestamp de la transaccion, el Block que es el numero de bloque donde esta la transaccion, Gas Limit, Gas Used y Gas Price (Precio por unidad de gas que se encontraba vigente en ese momento) que representan las comisiones y Input Data que son los datos de entrada para interactuar con el Smart Contract. 
* En ETH podemos hacer transacciones de User a User y de User a Smart Contract.

### Un Bloque en ETH
