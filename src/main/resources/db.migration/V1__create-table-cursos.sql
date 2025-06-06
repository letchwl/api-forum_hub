CREATE TYPE categoria_enum AS ENUM (
    'PROGRAMACAO',
    'IA',
    'FRONTEND',
    'DADOS',
    'INOVACAO',
    'MARKETING',
    'DESIGN'
);

CREATE TABLE cursos (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    categoria categoria_enum NOT NULL
);
