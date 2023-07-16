// Importar el módulo HTTP de Node.js
const http = require('http');

// Crear un servidor HTTP
const server = http.createServer((req, res) => {
  // Establecer el encabezado de respuesta con el código de estado y el tipo de contenido
  res.writeHead(200, { 'Content-Type': 'text/plain' });

  // Escribir la respuesta
  res.end('Hola Mundo\n');
});

// Escuchar en el puerto 3000
server.listen(3000, () => {
  console.log('Servidor escuchando en el puerto 3000');
});