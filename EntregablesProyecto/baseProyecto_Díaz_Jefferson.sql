/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     30/01/2019 23:27:03                          */
/*==============================================================*/


drop index FK_CANTON_RELATIONS_PROVINCI_FK;

drop index CANTON_PK;

drop table CANTON;

drop index FK_PARROQUI_RELATIONS_CANTON_FK;

drop index PARROQUIAURBANARURAL_PK;

drop table PARROQUIAURBANARURAL;

drop index PROVINCIA_PK;

drop table PROVINCIA;

/*==============================================================*/
/* Table: CANTON                                                */
/*==============================================================*/
create table CANTON (
   IDCANTON_AUTOMATICO  INT8                 not null,
   IDPROVINCIA_AUTOMATICO INT8                 not null,
   IDCANTON             CHAR(2)              not null,
   NOMBCANTON           CHAR(30)             not null,
   constraint PK_CANTON primary key (IDCANTON_AUTOMATICO)
);

/*==============================================================*/
/* Index: CANTON_PK                                             */
/*==============================================================*/
create unique index CANTON_PK on CANTON (
IDCANTON_AUTOMATICO
);

/*==============================================================*/
/* Index: FK_CANTON_RELATIONS_PROVINCI_FK                       */
/*==============================================================*/
create  index FK_CANTON_RELATIONS_PROVINCI_FK on CANTON (
IDPROVINCIA_AUTOMATICO
);

/*==============================================================*/
/* Table: PARROQUIAURBANARURAL                                  */
/*==============================================================*/
create table PARROQUIAURBANARURAL (
   IDPARROQUIA_AUTOMATICO INT8                 not null,
   IDCANTON_AUTOMATICO  INT8                 not null,
   IDPARROQUIA          CHAR(3)              not null,
   NOMBPARROQUIA        CHAR(30)             not null,
   constraint PK_PARROQUIAURBANARURAL primary key (IDPARROQUIA_AUTOMATICO)
);

/*==============================================================*/
/* Index: PARROQUIAURBANARURAL_PK                               */
/*==============================================================*/
create unique index PARROQUIAURBANARURAL_PK on PARROQUIAURBANARURAL (
IDPARROQUIA_AUTOMATICO
);

/*==============================================================*/
/* Index: FK_PARROQUI_RELATIONS_CANTON_FK                       */
/*==============================================================*/
create  index FK_PARROQUI_RELATIONS_CANTON_FK on PARROQUIAURBANARURAL (
IDCANTON_AUTOMATICO
);

/*==============================================================*/
/* Table: PROVINCIA                                             */
/*==============================================================*/
create table PROVINCIA (
   IDPROVINCIA_AUTOMATICO INT8                 not null,
   IDPROVINCIA          CHAR(2)              not null,
   NOMBPROVINCIA        CHAR(30)             not null,
   constraint PK_PROVINCIA primary key (IDPROVINCIA_AUTOMATICO)
);

/*==============================================================*/
/* Index: PROVINCIA_PK                                          */
/*==============================================================*/
create unique index PROVINCIA_PK on PROVINCIA (
IDPROVINCIA_AUTOMATICO
);

alter table CANTON
   add constraint FK_CANTON_FK_CANTON_PROVINCI foreign key (IDPROVINCIA_AUTOMATICO)
      references PROVINCIA (IDPROVINCIA_AUTOMATICO)
      on delete restrict on update restrict;

alter table PARROQUIAURBANARURAL
   add constraint FK_PARROQUI_FK_PARROQ_CANTON foreign key (IDCANTON_AUTOMATICO)
      references CANTON (IDCANTON_AUTOMATICO)
      on delete restrict on update restrict;

/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     30/01/2019 23:27:03                          */
/*==============================================================*/


drop index FK_CANTON_RELATIONS_PROVINCI_FK;

drop index CANTON_PK;

drop table CANTON;

drop index FK_PARROQUI_RELATIONS_CANTON_FK;

drop index PARROQUIAURBANARURAL_PK;

drop table PARROQUIAURBANARURAL;

drop index PROVINCIA_PK;

drop table PROVINCIA;

/*==============================================================*/
/* Table: CANTON                                                */
/*==============================================================*/
create table CANTON (
   IDCANTON_AUTOMATICO  INT8                 not null,
   IDPROVINCIA_AUTOMATICO INT8                 not null,
   IDCANTON             CHAR(2)              not null,
   NOMBCANTON           CHAR(30)             not null,
   constraint PK_CANTON primary key (IDCANTON_AUTOMATICO)
);

