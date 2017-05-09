-- Generado por Oracle SQL Developer Data Modeler 4.1.1.888
--   en:        2017-05-07 18:38:25 CEST
--   sitio:      Oracle Database 12c
--   tipo:      Oracle Database 12c




DROP TABLE Avisos CASCADE CONSTRAINTS ;

DROP TABLE CENTRO CASCADE CONSTRAINTS ;

DROP TABLE PARTE CASCADE CONSTRAINTS ;

DROP TABLE TRABAJADOR CASCADE CONSTRAINTS ;

DROP TABLE VEHICULO CASCADE CONSTRAINTS ;

DROP TABLE VIAJE CASCADE CONSTRAINTS ;

CREATE TABLE Avisos
  (
    TRABAJADOR_Usuario VARCHAR2 (15) NOT NULL ,
    Fecha_Aviso        DATE NOT NULL ,
    Comentario         VARCHAR2 (200)
  ) ;


CREATE TABLE CENTRO
  (
    Nombre        VARCHAR2 (33) ,
    Calle         VARCHAR2 (33) ,
    Numero        VARCHAR2 (4) ,
    Codigo_Postal VARCHAR2 (6) ,
    Telefono      VARCHAR2 (16) ,
    Ciudad        VARCHAR2 (33) ,
    Provincia     VARCHAR2 (20) ,
    CENTRO_ID     NUMBER (10) NOT NULL
  ) ;
ALTER TABLE CENTRO ADD CONSTRAINT CENTRO_PK PRIMARY KEY ( CENTRO_ID ) ;


CREATE TABLE PARTE
  (
    Num_Parte          NUMBER (10) NOT NULL ,
    Km_principio       NUMBER (8,2) NOT NULL ,
    Km_final           NUMBER (8,2) NOT NULL ,
    Fecha              DATE NOT NULL ,
    Estado             VARCHAR2 (9)  NOT NULL  CONSTRAINT PAR_EST_CK CHECK (ESTADO IN ('ABIERTO', 'CERRADO')),
    Gasto_gasoil       NUMBER (8,2) ,
    Gasto_autopista    NUMBER (8,2) ,
    Gasto_dietas       NUMBER (8,2) ,
    Gastos_varios      NUMBER (8,2) ,
    Incidencias        VARCHAR2 (300) ,
    Validado            VARCHAR2 (4)NOT NULL CONSTRAINT PAR_VALID_CK CHECK (Validado IN ('SI', 'NO')),
    TRABAJADOR_Usuario VARCHAR2 (20) NOT NULL ,
    Exceso             NUMBER (8,2)
  ) ;
ALTER TABLE PARTE ADD CONSTRAINT PARTE_PK PRIMARY KEY ( Num_Parte ) ;


CREATE TABLE TRABAJADOR
  (
    Usuario           VARCHAR2 (20) NOT NULL ,
    Contrasena        VARCHAR2 (20) NOT NULL ,
    Dni               VARCHAR2 (10) NOT NULL ,
    Nombre            VARCHAR2 (20) NOT NULL ,
    Apellido_1        VARCHAR2 (33) NOT NULL ,
    Apellido_2        VARCHAR2 (33) NOT NULL ,
    Calle             VARCHAR2 (33) NOT NULL ,
    Portal            VARCHAR2 (5) NOT NULL ,
    Piso              VARCHAR2 (4) ,
    Mano              VARCHAR2 (4) ,
    Categoria         VARCHAR2 (14) NOT NULL  CONSTRAINT TRAB_CAT_CK CHECK (CATEGORIA IN ('ADMINISTRATIVO', 'TRANSPORTISTA')),
    Telefono_Empresa  VARCHAR2 (9) NOT NULL ,
    Telefono_Personal VARCHAR2 (9) ,
    Salario           NUMBER (8,2) ,
    Fecha_Nacimiento  DATE ,
    CENTRO_ID NUMBER (10) not null
  ) ;
ALTER TABLE TRABAJADOR ADD CONSTRAINT TRABAJADOR_PK PRIMARY KEY ( Usuario ) ;


