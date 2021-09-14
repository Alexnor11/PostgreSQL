create table if not exists Autor (
	id serial primary key,
	name varchar(40) not null	
);

create table Album (
	id serial primary key,
	album_name varchar(50) not null,
	album_year integer check(album_year > 0),
	autor_id integer references Autor(id)	
);

create table Track (
	id serial primary key,
	track_name varchar(60) not null,
	track_duration integer check(track_duration > 0),
	album_id integer references Album(id)	
);

create table Genre (
	id serial primary key,
	genre_name varchar(50) not null,
	autor_id integer references Autor(id)
);