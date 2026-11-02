const express = require("express");
const app = express();
const PORT = process.env.PORT || 8080;

// Middleware para entender JSON
app.use(express.json());

// Ruta de prueba
app.get('/', (req, res) => {
  res.json({ mensaje: '¡Hola desde mi backend en Google Cloud!' });
});

// Iniciar servidor
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
