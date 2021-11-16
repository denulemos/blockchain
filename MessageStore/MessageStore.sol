// ¿Qué version de Solidity vamos a usar?
pragma solidity ^0.4.26;

// Almacena un mensaje y lo devuelve a quien lo necesite

// Definimos el Smart contract
contract MessageStore {
    // ¿Quien es el propietario del Smart Contract?
    address private owner;
    string private message;
    
    // Definimos el contructor que será lo primero a ejecutar
    constructor() public {
        owner = msg.sender; // Direccion de la persona que esta ejecutando la transaccion
    }
    
    function setMessage(string newMessage) public {
        message = newMessage;
    }
    
    // view => desde esta funcion no se va a almacenar ningun valor dentro del SC
    function getMessage() public view returns (string){
        return message;
    }
    
}

/*
----------- TRANSACCION SIMULADA OK => 

status 	0x1 Transaction mined and execution succeed
transaction hash 	0xe9dc6149cce525c0bcf4ae980a7f96bde79413ceae1c05deca38229bce2899d5
contract address 	0x692a70d2e424a56d2c6c27aa97d1a86395877b3a
from 	0xca35b7d915458ef540ade6068dfe2f44e8fa733c
to 	MessageStore.(constructor)
gas 	3000000 gas
transaction cost 	270724 gas // Si el gas limit que ponemos es menor a este, se cancela la transaccion
execution cost 	165856 gas 
hash 	0xe9dc6149cce525c0bcf4ae980a7f96bde79413ceae1c05deca38229bce2899d5
input 	0x608...b0029
decoded input 	{}
decoded output 
logs 	[]
value 	0 wei

 */