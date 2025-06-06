CREATE TABLE perfis(
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE usuarios_perfis(
    usuario_id BIGINT NOT NULL,
    perfil_id BIGINT NOT NULL,

    PRIMARY KEY(usuario_id, perfil_id),
    CONSTRAINT usuarios_perfis_fk_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
    CONSTRAINT usuarios_perfis_fk_perfil FOREIGN KEY(perfil_id) REFERENCES perfis(id)
);

INSERT INTO perfis(nome) VALUES('ESTUDANTE');
INSERT INTO perfis(nome) VALUES('INSTRUTOR');
INSERT INTO perfis(nome) VALUES('MODERADOR');
INSERT INTO perfis(nome) VALUES('ADMIN');
