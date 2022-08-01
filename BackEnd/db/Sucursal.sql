DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE IF NOT EXISTS sucursal(
branch_id INTEGER NOT NULL,
branch_name char(50) NOT NULL,
branch_adress varchar(255) NOT NULL,
FOREIGN KEY (branch_adress) references direcciones (branch_adress)  
);

INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (16,"Catalunya","274-1571 Ultrices, St."),
  (10,"Euskadi","Ap #438-8093 Velit. Avenue"),
  (19,"Madrid","Ap #271-7778 Quisque St."),
  (2,"Euskadi","Ap #584-4225 Aliquet Rd."),
  (2,"Navarra","113-2604 Nulla. Avenue"),
  (0,"La Rioja","758 Quam. Avenue"),
  (16,"Melilla","625-4171 Nec Av."),
  (9,"Melilla","906-9039 Odio St."),
  (8,"Cantabria","335-5242 Mi Ave"),
  (17,"Castilla y León","4539 A Rd.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (5,"Principado de Asturias","P.O. Box 726, 4380 Aenean Rd."),
  (2,"Murcia","867-4228 Quisque Road"),
  (10,"Navarra","Ap #807-6237 Donec Rd."),
  (5,"Melilla","777-1977 Sapien Av."),
  (6,"Cantabria","8948 Sit Av."),
  (12,"La Rioja","Ap #958-3685 Nulla St."),
  (11,"Cantabria","916-547 Morbi Av."),
  (7,"Castilla - La Mancha","P.O. Box 409, 9861 Ac Avenue"),
  (8,"Aragón","650-1983 Tempus Rd."),
  (1,"La Rioja","365-1954 Imperdiet Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (1,"Madrid","816-7912 Mollis. Ave"),
  (9,"Illes Balears","Ap #336-3042 A Rd."),
  (14,"Andalucía","P.O. Box 590, 4008 Erat, Street"),
  (6,"Castilla y León","P.O. Box 844, 3114 Est Street"),
  (4,"Madrid","293 Urna Rd."),
  (14,"Ceuta","P.O. Box 709, 9403 Natoque Road"),
  (3,"Catalunya","455-1049 Faucibus Rd."),
  (8,"Cantabria","986-9440 Penatibus Rd."),
  (15,"Catalunya","P.O. Box 124, 7389 Velit Avenue"),
  (14,"Murcia","3345 Mi Ave");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (14,"Principado de Asturias","Ap #825-3617 At Street"),
  (2,"Madrid","5882 Vestibulum Road"),
  (12,"Ceuta","855-3498 Nullam St."),
  (7,"Melilla","906-756 Nulla St."),
  (15,"Murcia","Ap #596-4827 Sed St."),
  (18,"Andalucía","Ap #190-7398 Sagittis. Avenue"),
  (0,"Aragón","Ap #893-3593 Congue Road"),
  (8,"Castilla y León","424-3384 Congue. Av."),
  (17,"Catalunya","289-6708 Aliquet, Street"),
  (9,"Catalunya","756-7688 Pretium St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (1,"Castilla - La Mancha","8227 Montes, Av."),
  (13,"Melilla","Ap #590-6873 Lectus Ave"),
  (18,"Catalunya","684-8158 Aenean Avenue"),
  (11,"Galicia","492-791 Neque Street"),
  (12,"Andalucía","Ap #729-1000 A Avenue"),
  (10,"Castilla - La Mancha","Ap #696-2878 Elit Road"),
  (9,"Castilla - La Mancha","Ap #720-7892 Praesent St."),
  (18,"Castilla y León","347-7146 Vitae Rd."),
  (16,"Melilla","P.O. Box 819, 1227 Cubilia Road"),
  (14,"Galicia","652-9008 Netus Street");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (7,"Navarra","P.O. Box 432, 8417 Non, Avenue"),
  (18,"Ceuta","P.O. Box 174, 8010 Curabitur Ave"),
  (4,"Cantabria","102-5172 Tellus Rd."),
  (4,"Castilla y León","Ap #358-1042 Mauris St."),
  (15,"Canarias","392-348 Pellentesque Ave"),
  (5,"Canarias","521 Nunc Street"),
  (9,"Ceuta","539-5364 Sit Avenue"),
  (19,"Ceuta","Ap #218-8422 Lorem, St."),
  (10,"Murcia","P.O. Box 701, 2774 Lacus. Road"),
  (8,"Castilla - La Mancha","Ap #508-2129 Parturient St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (2,"Comunitat Valenciana","Ap #505-6785 Blandit Rd."),
  (3,"Comunitat Valenciana","Ap #923-978 Mattis Rd."),
  (13,"Madrid","853-100 Felis Av."),
  (0,"Andalucía","9558 Varius Avenue"),
  (6,"La Rioja","726-9782 Accumsan Av."),
  (13,"Comunitat Valenciana","6505 Mauris, Avenue"),
  (7,"Principado de Asturias","228-172 Adipiscing Road"),
  (13,"Comunitat Valenciana","Ap #982-4438 Ultrices Ave"),
  (18,"Catalunya","295-6809 Ligula Road"),
  (11,"La Rioja","Ap #468-9254 Mus. Road");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (16,"Galicia","Ap #737-5883 Scelerisque Rd."),
  (0,"Canarias","Ap #755-4580 Eget Ave"),
  (20,"Murcia","382-1938 Sit St."),
  (19,"La Rioja","485-7106 In Ave"),
  (16,"Castilla y León","Ap #848-7093 Orci. Rd."),
  (6,"Comunitat Valenciana","P.O. Box 567, 4525 Posuere Street"),
  (19,"Extremadura","Ap #519-9574 Pellentesque Av."),
  (6,"Ceuta","Ap #842-7360 Tincidunt Rd."),
  (9,"Murcia","Ap #687-8906 Diam. Av."),
  (11,"Madrid","928-8577 Pede Road");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (13,"Galicia","Ap #215-5090 Felis St."),
  (2,"Comunitat Valenciana","8607 Tortor. Road"),
  (8,"Navarra","4021 Ante Road"),
  (8,"Canarias","1123 Vestibulum Ave"),
  (20,"La Rioja","Ap #883-218 Placerat. Street"),
  (3,"Principado de Asturias","Ap #931-660 Dictum. Avenue"),
  (3,"Andalucía","890-2484 Eleifend, Street"),
  (1,"Castilla y León","Ap #526-8242 Et Street"),
  (17,"Castilla y León","508-4904 Pellentesque St."),
  (14,"Andalucía","3298 Malesuada. Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (6,"Castilla - La Mancha","Ap #402-3518 Lectus Ave"),
  (9,"Castilla - La Mancha","Ap #342-1927 Arcu. Rd."),
  (3,"Comunitat Valenciana","1680 Pellentesque Ave"),
  (7,"Castilla - La Mancha","Ap #554-6593 Interdum. Av."),
  (14,"Madrid","P.O. Box 154, 5072 Sem Av."),
  (15,"Madrid","717-6506 Malesuada Ave"),
  (3,"Navarra","667-7607 Cras Av."),
  (12,"Navarra","644-1284 Augue Rd."),
  (17,"Aragón","Ap #365-2189 Nunc Road"),
  (20,"Castilla y León","Ap #821-8169 Aliquet. Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (2,"Castilla - La Mancha","Ap #670-8917 Aenean Street"),
  (14,"Comunitat Valenciana","300-5699 Metus St."),
  (10,"Castilla y León","Ap #646-8515 Risus. Avenue"),
  (4,"Illes Balears","995-4998 Erat Street"),
  (18,"Melilla","766-7327 Est, Av."),
  (12,"Galicia","6994 Primis St."),
  (16,"Murcia","834-898 Ac Av."),
  (4,"Extremadura","Ap #595-3730 Tempor Rd."),
  (3,"Castilla y León","454 Velit Road"),
  (5,"Castilla - La Mancha","Ap #828-7672 Id, Street");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (15,"Canarias","949-6787 Turpis Street"),
  (1,"Catalunya","Ap #675-8616 Habitant Avenue"),
  (10,"Madrid","964-909 Libero Rd."),
  (12,"Ceuta","Ap #546-2839 Ante Avenue"),
  (1,"Murcia","336-5331 Ultricies Rd."),
  (18,"Canarias","295-3065 Odio Ave"),
  (17,"Principado de Asturias","221-9669 Dolor Av."),
  (17,"Cantabria","4899 Erat St."),
  (18,"Andalucía","Ap #623-7771 Magna, Rd."),
  (17,"Melilla","447-7991 In Ave");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (2,"La Rioja","P.O. Box 803, 2294 Sodales. Avenue"),
  (7,"Euskadi","P.O. Box 343, 6272 A, Street"),
  (8,"Catalunya","Ap #307-871 Quam Rd."),
  (0,"Euskadi","2377 Donec Avenue"),
  (17,"Euskadi","397-7264 Tincidunt Rd."),
  (11,"Ceuta","1850 Ut Rd."),
  (4,"Navarra","5681 Mauris Rd."),
  (4,"Galicia","5722 Viverra. Road"),
  (0,"Castilla y León","P.O. Box 114, 3219 Magna Avenue"),
  (4,"Galicia","6700 Est Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (6,"Canarias","601-7814 Posuere St."),
  (9,"Galicia","Ap #843-9751 Natoque Avenue"),
  (19,"Comunitat Valenciana","5106 Tellus St."),
  (12,"Illes Balears","Ap #185-2493 Fringilla Av."),
  (15,"Andalucía","787-4662 Orci Rd."),
  (16,"Galicia","Ap #863-9681 Dis Street"),
  (9,"Navarra","154-7782 Quis Rd."),
  (20,"Ceuta","Ap #330-5338 Vestibulum St."),
  (8,"Murcia","Ap #589-4328 Ultrices Av."),
  (9,"Principado de Asturias","9340 Laoreet, Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (15,"Illes Balears","Ap #650-531 Eleifend Road"),
  (1,"Principado de Asturias","127-4717 Lorem St."),
  (8,"Aragón","Ap #534-3948 Quisque Avenue"),
  (3,"Murcia","830-5139 A St."),
  (18,"Murcia","384-9695 Amet Street"),
  (20,"Castilla y León","P.O. Box 239, 3341 Eget Rd."),
  (12,"Ceuta","Ap #749-8659 Congue. Ave"),
  (14,"Illes Balears","P.O. Box 883, 3032 Penatibus Rd."),
  (10,"Extremadura","Ap #990-9497 Bibendum Road"),
  (13,"Catalunya","9281 Quam, St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (1,"Euskadi","Ap #910-4701 Libero. Rd."),
  (2,"Ceuta","Ap #252-796 Ullamcorper. Rd."),
  (18,"Ceuta","351-4150 Nulla Street"),
  (13,"Canarias","P.O. Box 305, 3097 Malesuada St."),
  (17,"Comunitat Valenciana","330-8038 Dictum Avenue"),
  (12,"Euskadi","P.O. Box 484, 6494 Elementum Road"),
  (15,"Cantabria","9624 Per St."),
  (16,"Ceuta","Ap #477-3350 Augue St."),
  (1,"Galicia","P.O. Box 331, 7165 Elit Av."),
  (2,"Ceuta","496-2720 In Ave");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (17,"Ceuta","156-3025 Nec Street"),
  (10,"Ceuta","153-9121 Rutrum. Avenue"),
  (16,"Cantabria","Ap #480-2197 Nunc St."),
  (9,"Navarra","Ap #474-3581 Erat Rd."),
  (10,"Cantabria","795-8371 Et Rd."),
  (7,"Navarra","Ap #179-8178 Neque Road"),
  (10,"Andalucía","661-6499 Non, Road"),
  (13,"Euskadi","Ap #545-7051 Tellus. St."),
  (16,"Aragón","P.O. Box 159, 8564 Tellus. Rd."),
  (8,"Navarra","7050 Malesuada Rd.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (18,"Castilla y León","P.O. Box 138, 2116 Neque St."),
  (17,"Navarra","6051 Eget, Street"),
  (15,"Castilla - La Mancha","Ap #992-871 Neque Avenue"),
  (12,"Canarias","8051 Justo St."),
  (13,"Navarra","186-9730 Eu Ave"),
  (14,"Melilla","745-3670 Sed St."),
  (15,"Madrid","768-2943 Amet, Road"),
  (1,"Castilla y León","175-1228 Quisque Av."),
  (3,"Canarias","314-7905 Magnis Avenue"),
  (3,"Extremadura","5425 Non, Av.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (8,"Principado de Asturias","194-7256 Mauris Rd."),
  (4,"Canarias","Ap #837-9469 Integer Rd."),
  (2,"Andalucía","P.O. Box 836, 5481 Auctor Rd."),
  (7,"Principado de Asturias","235-4912 Eu Road"),
  (9,"Andalucía","Ap #358-7068 Penatibus Avenue"),
  (17,"Galicia","Ap #387-3115 Malesuada St."),
  (16,"Principado de Asturias","Ap #652-856 Eros. Ave"),
  (3,"Castilla y León","239-3477 Sed Av."),
  (17,"Castilla y León","365-5209 Et St."),
  (19,"La Rioja","1520 Eget St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (2,"Euskadi","P.O. Box 421, 7216 Eu, Ave"),
  (2,"Principado de Asturias","696-5609 Sem. Road"),
  (1,"Catalunya","501-685 Ultricies St."),
  (1,"Ceuta","976-3184 Vel Rd."),
  (12,"Catalunya","6523 Elit, Rd."),
  (11,"Melilla","Ap #744-6452 Lectus Ave"),
  (12,"Illes Balears","Ap #764-8968 Donec Av."),
  (1,"Melilla","9221 Metus. Ave"),
  (18,"Navarra","480-6495 Aliquet Av."),
  (18,"Illes Balears","Ap #225-2216 Pede Av.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (11,"Castilla y León","P.O. Box 442, 7353 Congue, Ave"),
  (15,"Illes Balears","Ap #789-8815 Nec Rd."),
  (2,"Comunitat Valenciana","3679 Enim, Road"),
  (3,"Castilla y León","335 At, Av."),
  (10,"Illes Balears","Ap #695-4051 Neque St."),
  (16,"Castilla - La Mancha","663-3574 Mauris Ave"),
  (1,"Principado de Asturias","Ap #201-995 Nunc Rd."),
  (2,"Galicia","Ap #292-5499 Augue, St."),
  (18,"Melilla","915-241 Tincidunt Rd."),
  (19,"Comunitat Valenciana","Ap #698-9734 Ipsum. Rd.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (7,"Murcia","P.O. Box 452, 8698 Diam Ave"),
  (9,"Catalunya","Ap #431-9666 Vehicula Rd."),
  (18,"Aragón","9729 Tincidunt, St."),
  (4,"Madrid","Ap #739-6905 Eu, Street"),
  (15,"Comunitat Valenciana","9408 Tristique Rd."),
  (5,"Madrid","916-3510 Lorem Street"),
  (2,"Castilla y León","643-3548 Dolor St."),
  (11,"Comunitat Valenciana","P.O. Box 171, 2396 In, St."),
  (12,"Euskadi","Ap #106-9480 Lorem Road"),
  (18,"Andalucía","984-3115 Nisi Av.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (9,"Aragón","P.O. Box 357, 2960 Vel Rd."),
  (16,"Madrid","7889 Conubia St."),
  (2,"Andalucía","Ap #598-2275 Dui Avenue"),
  (20,"Catalunya","149-3409 Ipsum. Av."),
  (10,"Murcia","P.O. Box 800, 3648 Nisl Rd."),
  (8,"Euskadi","4532 Proin Rd."),
  (15,"Melilla","176-5638 Turpis St."),
  (10,"Murcia","P.O. Box 831, 3429 Vel, Rd."),
  (17,"Murcia","Ap #986-8502 Neque. St."),
  (6,"Aragón","6346 Cras Road");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (12,"Andalucía","Ap #455-9578 Diam Ave"),
  (11,"Comunitat Valenciana","264-474 Nec Av."),
  (14,"La Rioja","392-3266 Est Rd."),
  (11,"Galicia","906-7100 Luctus Rd."),
  (14,"Cantabria","360-2195 Ipsum Avenue"),
  (12,"Ceuta","Ap #578-5191 In Rd."),
  (17,"Andalucía","Ap #395-8097 Molestie St."),
  (1,"Galicia","708-3069 Tellus. Road"),
  (11,"Castilla - La Mancha","346-4530 Dictum Rd."),
  (17,"Euskadi","Ap #533-5496 Auctor Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (0,"Castilla y León","791-8108 Lorem Rd."),
  (7,"Castilla - La Mancha","Ap #712-5593 Massa. Street"),
  (3,"Madrid","P.O. Box 454, 5548 Egestas. Rd."),
  (17,"Castilla - La Mancha","P.O. Box 434, 8180 Arcu Av."),
  (2,"Cantabria","Ap #251-3876 Nec Av."),
  (12,"Madrid","P.O. Box 685, 5130 Natoque St."),
  (17,"La Rioja","Ap #355-6933 Sem St."),
  (3,"Canarias","Ap #165-5765 Pharetra. Av."),
  (12,"Andalucía","P.O. Box 197, 323 Eu Street"),
  (12,"Andalucía","P.O. Box 388, 3827 Donec Street");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (15,"La Rioja","Ap #912-4902 Sed Av."),
  (9,"Madrid","Ap #386-7969 Risus. Avenue"),
  (3,"Galicia","P.O. Box 398, 3127 Taciti St."),
  (13,"Murcia","Ap #417-1504 Sapien Street"),
  (10,"Ceuta","Ap #672-5821 Lacus. St."),
  (14,"Euskadi","383-1961 Fringilla Street"),
  (5,"Galicia","498-4647 Interdum. Ave"),
  (10,"Illes Balears","Ap #731-1736 Orci, Ave"),
  (2,"Aragón","284-8221 Semper Street"),
  (15,"Castilla - La Mancha","142-2978 Nec St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (8,"Castilla y León","1882 Ligula. Rd."),
  (5,"Murcia","Ap #949-8463 Et St."),
  (18,"Murcia","Ap #593-2874 In Ave"),
  (10,"Aragón","P.O. Box 680, 1572 Consectetuer Av."),
  (13,"Catalunya","4341 Consequat Road"),
  (2,"La Rioja","Ap #696-5312 Mauris Avenue"),
  (7,"Navarra","Ap #229-4820 Interdum. Avenue"),
  (6,"Melilla","Ap #111-2644 Lectus Avenue"),
  (3,"Catalunya","Ap #879-3265 In St."),
  (19,"Extremadura","689-2625 Tellus. Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (15,"Cantabria","Ap #635-6136 Sociis Ave"),
  (20,"Castilla - La Mancha","9340 Lobortis St."),
  (8,"Andalucía","P.O. Box 594, 1599 Aliquam St."),
  (15,"Navarra","Ap #244-4834 Neque. Ave"),
  (2,"Aragón","144-5504 Mollis Avenue"),
  (10,"Cantabria","Ap #686-4449 Lacus. Avenue"),
  (3,"Madrid","8784 Et St."),
  (16,"Andalucía","470-710 Curabitur Ave"),
  (12,"Cantabria","841 Ante Avenue"),
  (14,"Illes Balears","1864 Ullamcorper. St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (19,"Principado de Asturias","Ap #449-1488 Ut Rd."),
  (7,"Ceuta","784-1497 Nec Av."),
  (2,"Cantabria","P.O. Box 853, 5066 A, Road"),
  (10,"Extremadura","Ap #534-9029 Nibh. Av."),
  (9,"Principado de Asturias","Ap #320-5210 Eu, Street"),
  (7,"Cantabria","7776 Pede. St."),
  (18,"Aragón","Ap #469-4082 Suspendisse Avenue"),
  (10,"Catalunya","Ap #146-166 Mi Ave"),
  (7,"Illes Balears","Ap #605-1978 Diam Av."),
  (7,"Madrid","Ap #261-4420 Lorem Street");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (14,"Castilla y León","209 Nulla Av."),
  (5,"Madrid","Ap #390-6805 Urna St."),
  (2,"Castilla - La Mancha","P.O. Box 557, 6065 Neque. Rd."),
  (1,"Euskadi","5380 Facilisis. Rd."),
  (7,"Catalunya","1034 Sit Ave"),
  (18,"Galicia","Ap #714-5881 Tempor Ave"),
  (12,"Melilla","Ap #753-3331 Penatibus Street"),
  (20,"Extremadura","P.O. Box 337, 4286 Accumsan Av."),
  (2,"Navarra","4523 Gravida. Av."),
  (10,"Castilla y León","906-8636 Sagittis. Street");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (15,"Castilla - La Mancha","9386 Lorem St."),
  (11,"Castilla - La Mancha","Ap #558-5375 Et Av."),
  (11,"Castilla y León","327-1641 Elit Road"),
  (18,"Castilla - La Mancha","Ap #527-8506 Nullam Street"),
  (7,"Madrid","Ap #713-6422 Aenean Rd."),
  (2,"Ceuta","270-3745 Egestas Rd."),
  (7,"Navarra","626-2017 Arcu. St."),
  (19,"Euskadi","P.O. Box 182, 5513 At, Rd."),
  (13,"Castilla - La Mancha","578-9534 Et St."),
  (2,"Galicia","Ap #244-5748 Morbi St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (13,"Principado de Asturias","1019 Vitae St."),
  (10,"Castilla - La Mancha","895-3384 Ornare, Street"),
  (12,"Madrid","Ap #691-5180 Sed Avenue"),
  (9,"Melilla","356-6438 Sit St."),
  (17,"Melilla","Ap #473-816 Cubilia Avenue"),
  (0,"Extremadura","377-5431 Velit. Av."),
  (4,"Extremadura","2946 Malesuada Ave"),
  (5,"Navarra","P.O. Box 634, 1514 Ridiculus Rd."),
  (12,"Euskadi","3635 Mauris, Rd."),
  (1,"Castilla y León","P.O. Box 759, 7009 Curae Av.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (2,"Murcia","738 Elit St."),
  (18,"La Rioja","Ap #233-5782 Aenean Ave"),
  (5,"Castilla y León","216-3662 Risus. St."),
  (14,"Canarias","Ap #431-8410 Phasellus Rd."),
  (11,"Melilla","P.O. Box 610, 7699 Nullam St."),
  (9,"Andalucía","921-9559 Dolor Ave"),
  (13,"Aragón","Ap #966-9901 Dolor Rd."),
  (1,"Principado de Asturias","769-6786 Torquent St."),
  (13,"Canarias","624-7291 Ligula. Road"),
  (10,"Murcia","Ap #150-3311 Donec Ave");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (5,"Castilla y León","597-9227 Imperdiet, Av."),
  (8,"Aragón","583-5805 Diam Ave"),
  (17,"Melilla","742-4644 Mi Street"),
  (10,"Extremadura","Ap #958-1609 Non, Rd."),
  (0,"La Rioja","7070 In, Ave"),
  (8,"Ceuta","Ap #283-2602 Sed Street"),
  (15,"Catalunya","P.O. Box 919, 7905 Ut Road"),
  (11,"Castilla - La Mancha","P.O. Box 256, 7378 Sed St."),
  (16,"Galicia","Ap #140-8742 Lectus Road"),
  (15,"Castilla y León","2817 Dictum St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (19,"Cantabria","Ap #359-593 Posuere Ave"),
  (12,"Navarra","2147 Tempus, St."),
  (6,"Euskadi","992-4641 Egestas, St."),
  (6,"Ceuta","Ap #618-8698 Venenatis Av."),
  (6,"Principado de Asturias","5470 Ante Rd."),
  (16,"Murcia","5892 Penatibus Street"),
  (11,"La Rioja","Ap #348-898 Eget Rd."),
  (15,"Castilla y León","416-6850 Tristique Street"),
  (4,"Extremadura","P.O. Box 556, 4601 Vivamus Road"),
  (1,"Castilla y León","P.O. Box 412, 5631 Faucibus Rd.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (10,"Catalunya","Ap #399-5079 Porta Avenue"),
  (15,"Madrid","Ap #234-9946 Sagittis. Av."),
  (12,"La Rioja","Ap #958-7579 Donec Rd."),
  (17,"Principado de Asturias","Ap #821-4107 Risus. Avenue"),
  (0,"Ceuta","P.O. Box 927, 1970 Feugiat Ave"),
  (6,"Cantabria","P.O. Box 170, 9219 Malesuada Avenue"),
  (18,"Andalucía","686-6515 Dapibus Av."),
  (4,"Cantabria","P.O. Box 921, 8491 Tristique Road"),
  (10,"Illes Balears","Ap #368-969 Nec Road"),
  (18,"Andalucía","P.O. Box 877, 3748 Aliquet, Road");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (0,"La Rioja","P.O. Box 135, 8570 Sed Road"),
  (16,"Andalucía","P.O. Box 131, 4209 Ac Rd."),
  (10,"Melilla","Ap #403-3553 Vulputate Street"),
  (18,"Andalucía","P.O. Box 695, 2645 Libero Road"),
  (12,"La Rioja","P.O. Box 373, 2663 Vivamus Road"),
  (3,"Murcia","319-1306 Sed Avenue"),
  (6,"Madrid","P.O. Box 152, 1088 Ridiculus Avenue"),
  (10,"Melilla","P.O. Box 162, 8810 Integer Avenue"),
  (12,"Ceuta","1867 Eget Road"),
  (4,"Illes Balears","3265 Urna, Street");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (1,"Castilla - La Mancha","748-8454 Sed Rd."),
  (8,"La Rioja","699 Sagittis. Ave"),
  (1,"Comunitat Valenciana","494-6208 Cras Av."),
  (5,"Catalunya","Ap #675-4550 Leo. St."),
  (8,"Extremadura","4932 Purus, St."),
  (9,"Castilla - La Mancha","Ap #846-6487 Sit Av."),
  (6,"Castilla - La Mancha","658-4076 Nunc Street"),
  (13,"Principado de Asturias","Ap #874-2258 Pellentesque St."),
  (19,"Catalunya","101-4563 Nulla Street"),
  (3,"Euskadi","Ap #490-2139 Quis Rd.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (20,"La Rioja","Ap #742-7786 Mauris Road"),
  (3,"Comunitat Valenciana","Ap #782-9588 Senectus Rd."),
  (6,"Aragón","5249 Cursus St."),
  (13,"Ceuta","Ap #227-446 Aliquet St."),
  (14,"Comunitat Valenciana","Ap #918-4285 Velit. Rd."),
  (14,"Ceuta","109-8365 Phasellus Av."),
  (5,"Cantabria","Ap #114-5373 Lectus Street"),
  (13,"Castilla y León","Ap #369-8390 Arcu. Street"),
  (11,"Euskadi","Ap #693-2508 Non Rd."),
  (15,"Catalunya","Ap #593-5187 Augue. Ave");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (3,"Aragón","Ap #106-5181 Duis Avenue"),
  (8,"Castilla y León","665-7647 Sed St."),
  (3,"Galicia","P.O. Box 237, 5409 Donec St."),
  (6,"Comunitat Valenciana","Ap #853-7452 Non, Avenue"),
  (1,"Comunitat Valenciana","596-9480 Non, Av."),
  (10,"Catalunya","P.O. Box 126, 7550 Vitae Rd."),
  (12,"Melilla","Ap #985-5639 Felis Road"),
  (11,"Extremadura","Ap #605-1397 Quis Avenue"),
  (16,"Euskadi","812-3105 Interdum Avenue"),
  (9,"Principado de Asturias","Ap #885-1628 Aliquam Road");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (13,"Ceuta","7556 Mus. Rd."),
  (6,"Melilla","684-8846 Non Avenue"),
  (5,"La Rioja","2237 Fermentum Rd."),
  (13,"La Rioja","Ap #520-7855 Phasellus St."),
  (14,"Illes Balears","843-9860 Magna St."),
  (13,"Murcia","3560 Enim Avenue"),
  (15,"Navarra","Ap #895-1212 Enim. Street"),
  (1,"Catalunya","Ap #383-2988 Laoreet St."),
  (12,"Canarias","221-5565 Diam. St."),
  (3,"Andalucía","Ap #329-5627 Phasellus Street");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (1,"Principado de Asturias","Ap #134-6093 Donec St."),
  (5,"Comunitat Valenciana","Ap #715-5466 Mauris Rd."),
  (17,"Comunitat Valenciana","P.O. Box 236, 5942 Convallis Street"),
  (20,"Principado de Asturias","P.O. Box 836, 2600 Consectetuer Rd."),
  (13,"Castilla - La Mancha","232-5241 Egestas. Av."),
  (7,"Ceuta","Ap #477-8035 Phasellus Rd."),
  (8,"Ceuta","1181 Ullamcorper, St."),
  (12,"Castilla y León","Ap #780-644 Metus. St."),
  (6,"Canarias","Ap #761-9229 Ultrices Avenue"),
  (19,"Illes Balears","2483 Sed Road");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (13,"Principado de Asturias","P.O. Box 229, 923 Metus Rd."),
  (10,"Castilla y León","Ap #839-2351 Velit Rd."),
  (9,"Aragón","Ap #396-5796 Penatibus St."),
  (8,"Canarias","556-2841 Mi St."),
  (3,"Extremadura","590-2282 Lorem, St."),
  (9,"Catalunya","171-9382 Laoreet Av."),
  (13,"Canarias","765-2225 Dictum St."),
  (2,"Navarra","950-8111 Justo. Av."),
  (8,"Madrid","6906 Nec, Road"),
  (17,"Castilla - La Mancha","557-7888 Metus Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (4,"Canarias","5944 Vitae Ave"),
  (3,"Comunitat Valenciana","P.O. Box 306, 482 Lobortis Rd."),
  (16,"Cantabria","Ap #739-5640 Facilisis Rd."),
  (3,"Comunitat Valenciana","7227 Faucibus Av."),
  (6,"La Rioja","813-1703 Dolor. Street"),
  (15,"Catalunya","P.O. Box 312, 1487 Amet Street"),
  (16,"Illes Balears","Ap #527-1364 Vestibulum. Av."),
  (12,"Castilla y León","P.O. Box 275, 2156 Morbi Street"),
  (14,"Murcia","P.O. Box 237, 5455 Mollis St."),
  (8,"Principado de Asturias","241-3716 Luctus Street");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (6,"Madrid","626-2317 Ornare. Rd."),
  (18,"Illes Balears","Ap #861-3875 Congue Avenue"),
  (3,"Euskadi","P.O. Box 489, 6911 Arcu. Avenue"),
  (20,"Comunitat Valenciana","211-1206 Pede, Rd."),
  (5,"Ceuta","Ap #537-1736 Convallis Rd."),
  (0,"Extremadura","770-3174 Dis Avenue"),
  (6,"Melilla","588-9200 Bibendum. Road"),
  (18,"Aragón","Ap #512-5816 Cursus Ave"),
  (5,"Navarra","P.O. Box 706, 9255 Lacus, Street"),
  (1,"Comunitat Valenciana","Ap #260-9257 Placerat Av.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (14,"Illes Balears","672 Lorem St."),
  (20,"Murcia","9717 Porttitor Rd."),
  (11,"Castilla - La Mancha","5645 Lacinia Av."),
  (6,"Galicia","P.O. Box 694, 8739 Sit Road"),
  (7,"Cantabria","Ap #739-7653 Vitae Street"),
  (3,"Catalunya","Ap #620-6514 Varius. Av."),
  (11,"Extremadura","1662 Eu Road"),
  (14,"Aragón","Ap #326-2269 Penatibus St."),
  (1,"Aragón","P.O. Box 990, 6107 Sagittis Street"),
  (16,"Canarias","Ap #548-4707 Semper. Ave");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (16,"Ceuta","P.O. Box 673, 3255 Mauris Street"),
  (11,"Andalucía","629-1588 Aliquam St."),
  (0,"Murcia","Ap #372-531 Eu Rd."),
  (4,"Madrid","826-9282 Dolor Rd."),
  (17,"Melilla","119-3762 Mattis. Rd."),
  (15,"Melilla","Ap #890-2207 Duis Road"),
  (13,"Castilla y León","847-5677 Rhoncus Av."),
  (4,"Catalunya","Ap #683-8947 Suspendisse Road"),
  (13,"Castilla y León","481-5131 Felis Road"),
  (13,"Madrid","Ap #955-4774 Nunc Avenue");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (19,"Principado de Asturias","Ap #520-8175 Eros. St."),
  (12,"Melilla","Ap #410-8733 Phasellus Street"),
  (2,"Comunitat Valenciana","180-7527 Mauris Road"),
  (18,"Extremadura","Ap #845-1862 Congue Ave"),
  (6,"Castilla - La Mancha","P.O. Box 506, 2308 Imperdiet Avenue"),
  (7,"Galicia","542-3765 Magna. Rd."),
  (1,"Catalunya","6885 Auctor Road"),
  (10,"Andalucía","627-444 Et Street"),
  (10,"La Rioja","734-1289 Imperdiet Road"),
  (20,"Illes Balears","1709 Metus St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (2,"Illes Balears","Ap #826-9682 Nulla. Road"),
  (18,"Andalucía","P.O. Box 295, 4422 Egestas, Street"),
  (16,"Canarias","P.O. Box 295, 8331 Vitae Rd."),
  (1,"Castilla - La Mancha","Ap #259-2442 Sit Ave"),
  (5,"Ceuta","2479 Et Street"),
  (14,"Principado de Asturias","4419 Ad Rd."),
  (2,"Madrid","Ap #426-9108 Tempus Ave"),
  (20,"Comunitat Valenciana","Ap #609-1866 Morbi St."),
  (18,"Galicia","Ap #719-2618 Tortor, Street"),
  (15,"Principado de Asturias","328-700 Et, St.");
INSERT INTO `sucursal` (`branch_id`,`branch_name`,`branch_adress`)
VALUES
  (1,"Ceuta","Ap #220-1331 Est St."),
  (4,"Ceuta","Ap #706-5638 Enim. Road"),
  (5,"Melilla","1328 Lacinia Av."),
  (17,"La Rioja","Ap #564-9609 Vulputate St."),
  (8,"Principado de Asturias","309-7878 Non, St."),
  (1,"La Rioja","Ap #863-521 Integer St."),
  (12,"Comunitat Valenciana","190-998 Ornare, St."),
  (11,"Navarra","P.O. Box 221, 8202 Erat St."),
  (4,"Cantabria","Ap #217-1210 Integer Rd."),
  (5,"Madrid","342-7693 Enim Road");
