-- entrar no mysql
mysql -u root

-- visualizar os bancos de dados que existem
show databases;

-- criar banco de dados
create database usuario;

--conectar um banco de dados
use usuario

-- criar uma tebela em um banco de dados
create table usuario(
    idusuario int primary key auto_increment, 
    nome varchar(40), 
    email varchar(50),
    senha varchar(40)
); 
desc usuario;

Query OK, 0 rows affected (0.77 sec)

MariaDB [usuario]> desc usuario
    -> desc usuario;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc usuario' at line 2
MariaDB [usuario]> desc usuario;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| idusuario | int(11)     | NO   | PRI | NULL    | auto_increment |
| nome      | varchar(40) | YES  |     | NULL    |                |
| email     | varchar(50) | YES  |     | NULL    |                |
| senha     | varchar(40) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
4 rows in set (0.07 sec)

---visualizar as tabelas existentes
show tables;

MariaDB [usuario]> show tables
    -> ;
+-------------------+
| Tables_in_usuario |
+-------------------+
| usuario           |
+-------------------+
1 row in set (0.00 sec)

-- inserir dados em uma tabela no banco

insert into usuario values
(null, 'danielle', 'dani@yahoo.com.br', '12345');

-- selecionar todos os usuarios da tabela
select * from usuario;

insert into usuario values -- insira dentro do usuário o valor de:
(null, 'lucas barros','lucas@hotmail.com', md5('12345'));
-- md5 algoritmo de criptografia
-- programa de criptografia