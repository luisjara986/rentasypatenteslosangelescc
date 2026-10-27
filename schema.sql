-- Script de creación de tablas para Base de Datos Centralizada (PostgreSQL / Supabase)

CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    login VARCHAR(100) UNIQUE NOT NULL,
    pass_hash VARCHAR(256) NOT NULL,
    role VARCHAR(50) NOT NULL,
    status VARCHAR(20) DEFAULT 'ACTIVO',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS comerciantes (
    id SERIAL PRIMARY KEY,
    rut VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(250) NOT NULL,
    telefono VARCHAR(50),
    direccion TEXT,
    sindicato VARCHAR(250),
    rubro TEXT NOT NULL,
    ubicacion TEXT NOT NULL,
    estado VARCHAR(50) NOT NULL,
    vencimiento DATE NOT NULL,
    foto TEXT,
    eliminado BOOLEAN DEFAULT FALSE,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS fiscalizaciones (
    id VARCHAR(50) PRIMARY KEY,
    comerciante_rut VARCHAR(20) REFERENCES comerciantes(rut),
    comerciante_nom VARCHAR(250) NOT NULL,
    fecha TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    resultado VARCHAR(50) NOT NULL,
    inspector VARCHAR(250) NOT NULL,
    obs TEXT
);

CREATE TABLE IF NOT EXISTS auditoria_logs (
    id SERIAL PRIMARY KEY,
    usuario VARCHAR(250) NOT NULL,
    login VARCHAR(100) NOT NULL,
    fecha TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    accion VARCHAR(100) NOT NULL,
    detalle TEXT
);
