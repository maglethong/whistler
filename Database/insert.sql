/**
	Whistler
	Trabalho Prático de Introdução ao Desenvolvimento Web
	SCC0219 - 2016

	Script de Alimentação de Tabelas


	Legenda de Comentários:
	- [PK]	- Chave Primária
	- [Un]	- Chave Secundária [Atributo único]
	- [Dv] 	- Atributo Derivado
	- [FK]	- Chave Estrangeira

	Outras informações
	- Identação usando caractere TAB = 4 espaços
	- Todos os atributos derivados serão calculados por comandos SELECT após todas as inserções iniciais
*/

/* User */
INSERT INTO usuario (id, login, senha, nome, descricao) 
	VALUES (0, 'Maglethong', 'qwe', 'Andy', 'Um cara legal');

INSERT INTO usuario (id, login, senha, nome, descricao) 
	VALUES (1, 'Lhama', 'qwe', 'Yvan', 'Um cara chato');

INSERT INTO usuario (id, login, senha, nome, descricao) 
	VALUES (2, 'Gallo', 'qwe', 'Gallo', 'Um cara ai');

ALTER SEQUENCE usuario_id_seq RESTART WITH 3;


/* Post */
INSERT INTO post (id, escritor, conteudo) 
	VALUES (0, 0, 'Pqp... o @Yvan é chato heim #chato');

INSERT INTO post (id, escritor, conteudo) 
	VALUES (1, 2, 'Putz o @Yvan eh chato #chato');

INSERT INTO post (id, escritor, conteudo) 
	VALUES (2, 1, 'Eu sou #chato');

INSERT INTO post (id, escritor, conteudo) 
	VALUES (3, 0, 'O @Andy eh um cara legal #legal');

INSERT INTO post (id, escritor, conteudo) 
	VALUES (4, 2, 'Oi mundo! #HelloWorld');

ALTER SEQUENCE post_id_seq RESTART WITH 5;


/* Comment */
INSERT INTO comentario (id, post, escritor, conteudo) 
	VALUES (0, 0, 1, 'Eu sou mesmo!');

INSERT INTO comentario (id, post, escritor, conteudo) 
	VALUES (1, 0, 2, 'Hahahaha');

INSERT INTO comentario (id, post, escritor, conteudo) 
	VALUES (2, 2, 0, 'Mas eu sou #legal');

ALTER SEQUENCE comentario_id_seq RESTART WITH 3;


/* Rank */
INSERT INTO rank (post, avaliador, tipo) 
	VALUES (0, 0, 'P');

INSERT INTO rank (post, avaliador, tipo) 
	VALUES (1, 0, 'P');

INSERT INTO rank (post, avaliador, tipo) 
	VALUES (2, 0, 'P');

INSERT INTO rank (post, avaliador, tipo) 
	VALUES (3, 0, 'P');

INSERT INTO rank (post, avaliador, tipo) 
	VALUES (0, 1, 'P');

INSERT INTO rank (post, avaliador, tipo) 
	VALUES (3, 2, 'N');


/* Grupo */
INSERT INTO grupo (id, dono, nome) 
	VALUES (0, 0, 'Bros');

ALTER SEQUENCE grupo_id_seq RESTART WITH 1;


/* Membro Grupo */
INSERT INTO membroGrupo (grupo, membro) 
	VALUES (0, 1);

INSERT INTO membroGrupo (grupo, membro) 
	VALUES (0, 2);


/* Midia */


/* Seguir */
INSERT INTO seguir (seguidor, seguido) 
	VALUES (0, 1);

INSERT INTO seguir (seguidor, seguido) 
	VALUES (1, 2);