/*==============================================================*/
/* Index: CANTON_PK                                             */
/*==============================================================*/
create unique index CANTON_PK on CANTON (
IDCANTON_AUTOMATICO
);

/*==============================================================*/
/* Index: FK_CANTON_RELATIONS_PROVINCI_FK                       */
/*==============================================================*/
create  index FK_CANTON_RELATIONS_PROVINCI_FK on CANTON (
IDPROVINCIA_AUTOMATICO
);

/*==============================================================*/
/* Table: PARROQUIAURBANARURAL                                  */
/*==============================================================*/
create table PARROQUIAURBANARURAL (
   IDPARROQUIA_AUTOMATICO INT8                 not null,
   IDCANTON_AUTOMATICO  INT8                 not null,
   IDPARROQUIA          CHAR(3)              not null,
   NOMBPARROQUIA        CHAR(30)             not null,
   constraint PK_PARROQUIAURBANARURAL primary key (IDPARROQUIA_AUTOMATICO)
);

/*==============================================================*/
/* Index: PARROQUIAURBANARURAL_PK                               */
/*==============================================================*/
create unique index PARROQUIAURBANARURAL_PK on PARROQUIAURBANARURAL (
IDPARROQUIA_AUTOMATICO
);

/*==============================================================*/
/* Index: FK_PARROQUI_RELATIONS_CANTON_FK                       */
/*==============================================================*/
create  index FK_PARROQUI_RELATIONS_CANTON_FK on PARROQUIAURBANARURAL (
IDCANTON_AUTOMATICO
);

/*==============================================================*/
/* Table: PROVINCIA                                             */
/*==============================================================*/
create table PROVINCIA (
   IDPROVINCIA_AUTOMATICO INT8                 not null,
   IDPROVINCIA          CHAR(2)              not null,
   NOMBPROVINCIA        CHAR(30)             not null,
   constraint PK_PROVINCIA primary key (IDPROVINCIA_AUTOMATICO)
);

/*==============================================================*/
/* Index: PROVINCIA_PK                                          */
/*==============================================================*/
create unique index PROVINCIA_PK on PROVINCIA (
IDPROVINCIA_AUTOMATICO
);

alter table CANTON
   add constraint FK_CANTON_FK_CANTON_PROVINCI foreign key (IDPROVINCIA_AUTOMATICO)
      references PROVINCIA (IDPROVINCIA_AUTOMATICO)
      on delete restrict on update restrict;

alter table PARROQUIAURBANARURAL
   add constraint FK_PARROQUI_FK_PARROQ_CANTON foreign key (IDCANTON_AUTOMATICO)
      references CANTON (IDCANTON_AUTOMATICO)
      on delete restrict on update restrict;






----
---codigo usado en datos personales
SELECT * FROM tabla LIMIT 1;

select * from nacionalidad
	SELECT MAX(idnacionalidad) FROM nacionalidad;
	select * from ubicacion
	SELECT MAX(idubicacion) FROM ubicacion;
	select * from datos_personales
	
	--select ID from datos_personales

--para obtener los ultimos 2 registros de la tabla >>>>datos_personales<<<<<

SELECT * FROM datos_personales ORDER BY datos_personales.iddatoperso DESC limit 2


--	drop table auditoria
	create table Auditoria(
	codigo serial,
	idformularioAuditoria char (20),
	nombreoofiAuditoria char(20),
	nombreFuncionarioAuditorioa char (20),
	CIFuncionarioAuditoria  char (13)
	)
	select * from formulario
	select * from Auditoria
	---- antes de crear un trigger es necesario crear una funcion 
	DROP FUNCTION inser
	create or replace function insertarDatosTIGGERAuditoria()
	returns trigger as $insercionAudito$
	declare begin 
		--insert into auditoria values (old.Auditoria.idformularioauditoria, old.Auditoria.nombreoofiauditoria, old.Auditoria.nombrefuncionarioauditorioa, old.Auditoria.cifuncionarioauditoria);
		RETURN null;
	end;
	$insercionAudito$ language plpgsql;
	-- inicio del triiger q se va a ocupar
	create trigger InsertarD_Auditoria after insert 
	on formulario for each row
	execute procedure insertarDatosTIGGERAuditoria();
	
	CREATE TABLE usuario
	(
 		id serial NOT NULL,
 		usuario character (15) NOT NULL,
 		clave character (15) NOT NULL
	)
	insert into usuario (usuario, clave) values ('admin', 'admin')
    select * from usuario