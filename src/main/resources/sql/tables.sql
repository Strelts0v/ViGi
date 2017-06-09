use vg;

create table users(
	id_user int not null auto_increment,
    email varchar(50) not null,
    password varchar(50) not null,
    role_mask int not null,
    primary key(id_user)
);