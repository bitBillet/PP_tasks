create table authors (
	                     id int primary key auto_increment,
	                     name varchar(50) not null
);
insert into authors (name) values ('michael jackson'), ('eminem'), ('ozzy osbourne');

create table songs (
	                   id int primary key auto_increment,
	                   author_id int,
	                   name varchar(50) not null,
	                   foreign key (author_id) references authors(id)
);
insert into songs (author_id, name) values
(3, 'crazy train'),
(1, 'black or white'),
(3, 'iron_man'),
(2, 'stan'),
(1, 'beat it'),
(2, 'rap god');
create table listening (
	                       id int primary key auto_increment,
	                       song_id int,
	                       value bigint,
	                       foreign key (song_id) references songs(id)
);
insert into listening (song_id, value) values
(5, 3232452),
(3, 23452122),
(4, 1224135),
(2, 22342351),
(6, 35528333),
(1, 522365555);