CREATE TABLE VEHICULO
  (
    Matricula       VARCHAR2 (12) NOT NULL ,
    Marca           VARCHAR2 (15) ,
    Modelo          VARCHAR2 (15) ,
    PARTE_Num_Parte NUMBER NOT NULL
  ) ;
ALTER TABLE VEHICULO ADD CONSTRAINT VEHICULO_PK PRIMARY KEY ( Matricula ) ;


CREATE TABLE VIAJE
  (
    Id_Viaje           NUMBER (10) NOT NULL ,
    Hora_salida        NUMBER (5) NOT NULL ,
    Hora_llegada       NUMBER (5) NOT NULL ,
    VEHICULO_Matricula VARCHAR2 (10) NOT NULL ,
    Total_horas_viaje  NUMBER (10) NOT NULL ,
    PARTE_Num_Parte    NUMBER NOT NULL ,
    Usuario            VARCHAR2 (20) NOT NULL
  ) ;
ALTER TABLE VIAJE ADD CONSTRAINT VIAJE_PK PRIMARY KEY ( Id_Viaje ) ;



ALTER TABLE PARTE ADD CONSTRAINT PARTE_TRABAJADOR_FK FOREIGN KEY ( TRABAJADOR_Usuario ) REFERENCES TRABAJADOR ( Usuario ) ;

ALTER TABLE TRABAJADOR ADD CONSTRAINT TRABAJADOR_CENTRO_FK FOREIGN KEY ( CENTRO_ID ) REFERENCES CENTRO ( CENTRO_ID ) ;



ALTER TABLE VEHICULO ADD CONSTRAINT VEHICULO_PARTE_FK FOREIGN KEY ( PARTE_Num_Parte ) REFERENCES PARTE ( Num_Parte ) ;

ALTER TABLE VIAJE ADD CONSTRAINT VIAJE_PARTE_FK FOREIGN KEY ( PARTE_Num_Parte ) REFERENCES PARTE ( Num_Parte ) ;

ALTER TABLE VIAJE ADD CONSTRAINT VIAJE_VEHICULO_FK FOREIGN KEY ( VEHICULO_Matricula ) REFERENCES VEHICULO ( Matricula ) ;


CREATE SEQUENCE SEQ_VIAJE

START WITH 1

MAXVALUE 9999999999

MINVALUE 1

NOCYCLE

NOCACHE

NOORDER

CREATE SEQUENCE CENTRO_ID_SEQ

START WITH 1

MAXVALUE 9999999999

MINVALUE 1

NOCYCLE

NOCACHE

NOORDER;


CREATE SEQUENCE PARTE_SEQ

START WITH 1

MAXVALUE 9999999999

MINVALUE 1

NOCYCLE

NOCACHE

NOORDER;


CREATE OR REPLACE TRIGGER CENTRO_ID_TRG BEFORE
  INSERT ON CENTRO FOR EACH ROW WHEN (NEW.CENTRO_ID IS NULL) BEGIN :NEW.CENTRO_ID := CENTRO_ID_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER Id_Viaje_TRG BEFORE
  INSERT ON VIAJE FOR EACH ROW WHEN (NEW.ID_VIAJE IS NULL) BEGIN :NEW.ID_VIAJE := SEQ_VIAJE.NEXTVAL;
END;
/


CREATE OR REPLACE TRIGGER NOMBRECENTRO_TRG BEFORE
  INSERT ON CENTRO FOR EACH ROW WHEN (NEW.CENTRO_ID IS NULL) BEGIN :NEW.CENTRO_ID := CENTRO_ID_SEQ.NEXTVAL;
END;



CREATE OR REPLACE TRIGGER NUM_PARTE_ID_TRG BEFORE
  INSERT ON PARTE FOR EACH ROW WHEN (NEW.NUM_PARTE IS NULL) BEGIN :NEW.NUM_PARTE := PARTE_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER COMPROBAR_PARTE
AFTERUPDATE
ON PARTE FOR EACH ROW
BEGIN:OLD.ESTADO := 'ABIERTO';
END COMPROBAR_PARTE;
