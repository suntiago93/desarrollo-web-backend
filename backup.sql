CREATE TABLE public.usuarios (
	id varchar(100) NOT NULL,
	nombre varchar(200) NOT NULL,
	apellido varchar(200) NOT NULL,
	telefono int4 NOT NULL,
	apartamento int4 NOT NULL,
	parqueadero varchar(100) NULL,
	numparqueadero int4 NULL,
	email varchar(200) NOT NULL,
	clave varchar(150) NOT NULL,
	reserva varchar(200) NULL,
	factura varchar(200) NULL,
	roles varchar NULL,
	CONSTRAINT usuario_pk PRIMARY KEY (id),
	CONSTRAINT usuario_fk FOREIGN KEY (reserva) REFERENCES reservas(id),
	CONSTRAINT usuarios_fk FOREIGN KEY (roles) REFERENCES roles(id)
);


CREATE TABLE public.reserva (
	id varchar(100) NOT NULL,
	sector varchar(100) NOT NULL,
	fecha varchar(100) NOT NULL,
	horaingreso varchar(100) NOT NULL,
	horasalida varchar(100) NOT NULL,
	CONSTRAINT reserva_pk PRIMARY KEY (id)
);

CREATE TABLE public.instalacion (
	id varchar(100) NOT NULL,
	nombre varchar(100) NOT NULL,
	column1 int4 NOT NULL,
	CONSTRAINT instalacion_pk PRIMARY KEY (id)
);


