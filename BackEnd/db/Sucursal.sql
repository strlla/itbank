DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE IF NOT EXISTS sucursal(
branch_id INTEGER NOT NULL,
branch_name char(50) NOT NULL,
branch_adress varchar(255) NOT NULL,
FOREIGN KEY (branch_adress) references direcciones (branch_adress)  
);

INSERT INTO sucursal (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (1,"Palermo","Av.Santa fe 5118."),
  (2,"Recoleta","Av.Quintana 112."),
  (3,"Belgrano","Av.Cabildo 517."),
  (4,"Puerto Madero","Av.Cecilia Gryerson 4901."),
  (5,"Coughlan","Av.Congreso 3901."),
  (6,"Boedo","Av.San Juan 1990."),
  (7,"Montserrat","Av.Independencia 892"),
  (8,"La Boca","Brandesen 805"),
  (9,"Colegiales","Fitz Roy 305"),
  (10,"Moreno","Camino de la Ribera 3000"),
  (11,"Ramos Mejia","Santa Rosa"),
  (12,"Parque Leloir","Martin Fierro 3100"),
  (13,"San Miguel","Av.Balbin 314"),
  (14,"Pilar","Av.Almada 5612"),
  (15,"San Nicolas","Av.Cordoba 131"),
  (16,"San Justo","Av.Nicolas Aliendro 9823"),
  (17,"Avellaneda","Av.Concepción 10"),
  (18,"Saavedra","Roque Perez 3101"),
  (19,"La Matanza","Av.Crovara 3500"),
  (20,"Caballito","Av.Directorio 3500");


  