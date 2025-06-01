CREATE TABLE usuario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE empresa_usuario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  simbolo VARCHAR(10),
  nombre VARCHAR(255),
  imagen_url TEXT,
  sector VARCHAR(100),
  industria VARCHAR(100),
  exchange VARCHAR(50),
  ceo VARCHAR(100),
  direccion VARCHAR(255),
  ciudad VARCHAR(100),
  estado VARCHAR(100),
  pais VARCHAR(100),
  telefono VARCHAR(50),
  pagina_web TEXT,
  ipo DATE,
  capitalizacion BIGINT,
  empleados INT,
  beta DECIMAL(5,2),
  divisa VARCHAR(10),
  usuario_id INT,
  FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE
);
