
CREATE TABLE IF NOT EXISTS cliente(
	customer_id INTEGER NOT NULL  ,
	customer_name CHAR(50)  NOT NULL,
	 customer_surname  CHAR(50)  NOT NULL,
	 customer_DNI  CHAR(10) NOT NULL,
	 branch_id 	INTEGER NOT NULL ,
	 dob DATE NOT NULL,
	 tipo_cliente  TEXT NOT NULL,
	 PRIMARY KEY(customer_id),
	 FOREIGN KEY(branch_id) references sucursal(branch_id)

);


INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Cassidy","Phelps","7",9,"1981-06-16 ","BLACK"),
  ("Stephanie","Hinton","1",9,"1986-12-13 ","GOLD"),
  ("Kiona","O'donnell","K",18,"1986-12-07 ","CLASSIC"),
  ("George","Patel","K",5,"1986-11-02 ","BLACK"),
  ("Vladimir","Giles","9",5,"1986-04-27 ","GOLD"),
  ("Megan","Banks","7",10,"1986-11-24 ","CLASSIC"),
  ("Cynthia","Vance","4",0,"1981-06-27 ","BLACK"),
  ("Quail","Terrell","4",9,"1986-04-21 ","GOLD"),
  ("Darius","Snow","8",11,"1986-03-07 ","CLASSIC"),
  ("Charles","Davidson","K",20,"1981-01-30 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Magee","Bryan","8",5,"1986-12-31 ","GOLD"),
  ("TaShya","Molina","1",19,"1986-10-12 ","CLASSIC"),
  ("Chadwick","Wiggins","0",17,"1986-09-27 ","BLACK"),
  ("Alice","Chaney","5",2,"1986-08-08 ","GOLD"),
  ("Felix","Gibson","7",8,"1986-09-29 ","CLASSIC"),
  ("Paloma","Goodman","1",2,"1986-02-03 ","BLACK"),
  ("Len","Kline","5",8,"1986-10-07 ","GOLD"),
  ("Eugenia","Stewart","5",10,"1986-01-09 ","CLASSIC"),
  ("Josiah","Parker","1",4,"1986-12-30 ","BLACK"),
  ("Henry","Henry","9",18,"1986-01-02 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Shafira","Rogers","4",6,"1986-08-12 ","CLASSIC"),
  ("Gil","Noel","1",14,"1986-05-21 ","BLACK"),
  ("Brenna","Ellison","2",15,"1986-12-08 ","GOLD"),
  ("Rosalyn","Shelton","5",1,"1986-01-08 ","CLASSIC"),
  ("Kay","Suarez","1",9,"1986-03-28 ","BLACK"),
  ("Suki","Cruz","K",13,"1986-10-05 ","GOLD"),
  ("Yasir","Bishop","2",9,"1981-03-20 ","CLASSIC"),
  ("Linda","Briggs","3",3,"1986-12-27 ","BLACK"),
  ("Aphrodite","Acosta","0",18,"1986-08-21 ","GOLD"),
  ("Beck","Sykes","K",15,"1986-10-28 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Ralph","Graham","2",5,"1986-11-18 ","BLACK"),
  ("Rafael","Osborne","8",19,"1981-04-26 ","GOLD"),
  ("Stacy","Castillo","6",11,"1981-02-28 ","CLASSIC"),
  ("Josiah","Young","5",16,"1986-09-18 ","BLACK"),
  ("Adena","Gay","5",9,"1981-04-30 ","GOLD"),
  ("Erasmus","Mcmahon","5",17,"1986-10-06 ","CLASSIC"),
  ("Wing","Gould","5",5,"1986-07-30 ","BLACK"),
  ("Rhoda","Benton","2",9,"1986-02-18 ","GOLD"),
  ("Hamilton","Aguirre","4",18,"1981-05-27 ","CLASSIC"),
  ("Leslie","Riddle","5",9,"1986-04-19 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Melodie","Finch","2",7,"1981-02-16 ","GOLD"),
  ("Valentine","Pace","6",11,"1986-01-08 ","CLASSIC"),
  ("Paul","Fisher","9",18,"1986-02-11 ","BLACK"),
  ("Fleur","Benjamin","8",16,"1986-05-02 ","GOLD"),
  ("Oprah","Dejesus","4",18,"1986-09-12 ","CLASSIC"),
  ("Buffy","Hebert","6",15,"1986-07-07 ","BLACK"),
  ("Jared","Alston","1",1,"1986-05-29 ","GOLD"),
  ("Beck","Salas","0",11,"1986-04-19 ","CLASSIC"),
  ("Clementine","Thomas","7",15,"1986-07-16 ","BLACK"),
  ("Neil","Guerrero","4",11,"1986-03-30 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Wayne","Allison","6",11,"1981-06-10 ","CLASSIC"),
  ("Inga","Black","7",7,"1986-10-03 ","BLACK"),
  ("Karyn","French","6",14,"1986-06-23 ","GOLD"),
  ("Rachel","Macias","2",2,"1986-01-04 ","CLASSIC"),
  ("Colorado","Shaw","7",16,"1981-04-02 ","BLACK"),
  ("Cullen","Tillman","2",18,"1986-10-21 ","GOLD"),
  ("Victoria","Ortiz","5",13,"1981-04-16 ","CLASSIC"),
  ("Rowan","Moran","0",3,"1986-10-28 ","BLACK"),
  ("Karina","Bruce","2",16,"1986-10-07 ","GOLD"),
  ("Maya","Skinner","8",11,"1981-05-24 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Melanie","Ross","9",18,"1986-08-03 ","BLACK"),
  ("Melinda","Buckner","1",9,"1986-01-04 ","GOLD"),
  ("Raja","Camacho","K",16,"1986-08-25 ","CLASSIC"),
  ("Macy","Cummings","1",14,"1981-01-26 ","BLACK"),
  ("Davis","Wilkinson","0",15,"1981-01-03 ","GOLD"),
  ("Nerea","Daniel","0",5,"1986-01-17 ","CLASSIC"),
  ("Valentine","Blankenship","4",12,"1981-05-31 ","BLACK"),
  ("Beverly","Erickson","K",10,"1981-03-27 ","GOLD"),
  ("Solomon","Odom","3",1,"1986-09-19 ","CLASSIC"),
  ("Ulysses","Morse","K",4,"1986-10-02 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Cain","Andrews","K",15,"1986-11-14 ","GOLD"),
  ("Harper","Maxwell","1",14,"1986-11-15 ","CLASSIC"),
  ("Quinn","Ellis","2",12,"1981-03-05 ","BLACK"),
  ("Brynn","Clemons","1",12,"1986-02-15 ","GOLD"),
  ("Laurel","Caldwell","1",17,"1981-01-16 ","CLASSIC"),
  ("Yoko","Dalton","2",7,"1986-04-11 ","BLACK"),
  ("Cameran","Hinton","7",2,"1986-08-12 ","GOLD"),
  ("Beverly","Flynn","7",4,"1986-07-15 ","CLASSIC"),
  ("Tana","Nolan","2",19,"1986-10-14 ","BLACK"),
  ("Amanda","Mcgowan","5",6,"1986-06-27 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Lamar","Roth","2",11,"1986-10-18 ","CLASSIC"),
  ("Winifred","Booker","9",20,"1981-06-09 ","BLACK"),
  ("Ava","Kirk","4",2,"1986-12-02 ","GOLD"),
  ("Alan","Blanchard","6",7,"1986-12-25 ","CLASSIC"),
  ("Aileen","Puckett","7",13,"1981-04-28 ","BLACK"),
  ("Rahim","Vance","6",16,"1986-09-15 ","GOLD"),
  ("Daniel","Johns","3",8,"1986-07-22 ","CLASSIC"),
  ("Byron","Arnold","4",19,"1986-08-16 ","BLACK"),
  ("Baxter","Webb","7",5,"1986-04-24 ","GOLD"),
  ("Veda","Frost","7",4,"1986-06-06 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Nathan","Walters","1",9,"1986-04-15 ","BLACK"),
  ("Mara","Watkins","K",8,"1986-08-12 ","GOLD"),
  ("Fredericka","Baird","1",4,"1986-04-07 ","CLASSIC"),
  ("India","Henderson","2",15,"1986-08-10 ","BLACK"),
  ("Wyatt","Hammond","3",11,"1986-11-15 ","GOLD"),
  ("Kameko","Abbott","7",15,"1986-10-30 ","CLASSIC"),
  ("Hakeem","Larsen","3",19,"1986-07-20 ","BLACK"),
  ("Melvin","Velasquez","6",5,"1981-02-09 ","GOLD"),
  ("Halee","Harrington","4",20,"1981-01-31 ","CLASSIC"),
  ("Brenna","Owen","3",13,"1981-07-05 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Catherine","Walton","6",3,"1986-10-29 ","GOLD"),
  ("Guinevere","Calderon","9",13,"1986-12-02 ","CLASSIC"),
  ("Kelly","Parker","7",9,"1986-11-15 ","BLACK"),
  ("Emily","Conway","6",19,"1986-02-26 ","GOLD"),
  ("Brett","Mclaughlin","4",20,"1986-08-04 ","CLASSIC"),
  ("Timothy","Mcclure","K",2,"1981-06-02 ","BLACK"),
  ("Kato","Gonzales","1",14,"1986-03-30 ","GOLD"),
  ("Jacqueline","Mayo","0",5,"1981-02-08 ","CLASSIC"),
  ("Anika","Moore","0",18,"1986-02-21 ","BLACK"),
  ("James","Henson","7",13,"1986-04-08 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Charissa","Dodson","5",4,"1986-12-04 ","CLASSIC"),
  ("Raphael","Harrison","5",18,"1981-07-31 ","BLACK"),
  ("Fulton","Winters","4",12,"1986-05-13 ","GOLD"),
  ("Byron","Barrera","9",6,"1981-02-11 ","CLASSIC"),
  ("Kalia","Cooley","9",5,"1981-06-24 ","BLACK"),
  ("Marvin","Snider","K",18,"1986-04-28 ","GOLD"),
  ("Neil","Neal","0",9,"1986-08-09 ","CLASSIC"),
  ("Barclay","Gay","0",13,"1986-03-06 ","BLACK"),
  ("Zeus","Maddox","4",12,"1986-09-16 ","GOLD"),
  ("Cally","Harris","9",2,"1986-03-22 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Mara","Webster","8",0,"1986-12-15 ","BLACK"),
  ("Yardley","Acevedo","9",0,"1986-12-26 ","GOLD"),
  ("Shay","Gentry","9",17,"1981-06-04 ","CLASSIC"),
  ("Kadeem","Hopkins","3",6,"1986-06-01 ","BLACK"),
  ("Tatyana","Curtis","5",19,"1986-01-16 ","GOLD"),
  ("Edward","O'donnell","0",17,"1981-03-11 ","CLASSIC"),
  ("Levi","Giles","7",6,"1986-11-09 ","BLACK"),
  ("Susan","Ortega","K",13,"1981-05-28 ","GOLD"),
  ("Blaze","Fleming","K",4,"1981-05-03 ","CLASSIC"),
  ("Lionel","Hahn","K",1,"1986-08-13 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Gareth","Hodge","8",9,"1986-10-11 ","GOLD"),
  ("Dorian","Henderson","0",9,"1986-08-18 ","CLASSIC"),
  ("Martena","Guerra","9",11,"1981-07-20 ","BLACK"),
  ("Kirk","Velez","4",5,"1981-07-25 ","GOLD"),
  ("Erin","Cox","K",3,"1986-08-29 ","CLASSIC"),
  ("Chadwick","Good","1",8,"1986-09-08 ","BLACK"),
  ("Hunter","Conway","3",9,"1986-12-27 ","GOLD"),
  ("Quentin","Curry","7",6,"1986-11-19 ","CLASSIC"),
  ("Eve","Franklin","3",12,"1986-04-29 ","BLACK"),
  ("Alana","Bailey","8",12,"1986-10-12 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Tanner","Thompson","5",13,"1981-03-22 ","CLASSIC"),
  ("Whilemina","Riley","2",2,"1981-02-04 ","BLACK"),
  ("Hunter","Parks","5",12,"1981-07-23 ","GOLD"),
  ("Francis","Forbes","1",17,"1986-08-09 ","CLASSIC"),
  ("Jasmine","Clark","K",2,"1986-06-29 ","BLACK"),
  ("Charde","Austin","9",3,"1981-06-27 ","GOLD"),
  ("Katelyn","Nielsen","3",13,"1986-11-23 ","CLASSIC"),
  ("Kibo","Glenn","3",12,"1986-09-11 ","BLACK"),
  ("Dean","Dudley","1",2,"1986-11-30 ","GOLD"),
  ("Jolie","Sanchez","K",1,"1981-02-10 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Brock","Bass","4",12,"1986-03-06 ","BLACK"),
  ("Anika","Buck","6",9,"1981-05-03 ","GOLD"),
  ("Brock","James","1",4,"1986-09-12 ","CLASSIC"),
  ("Ashton","Rice","8",10,"1981-06-23 ","BLACK"),
  ("Dylan","Fletcher","K",14,"1986-08-24 ","GOLD"),
  ("Judah","Villarreal","1",4,"1986-08-28 ","CLASSIC"),
  ("Shea","Livingston","8",11,"1986-10-08 ","BLACK"),
  ("Ariana","Crawford","2",20,"1986-08-01 ","GOLD"),
  ("Declan","Gordon","1",13,"1981-03-07 ","CLASSIC"),
  ("Graiden","Preston","K",10,"1986-07-13 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Octavius","Miller","K",17,"1986-01-30 ","GOLD"),
  ("Tiger","Good","5",8,"1986-11-13 ","CLASSIC"),
  ("Phoebe","Spears","7",3,"1986-10-14 ","BLACK"),
  ("Hope","Walsh","3",18,"1986-11-20 ","GOLD"),
  ("Davis","Alford","4",9,"1986-01-06 ","CLASSIC"),
  ("Beatrice","Bean","6",4,"1986-04-24 ","BLACK"),
  ("Derek","Mcpherson","5",11,"1981-03-28 ","GOLD"),
  ("Cailin","Simpson","8",17,"1986-01-21 ","CLASSIC"),
  ("Cathleen","Velez","0",6,"1986-01-14 ","BLACK"),
  ("Julian","Valenzuela","1",19,"1981-02-12 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Robert","Pratt","0",19,"1981-02-06 ","CLASSIC"),
  ("Iola","Reed","K",12,"1986-09-03 ","BLACK"),
  ("Zorita","Valdez","5",19,"1986-01-11 ","GOLD"),
  ("Chava","Booker","7",3,"1986-08-29 ","CLASSIC"),
  ("Uriel","Burke","8",15,"1981-06-10 ","BLACK"),
  ("Orli","Logan","K",16,"1986-03-11 ","GOLD"),
  ("Whoopi","Stewart","1",19,"1986-08-15 ","CLASSIC"),
  ("Catherine","Blair","K",3,"1981-04-06 ","BLACK"),
  ("Miranda","Kelly","5",17,"1981-03-06 ","GOLD"),
  ("Ferris","Langley","1",8,"1981-05-15 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Harlan","Murphy","8",5,"1986-10-03 ","BLACK"),
  ("Lester","Walls","7",11,"1986-11-24 ","GOLD"),
  ("Nero","Buckner","5",3,"1986-09-09 ","CLASSIC"),
  ("Jerome","Mason","1",18,"1986-02-03 ","BLACK"),
  ("Lee","Snow","K",18,"1981-07-02 ","GOLD"),
  ("Luke","Fisher","0",2,"1986-11-14 ","CLASSIC"),
  ("Nasim","Hughes","6",19,"1986-08-22 ","BLACK"),
  ("Meghan","Hansen","7",8,"1986-12-09 ","GOLD"),
  ("Yasir","Lane","3",0,"1986-03-02 ","CLASSIC"),
  ("Theodore","Mckee","7",9,"1981-01-18 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Lani","Mullen","2",14,"1986-06-26 ","GOLD"),
  ("Aiko","Crawford","5",19,"1981-05-09 ","CLASSIC"),
  ("Bruce","Stokes","9",1,"1986-11-11 ","BLACK"),
  ("Phillip","Bradley","9",12,"1981-01-27 ","GOLD"),
  ("Channing","Foreman","8",19,"1986-12-08 ","CLASSIC"),
  ("Yael","Rodriguez","7",20,"1986-08-03 ","BLACK"),
  ("Graham","Colon","7",6,"1986-12-29 ","GOLD"),
  ("Graiden","Lee","6",14,"1981-01-18 ","CLASSIC"),
  ("Erica","Johnson","9",14,"1986-09-08 ","BLACK"),
  ("Quail","Chambers","9",5,"1986-12-13 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Vanna","Hartman","0",19,"1986-02-24 ","CLASSIC"),
  ("Chase","Scott","7",6,"1981-02-14 ","BLACK"),
  ("Susan","Ellison","5",1,"1986-04-07 ","GOLD"),
  ("Kelly","Scott","5",7,"1986-10-23 ","CLASSIC"),
  ("Vincent","Herrera","3",3,"1981-02-24 ","BLACK"),
  ("Idona","Kirkland","2",16,"1986-08-28 ","GOLD"),
  ("Amal","Powell","4",19,"1986-03-31 ","CLASSIC"),
  ("Julian","Beasley","1",4,"1986-07-13 ","BLACK"),
  ("Kareem","Bray","3",11,"1986-11-24 ","GOLD"),
  ("Dieter","Mcleod","8",9,"1986-09-18 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Abel","Rhodes","1",11,"1986-06-24 ","BLACK"),
  ("Harrison","Bruce","4",15,"1981-08-01 ","GOLD"),
  ("Paloma","Terry","8",2,"1986-12-23 ","CLASSIC"),
  ("Randall","Benson","8",9,"1986-10-10 ","BLACK"),
  ("Caleb","Mullins","5",8,"1986-10-10 ","GOLD"),
  ("Honorato","Alvarez","4",18,"1981-05-27 ","CLASSIC"),
  ("Jameson","Wallace","7",18,"1986-08-03 ","BLACK"),
  ("Clio","Huber","8",1,"1986-10-20 ","GOLD"),
  ("James","Alston","6",5,"1981-05-06 ","CLASSIC"),
  ("Margaret","Vang","7",15,"1986-07-09 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Jackson","Shelton","5",14,"1986-03-23 ","GOLD"),
  ("Arthur","Steele","8",16,"1981-01-15 ","CLASSIC"),
  ("Caleb","Mathis","5",15,"1981-03-07 ","BLACK"),
  ("Shay","Fulton","5",7,"1986-12-10 ","GOLD"),
  ("Kiayada","Hurley","7",14,"1986-08-04 ","CLASSIC"),
  ("Shea","Chang","5",3,"1986-01-07 ","BLACK"),
  ("Blake","Carr","0",12,"1986-02-23 ","GOLD"),
  ("Todd","Castillo","K",5,"1986-06-03 ","CLASSIC"),
  ("Odysseus","Hyde","8",19,"1981-05-19 ","BLACK"),
  ("Devin","Wyatt","6",13,"1986-08-14 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Ulla","Ratliff","0",6,"1986-11-06 ","CLASSIC"),
  ("Leila","Maxwell","2",9,"1986-04-15 ","BLACK"),
  ("Asher","Wooten","2",17,"1986-10-26 ","GOLD"),
  ("Abbot","Harvey","8",4,"1986-10-31 ","CLASSIC"),
  ("Carson","Cole","6",13,"1986-01-16 ","BLACK"),
  ("Bo","Trevino","K",7,"1981-05-15 ","GOLD"),
  ("Lacy","Herrera","4",8,"1986-10-05 ","CLASSIC"),
  ("Sheila","Nunez","5",9,"1986-04-09 ","BLACK"),
  ("Byron","Preston","0",8,"1986-08-31 ","GOLD"),
  ("Francesca","Espinoza","7",13,"1981-06-11 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Robin","Daniel","K",5,"1986-11-06 ","BLACK"),
  ("Myles","Bean","K",6,"1986-12-27 ","GOLD"),
  ("Eric","Yates","7",1,"1986-05-13 ","CLASSIC"),
  ("Signe","Hays","1",6,"1986-11-22 ","BLACK"),
  ("Steven","Hicks","5",11,"1986-10-28 ","GOLD"),
  ("Xavier","Mclaughlin","2",2,"1981-07-30 ","CLASSIC"),
  ("Justine","Blanchard","8",4,"1981-01-05 ","BLACK"),
  ("Todd","Welch","K",8,"1986-06-16 ","GOLD"),
  ("Walker","Byers","4",18,"1986-09-15 ","CLASSIC"),
  ("Colette","Ruiz","2",10,"1986-12-25 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Keane","French","0",7,"1986-07-29 ","GOLD"),
  ("Quinlan","England","6",11,"1981-02-13 ","CLASSIC"),
  ("Wilma","Wheeler","9",8,"1981-04-17 ","BLACK"),
  ("Graiden","Leon","1",1,"1986-12-02 ","GOLD"),
  ("Sigourney","Barry","8",19,"1986-09-27 ","CLASSIC"),
  ("Perry","Mcclure","8",12,"1986-06-22 ","BLACK"),
  ("Barrett","Crawford","2",4,"1986-08-25 ","GOLD"),
  ("Ivy","Molina","8",10,"1986-10-19 ","CLASSIC"),
  ("Hadley","Woodward","K",16,"1986-02-03 ","BLACK"),
  ("Griffin","Calderon","1",16,"1986-01-02 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Aretha","Robertson","1",16,"1986-03-14 ","CLASSIC"),
  ("Alisa","Mullen","4",6,"1986-10-29 ","BLACK"),
  ("Astra","Short","7",0,"1986-12-24 ","GOLD"),
  ("Kathleen","Mcdonald","3",11,"1981-07-24 ","CLASSIC"),
  ("Althea","Peterson","1",11,"1981-04-21 ","BLACK"),
  ("Sonya","Vang","5",3,"1986-12-20 ","GOLD"),
  ("Kelly","Madden","9",1,"1981-01-10 ","CLASSIC"),
  ("Jermaine","Browning","K",10,"1986-09-03 ","BLACK"),
  ("Martena","Galloway","0",18,"1986-05-05 ","GOLD"),
  ("Linda","Bradford","5",16,"1986-01-29 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Wynne","Moran","3",5,"1986-08-20 ","BLACK"),
  ("Hedy","Hudson","6",1,"1986-07-07 ","GOLD"),
  ("Camille","Montgomery","5",10,"1986-01-03 ","CLASSIC"),
  ("Hunter","Pickett","K",9,"1986-09-02 ","BLACK"),
  ("Zahir","Maldonado","8",15,"1986-10-30 ","GOLD"),
  ("Scarlet","Alvarez","9",0,"1986-05-21 ","CLASSIC"),
  ("Nayda","Carlson","7",1,"1986-01-17 ","BLACK"),
  ("Ronan","Diaz","5",6,"1986-10-10 ","GOLD"),
  ("Bo","Mccray","3",15,"1981-02-08 ","CLASSIC"),
  ("Wendy","Jennings","0",7,"1981-01-31 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Lionel","Glover","1",8,"1981-03-15 ","GOLD"),
  ("Clayton","Vega","8",17,"1986-10-17 ","CLASSIC"),
  ("Alvin","Shields","6",16,"1981-02-23 ","BLACK"),
  ("Astra","Day","6",18,"1986-08-15 ","GOLD"),
  ("Shoshana","Mays","2",5,"1986-07-23 ","CLASSIC"),
  ("Penelope","Nixon","4",18,"1986-03-07 ","BLACK"),
  ("Uma","Morales","5",1,"1986-11-19 ","GOLD"),
  ("Seth","Cotton","0",12,"1981-06-15 ","CLASSIC"),
  ("Tyler","Henderson","3",8,"1986-12-30 ","BLACK"),
  ("Guy","Hughes","4",2,"1981-01-13 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Isabella","Wright","7",19,"1986-05-14 ","CLASSIC"),
  ("Troy","Fisher","7",11,"1986-06-07 ","BLACK"),
  ("Tatyana","Roberson","1",15,"1986-11-14 ","GOLD"),
  ("Darius","Heath","0",18,"1986-03-10 ","CLASSIC"),
  ("Alma","Chandler","7",18,"1981-01-23 ","BLACK"),
  ("Kitra","Hicks","K",3,"1986-08-30 ","GOLD"),
  ("Janna","Dalton","5",7,"1986-06-27 ","CLASSIC"),
  ("Curran","Saunders","6",11,"1986-02-07 ","BLACK"),
  ("Rana","Guy","K",14,"1986-10-12 ","GOLD"),
  ("Maryam","Melton","1",19,"1986-09-11 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Elmo","Holden","7",2,"1986-11-24 ","BLACK"),
  ("Camden","Walls","K",4,"1986-10-05 ","GOLD"),
  ("Keith","Harmon","2",5,"1986-12-11 ","CLASSIC"),
  ("Carter","Harper","7",8,"1986-11-11 ","BLACK"),
  ("Emery","Peters","8",9,"1981-01-30 ","GOLD"),
  ("Cecilia","Baxter","K",3,"1981-04-20 ","CLASSIC"),
  ("Priscilla","Dixon","2",18,"1981-05-20 ","BLACK"),
  ("Silas","Byers","1",11,"1986-11-03 ","GOLD"),
  ("Jackson","Baird","0",15,"1986-11-14 ","CLASSIC"),
  ("Rhona","Sawyer","6",9,"1981-03-25 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Kalia","Thompson","3",14,"1986-11-12 ","GOLD"),
  ("Silas","Goodwin","7",9,"1981-08-01 ","CLASSIC"),
  ("Candace","Hewitt","4",19,"1986-11-26 ","BLACK"),
  ("Megan","Barlow","2",14,"1981-04-27 ","GOLD"),
  ("Nichole","Rose","7",7,"1981-03-29 ","CLASSIC"),
  ("Sydney","Chan","K",13,"1986-08-17 ","BLACK"),
  ("Keaton","Herman","3",10,"1986-02-04 ","GOLD"),
  ("Nomlanga","Levine","2",5,"1981-07-28 ","CLASSIC"),
  ("August","Puckett","9",15,"1981-07-02 ","BLACK"),
  ("Angela","Trevino","7",16,"1986-10-05 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Hyacinth","Mayo","4",9,"1981-02-11 ","CLASSIC"),
  ("Hall","Travis","5",19,"1986-08-28 ","BLACK"),
  ("William","Mitchell","K",19,"1986-10-14 ","GOLD"),
  ("Raja","Beach","K",1,"1986-09-07 ","CLASSIC"),
  ("Maxwell","Pratt","0",11,"1986-03-30 ","BLACK"),
  ("Neville","Strickland","0",17,"1986-04-21 ","GOLD"),
  ("Myles","Fitzgerald","3",13,"1986-08-05 ","CLASSIC"),
  ("Selma","Gray","1",19,"1986-02-06 ","BLACK"),
  ("Kaseem","Mcintosh","6",1,"1981-05-18 ","GOLD"),
  ("Merritt","Pugh","7",5,"1981-01-25 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Carissa","Meyer","9",1,"1986-06-17 ","BLACK"),
  ("Yoshio","Miranda","3",13,"1981-05-30 ","GOLD"),
  ("Ashely","Dennis","6",1,"1986-07-20 ","CLASSIC"),
  ("Victor","Griffith","K",16,"1986-11-03 ","BLACK"),
  ("Joan","Hogan","5",14,"1986-10-28 ","GOLD"),
  ("Yeo","Huber","7",9,"1981-01-13 ","CLASSIC"),
  ("Kadeem","Burke","2",16,"1981-06-13 ","BLACK"),
  ("Ethan","Gates","4",2,"1986-05-01 ","GOLD"),
  ("Ariana","Fleming","9",14,"1986-08-24 ","CLASSIC"),
  ("Kamal","Campbell","3",7,"1986-04-02 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Donovan","Dodson","8",14,"1981-03-21 ","GOLD"),
  ("Galena","Holmes","2",4,"1981-07-15 ","CLASSIC"),
  ("Burton","Dillard","K",18,"1986-03-04 ","BLACK"),
  ("Ima","Middleton","5",1,"1986-07-08 ","GOLD"),
  ("Murphy","Nunez","9",3,"1986-11-11 ","CLASSIC"),
  ("Yael","O'Neill","8",13,"1986-11-01 ","BLACK"),
  ("Imelda","Randolph","1",6,"1981-04-20 ","GOLD"),
  ("Odette","Delacruz","0",16,"1986-11-25 ","CLASSIC"),
  ("Valentine","Giles","K",15,"1986-12-01 ","BLACK"),
  ("Julian","Lawson","7",6,"1986-01-20 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Benjamin","Hewitt","9",13,"1986-12-16 ","CLASSIC"),
  ("Xaviera","Dixon","2",13,"1981-05-08 ","BLACK"),
  ("Hyacinth","Townsend","1",13,"1981-05-22 ","GOLD"),
  ("Seth","Bernard","0",5,"1986-08-23 ","CLASSIC"),
  ("Bevis","Stafford","0",15,"1986-06-04 ","BLACK"),
  ("Ryan","Burnett","8",20,"1986-08-19 ","GOLD"),
  ("Abra","Ortiz","K",16,"1986-03-06 ","CLASSIC"),
  ("Karina","Pruitt","3",12,"1986-01-04 ","BLACK"),
  ("Uriel","Webb","1",17,"1986-08-14 ","GOLD"),
  ("Chantale","Gentry","6",20,"1981-02-14 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Ainsley","Williamson","8",12,"1986-01-01 ","BLACK"),
  ("Callum","Fuller","K",19,"1986-02-14 ","GOLD"),
  ("Chadwick","Richardson","3",10,"1986-10-05 ","CLASSIC"),
  ("Kalia","Carlson","5",9,"1986-04-23 ","BLACK"),
  ("Cheryl","Villarreal","4",4,"1986-09-06 ","GOLD"),
  ("Hiram","Nunez","3",20,"1981-03-01 ","CLASSIC"),
  ("Rhiannon","Carter","1",5,"1981-06-10 ","BLACK"),
  ("Gloria","Woodward","9",9,"1981-06-30 ","GOLD"),
  ("Colin","Vance","0",4,"1986-09-17 ","CLASSIC"),
  ("Phillip","Greene","2",6,"1986-07-17 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Stuart","Welch","5",9,"1986-09-08 ","GOLD"),
  ("Reece","Little","6",10,"1986-02-08 ","CLASSIC"),
  ("Madonna","Moody","K",9,"1986-03-20 ","BLACK"),
  ("Dexter","Evans","6",16,"1986-10-16 ","GOLD"),
  ("Chaim","Valencia","0",1,"1981-05-16 ","CLASSIC"),
  ("Kylie","Walls","2",9,"1986-10-14 ","BLACK"),
  ("Lionel","Johnston","K",2,"1986-11-15 ","GOLD"),
  ("Zephr","Lang","3",1,"1986-09-09 ","CLASSIC"),
  ("Aidan","Galloway","K",9,"1981-06-21 ","BLACK"),
  ("Ashely","Delgado","9",17,"1986-09-26 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Felicia","Perkins","K",2,"1986-07-09 ","CLASSIC"),
  ("Ali","Chambers","9",20,"1986-12-01 ","BLACK"),
  ("Camille","Dale","4",3,"1981-03-30 ","GOLD"),
  ("Asher","Ellis","3",10,"1986-10-11 ","CLASSIC"),
  ("Brendan","Berry","6",3,"1986-06-02 ","BLACK"),
  ("Solomon","Freeman","7",1,"1981-06-23 ","GOLD"),
  ("Margaret","Trujillo","9",15,"1986-09-16 ","CLASSIC"),
  ("August","Alston","5",4,"1986-01-26 ","BLACK"),
  ("Sean","Hendrix","9",1,"1986-10-31 ","GOLD"),
  ("Tyler","Wilkins","4",7,"1986-12-30 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Kelsie","Combs","5",0,"1981-06-27 ","BLACK"),
  ("Rooney","Wallace","6",13,"1986-03-31 ","GOLD"),
  ("Hadassah","Boyd","9",17,"1986-06-05 ","CLASSIC"),
  ("Sandra","Glass","1",14,"1986-05-31 ","BLACK"),
  ("Omar","Roman","2",10,"1986-09-09 ","GOLD"),
  ("Bo","Carr","0",8,"1986-04-27 ","CLASSIC"),
  ("Cecilia","Roach","4",3,"1981-06-24 ","BLACK"),
  ("Pamela","Sharpe","8",9,"1981-07-25 ","GOLD"),
  ("Beatrice","Calderon","5",17,"1986-09-08 ","CLASSIC"),
  ("Arden","Patterson","3",15,"1981-03-21 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Winifred","Duffy","3",16,"1981-04-25 ","GOLD"),
  ("Gail","Lynn","1",16,"1986-10-02 ","CLASSIC"),
  ("Gavin","Sellers","2",15,"1986-01-05 ","BLACK"),
  ("Montana","Merritt","8",15,"1981-04-21 ","GOLD"),
  ("Ulysses","Pope","5",8,"1986-08-24 ","CLASSIC"),
  ("Florence","Sandoval","2",16,"1986-07-05 ","BLACK"),
  ("Tanner","Mcneil","4",2,"1981-03-25 ","GOLD"),
  ("Uta","Roach","0",15,"1986-12-18 ","CLASSIC"),
  ("Wing","Smith","2",8,"1986-11-26 ","BLACK"),
  ("Jerome","Francis","7",18,"1986-11-09 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Jonah","Rasmussen","5",6,"1986-10-28 ","CLASSIC"),
  ("Stewart","Conway","K",2,"1986-09-07 ","BLACK"),
  ("Rafael","Boyle","9",18,"1986-05-06 ","GOLD"),
  ("Isaiah","Salazar","K",16,"1981-06-24 ","CLASSIC"),
  ("Kasper","Medina","3",3,"1986-01-25 ","BLACK"),
  ("Emery","Shields","K",18,"1986-01-24 ","GOLD"),
  ("Martin","Everett","3",13,"1986-11-20 ","CLASSIC"),
  ("Barry","Emerson","K",5,"1981-05-09 ","BLACK"),
  ("Inga","Gutierrez","9",8,"1981-02-07 ","GOLD"),
  ("Judah","Kirby","2",19,"1986-10-16 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Alfreda","Barr","7",17,"1986-11-07 ","BLACK"),
  ("Scott","Flowers","6",17,"1986-08-23 ","GOLD"),
  ("Chaim","Booker","5",19,"1981-01-17 ","CLASSIC"),
  ("Bruno","Craig","5",15,"1986-09-01 ","BLACK"),
  ("Tashya","Hooper","K",13,"1986-10-26 ","GOLD"),
  ("Macaulay","Quinn","2",19,"1986-06-27 ","CLASSIC"),
  ("George","Sharpe","K",6,"1981-02-19 ","BLACK"),
  ("Tatyana","Potts","4",2,"1981-02-17 ","GOLD"),
  ("Coby","Davenport","0",9,"1986-09-02 ","CLASSIC"),
  ("Isaac","Rocha","6",1,"1986-11-27 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("John","Bryan","8",13,"1986-05-06 ","GOLD"),
  ("Cassandra","Daniels","4",18,"1986-05-18 ","CLASSIC"),
  ("Ashton","Baker","8",19,"1981-07-15 ","BLACK"),
  ("Leilani","Barron","5",16,"1986-08-16 ","GOLD"),
  ("Martha","Clemons","5",4,"1981-07-23 ","CLASSIC"),
  ("Jocelyn","Newman","6",2,"1986-07-13 ","BLACK"),
  ("Flynn","Willis","2",16,"1986-12-12 ","GOLD"),
  ("Wallace","Bryant","0",19,"1986-01-09 ","CLASSIC"),
  ("Dora","Schmidt","9",19,"1986-05-13 ","BLACK"),
  ("Alexandra","William","6",19,"1981-07-19 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Hanae","Sherman","0",4,"1986-08-30 ","CLASSIC"),
  ("Isaac","Frazier","K",14,"1986-06-18 ","BLACK"),
  ("Abra","Whitney","0",13,"1986-05-06 ","GOLD"),
  ("Hope","Goff","5",13,"1986-05-04 ","CLASSIC"),
  ("Elliott","Alston","3",17,"1986-07-17 ","BLACK"),
  ("Lavinia","Moss","4",3,"1986-10-18 ","GOLD"),
  ("Zahir","Goodwin","6",2,"1986-01-11 ","CLASSIC"),
  ("Alexandra","Beach","5",13,"1986-10-02 ","BLACK"),
  ("Alisa","Moss","3",10,"1986-11-17 ","GOLD"),
  ("Olivia","Colon","9",10,"1986-07-15 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Xandra","Avila","2",5,"1986-10-30 ","BLACK"),
  ("Stone","Tucker","1",7,"1986-11-08 ","GOLD"),
  ("Davis","Hansen","2",12,"1986-12-15 ","CLASSIC"),
  ("Donovan","Park","K",12,"1981-02-28 ","BLACK"),
  ("Kennedy","Keith","2",13,"1986-12-24 ","GOLD"),
  ("Karen","Tanner","1",14,"1981-03-19 ","CLASSIC"),
  ("Joshua","Johns","5",8,"1986-02-20 ","BLACK"),
  ("Brandon","Marshall","8",19,"1986-09-30 ","GOLD"),
  ("Daryl","Kirk","0",11,"1986-08-23 ","CLASSIC"),
  ("Amena","Hartman","4",19,"1986-02-13 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Arthur","Rocha","4",14,"1986-07-10 ","GOLD"),
  ("Jeanette","Hess","K",7,"1986-06-19 ","CLASSIC"),
  ("Evan","Baker","3",1,"1986-11-18 ","BLACK"),
  ("Darius","Cooke","6",11,"1986-09-27 ","GOLD"),
  ("Hayfa","Mcguire","4",17,"1986-08-18 ","CLASSIC"),
  ("Jakeem","Roberts","9",14,"1981-01-25 ","BLACK"),
  ("Nyssa","Le","5",1,"1986-12-22 ","GOLD"),
  ("Keaton","Hudson","7",4,"1986-12-23 ","CLASSIC"),
  ("Quinn","Fleming","1",10,"1986-07-21 ","BLACK"),
  ("Ira","Knox","8",18,"1981-03-30 ","GOLD");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Clare","Goff","5",16,"1986-08-18 ","CLASSIC"),
  ("Doris","Keller","1",0,"1986-04-03 ","BLACK"),
  ("Isaac","Fry","2",10,"1986-01-21 ","GOLD"),
  ("Caesar","Woodward","3",6,"1986-12-22 ","CLASSIC"),
  ("Vivian","Oliver","9",17,"1986-06-10 ","BLACK"),
  ("Linda","Johns","5",9,"1986-09-29 ","GOLD"),
  ("Hamish","Jacobson","3",4,"1986-03-04 ","CLASSIC"),
  ("Geoffrey","Austin","6",9,"1981-01-28 ","BLACK"),
  ("Reagan","English","9",7,"1981-05-26 ","GOLD"),
  ("Galena","Dalton","6",13,"1986-11-29 ","CLASSIC");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Olga","Browning","5",2,"1986-02-24 ","BLACK"),
  ("Kelly","Wise","1",18,"1986-01-15 ","GOLD"),
  ("Henry","English","7",12,"1981-07-01 ","CLASSIC"),
  ("Wade","Beach","1",2,"1981-01-31 ","BLACK"),
  ("Latifah","Ellison","1",17,"1981-05-26 ","GOLD"),
  ("Jescie","Joyce","1",8,"1986-08-08 ","CLASSIC"),
  ("Bertha","Torres","3",15,"1986-08-04 ","BLACK"),
  ("Sawyer","Alexander","8",8,"1986-12-01 ","GOLD"),
  ("Alexis","Espinoza","3",14,"1986-12-03 ","CLASSIC"),
  ("Britanni","Hendrix","K",20,"1981-02-06 ","BLACK");
INSERT INTO `cliente` (`customer_name`,`customer_surname`,`customer_DNI`,`branch_id`,`dob`,`tipo_cliente`)
VALUES
  ("Justine","Johnston","K",3,"1981-02-14 ","GOLD"),
  ("Matthew","Clemons","3",1,"1986-08-19 ","CLASSIC"),
  ("Fitzgerald","Mckay","4",11,"1986-11-02 ","BLACK"),
  ("Kessie","Ramirez","0",20,"1981-06-02 ","GOLD"),
  ("Hiram","Hendricks","7",3,"1986-09-17 ","CLASSIC"),
  ("Neve","Hyde","3",3,"1986-03-03 ","BLACK"),
  ("Ronan","Meadows","1",18,"1981-08-01 ","GOLD"),
  ("Reed","Horn","3",3,"1981-03-31 ","CLASSIC"),
  ("Orli","Lucas","5",2,"1986-05-18 ","BLACK"),
  ("Medge","Ortiz","2",15,"1986-10-04 ","GOLD");
