DROP TABLE IF EXISTS `tarjetas`;

CREATE TABLE `tarjetas` (
  `id` INTEGER NOT NULL ,
  `Owner` TEXT NOT NULL,
  `CreditNumber` CHECK(LENGTH(CreditNumber=20)),
  `CVV` INTEGER CHECK(LENGTH(CVV=3)),
  `Expiration` DATE NOT NULL ,
  `Tipo_Tarjeta` TEXT NOT NULL,
  `marca_tarjeta_id` INTEGER NOT NULL,
  PRIMARY KEY (`id`)
  FOREIGN KEY(marca_tarjeta_id) REFERENCES marca_tarjeta(marca_tarjeta_id)
) ;

INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Seth Patton","4539 5728 4113 6888","445","01/08/23","Credito",2),
  ("Risa Stuart","365957752755952","780","05/16/23","Credito",2),
  ("Francis Benton","645 59551 95647 214","773","01/18/23","Credito",2),
  ("Akeem Kidd","589313765345336","315","07/28/23","Credito",2),
  ("Ashton Stokes","63045832335688864","438","10/19/22","Credito",2),
  ("Brody Bradford","6447 5592 7474 5815","132","10/24/21","Credito",2),
  ("Gil Hopkins","484 49626 63465 723","297","03/21/23","Credito",2),
  ("Melanie Lee","490315 48 2646 5658 778","413","11/22/22","Credito",2),
  ("Martha Haynes","644 84325 98231 160","768","01/14/22","Credito",2),
  ("Constance Cole","648434 2845225920","930","06/07/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Julian Greene","677142 27 2714 4254 335","868","03/13/23","Credito",2),
  ("Catherine Cantu","4485 432 14 8255","872","04/04/23","Credito",2),
  ("Alden Hebert","6709242515434826245","278","10/31/22","Credito",2),
  ("Calista Wynn","552 18683 25227 486","207","06/01/22","Credito",2),
  ("Emmanuel Russo","501873824724783324","487","10/10/21","Credito",2),
  ("Brynn Sawyer","647868 6216959790","945","01/26/23","Credito",2),
  ("Hayes Clayton","368213762555330","889","05/29/23","Credito",2),
  ("Shea Deleon","4556 319 85 3165","526","11/20/21","Credito",2),
  ("Bell Key","471 67332 28857 968","164","05/23/23","Credito",2),
  ("Clayton Chase","4936 8491 4326 6756","521","07/23/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Gray William","3014 479755 43234","112","01/03/23","Credito",2),
  ("Drew Hardy","4917752837628252","536","06/03/22","Credito",2),
  ("Winifred Mejia","675917 376875 1776","130","07/09/23","Credito",2),
  ("Donna Strickland","4539451747593","585","03/27/23","Credito",2),
  ("Nadine Malone","3012 599768 32817","383","09/12/21","Credito",2),
  ("Tanek Ashley","512575 263397 7885","445","09/13/22","Credito",2),
  ("Charissa Hansen","670676 923394 2157","423","11/26/21","Credito",2),
  ("Nora Bartlett","4905 8243 8517 7471","241","12/17/22","Credito",2),
  ("Sybil Vance","670674 475375 1460","476","05/28/23","Credito",2),
  ("Carter Wells","3633 352618 25164","643","11/22/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Devin Slater","633468269942596849","754","02/12/23","Credito",2),
  ("Yael Finley","490585 612136 7933","438","09/06/22","Credito",2),
  ("Kareem Jackson","3422 185639 94126","274","01/26/22","Credito",2),
  ("Allistair Strickland","676777 189758 1277","640","10/12/22","Credito",2),
  ("Howard Gardner","670979 72 6754 8215 654","383","05/05/22","Credito",2),
  ("Zenaida Fitzpatrick","5353 8131 8369 7241","992","11/30/22","Credito",2),
  ("Ina Richmond","546728 542936 4956","594","01/01/22","Credito",2),
  ("Ulysses Cleveland","676289 29 8277 6458 270","980","03/18/23","Credito",2),
  ("Xyla Roman","6767 2119 4254 7312","741","10/10/21","Credito",2),
  ("Solomon Burgess","493667575687482232","722","11/19/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Talon Wall","6762 956838 3458","875","12/01/21","Credito",2),
  ("Armando Waters","304444344333212","260","06/15/22","Credito",2),
  ("Amela Leach","5176 4236 5476 3665","707","08/06/21","Credito",2),
  ("Lillith Wallace","670967 44 7791 9645 458","261","06/19/23","Credito",2),
  ("Rigel William","4175009247439458","536","05/24/22","Credito",2),
  ("Carolyn Conway","633429 44 2523 6738 818","851","02/26/22","Credito",2),
  ("Martina Barlow","675 94536 85569 224","211","06/03/22","Credito",2),
  ("Magee Estrada","3057 213332 89169","368","07/26/23","Credito",2),
  ("Thor Riley","633497 4322768782","156","10/16/22","Credito",2),
  ("Eagan Combs","6011 9338 1894 5643","260","02/03/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Nehru England","6333379638556787658","616","08/19/21","Credito",2),
  ("Ariel Elliott","490537 89 4896 6473 237","658","10/14/22","Credito",2),
  ("Isaiah Jennings","471683 693325 3546","214","05/26/23","Credito",2),
  ("Neville Mckay","526 16367 93145 280","261","06/18/23","Credito",2),
  ("Daquan Matthews","5018187693361486581","235","02/27/23","Credito",2),
  ("Melvin Day","214948673856757","296","04/06/22","Credito",2),
  ("Kameko Moran","300965564733891","545","11/09/21","Credito",2),
  ("Germane Bradshaw","363243353225931","486","08/25/22","Credito",2),
  ("Hedley Spears","644 22584 44793 681","501","05/13/22","Credito",2),
  ("Tucker Berger","493655 2141634542","274","10/18/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Yoshio Gomez","349884727847576","238","06/15/23","Credito",2),
  ("Lee Salas","3052 383455 54167","522","10/06/21","Credito",2),
  ("Rhoda Lancaster","67623998516464","820","11/06/21","Credito",2),
  ("Clare Taylor","492967 398332 2837","497","01/13/23","Credito",2),
  ("Leila Black","453 27523 48442 461","651","08/29/21","Credito",2),
  ("Chastity Lane","484 42876 59874 682","600","04/29/23","Credito",2),
  ("Vaughan Carroll","448517 4694635498","966","04/24/22","Credito",2),
  ("Destiny Hardin","646784 836941 6738","580","06/27/22","Credito",2),
  ("Ina Guerrero","633413 26 6479 8214 919","609","07/10/23","Credito",2),
  ("Stone Holt","417500 649147 8414","177","04/27/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Linda Juarez","368455545558525","405","06/15/23","Credito",2),
  ("Kiara Fulton","3013 754878 58719","592","06/11/22","Credito",2),
  ("Octavia Cross","676751236746176420","187","11/08/21","Credito",2),
  ("Grant Bentley","201438421242653","541","08/13/22","Credito",2),
  ("Juliet Long","361644525228145","220","12/21/22","Credito",2),
  ("Simon House","646473 571935 3161","778","05/02/22","Credito",2),
  ("Nichole Jennings","6767 8547 4483 3263","533","11/30/21","Credito",2),
  ("Alika Carver","670655 234256 7952","936","01/03/23","Credito",2),
  ("Gil Mayo","555 44859 18738 868","593","07/10/23","Credito",2),
  ("Nathan Pate","670984 7378267874","431","09/21/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Jackson Lane","4905853962642227382","335","08/19/21","Credito",2),
  ("Hiram Richard","56865514145325","833","07/17/22","Credito",2),
  ("Kelsie Jones","4929236454699388","712","08/30/22","Credito",2),
  ("Shaine Stuart","214938158415922","131","09/13/22","Credito",2),
  ("Belle Conway","214934846356552","565","03/17/23","Credito",2),
  ("David Welch","6767 8387 5572 2861","683","04/04/22","Credito",2),
  ("May Holland","633321262215198432","664","06/21/22","Credito",2),
  ("Brent Beard","4532677146260","951","03/01/22","Credito",2),
  ("Skyler Morgan","6762874772458376698","653","03/08/23","Credito",2),
  ("Amery Burke","5038126778467141","803","01/14/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Norman Richards","646 58763 64153 230","523","05/02/22","Credito",2),
  ("Kaye Woodard","4929 486 68 5571","570","04/08/23","Credito",2),
  ("Len Benjamin","303278786871698","312","08/23/22","Credito",2),
  ("Quamar Harrington","559 86687 33642 732","555","06/01/22","Credito",2),
  ("Vivian Hanson","366466854219114","796","12/22/22","Credito",2),
  ("Tarik Craig","5545 8736 1627 5741","743","07/16/23","Credito",2),
  ("Natalie Talley","6771285843824362","669","10/20/21","Credito",2),
  ("Ariana O'donnell","536635 3868658742","921","04/06/23","Credito",2),
  ("Philip Frost","670 92227 75487 626","256","12/19/21","Credito",2),
  ("Armando Sampson","555869 4234352462","818","10/10/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Holmes Erickson","677115714339856342","545","09/03/22","Credito",2),
  ("Regan Orr","3043 228998 34646","870","01/12/22","Credito",2),
  ("Acton Hall","201458459755244","198","04/15/22","Credito",2),
  ("Kai Tyler","633349 47 8862 6877 854","672","01/02/23","Credito",2),
  ("Faith Vance","670645 35 9763 2227 392","454","12/19/21","Credito",2),
  ("Morgan Pitts","366352322118627","646","07/23/23","Credito",2),
  ("Natalie Carter","4175002531873540","743","10/11/21","Credito",2),
  ("Brandon Salazar","6761 837733 27336","162","01/20/22","Credito",2),
  ("Georgia Sellers","343811632282215","128","05/22/23","Credito",2),
  ("Idona Wells","676775 2268484150","702","05/27/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Harper Alvarado","3014 613486 58561","569","04/07/23","Credito",2),
  ("Ruby Delgado","373839515354234","238","09/18/21","Credito",2),
  ("Davis Sears","3035 129945 59426","299","07/25/23","Credito",2),
  ("Yolanda Dillard","676133229777493","575","10/05/22","Credito",2),
  ("Justine Frye","3753 347647 22693","517","01/09/22","Credito",2),
  ("Lionel Castillo","490555374726845596","550","12/20/21","Credito",2),
  ("Jerry Fulton","6767166833828439","381","10/09/21","Credito",2),
  ("Lars Andrews","346646772729576","416","11/18/21","Credito",2),
  ("Tanya Lewis","365356119635876","288","05/04/23","Credito",2),
  ("Thaddeus May","374883173635772","753","02/18/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Fritz Bond","630 46556 11256 359","405","11/25/22","Credito",2),
  ("Rose Oneil","3668 958264 77980","333","04/20/23","Credito",2),
  ("Kaye Gibson","645845 682272 7674","486","05/26/22","Credito",2),
  ("Colton Gardner","3005 179844 12570","234","01/31/22","Credito",2),
  ("Keefe Waters","6709 3284 9865 2485","152","09/07/22","Credito",2),
  ("Neve Barnes","676725956856387367","574","04/11/23","Credito",2),
  ("Jonas Wise","491181 5787362671","980","10/03/21","Credito",2),
  ("Benedict Nicholson","492 97555 88383 759","177","02/09/22","Credito",2),
  ("Naomi Bender","676741 4262882588","932","05/18/23","Credito",2),
  ("Grant James","3049 333855 38630","832","09/20/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Brittany Ramirez","214962857813286","581","01/17/23","Credito",2),
  ("Mannix Jacobs","2149 315457 21243","695","01/17/23","Credito",2),
  ("Simon Conner","5462 2795 7538 2115","979","01/19/22","Credito",2),
  ("Hope Smith","3684 297587 82528","924","08/22/22","Credito",2),
  ("Sarah Velazquez","4844 5472 7643 8645","158","07/08/22","Credito",2),
  ("Sawyer Holden","5148278223724399","557","09/21/22","Credito",2),
  ("Jade Shaw","301568221595361","376","07/08/22","Credito",2),
  ("Belle Chaney","6462 1833 3772 1414","672","03/27/23","Credito",2),
  ("Theodore Atkinson","3484 256244 34778","374","10/15/21","Credito",2),
  ("Nayda Witt","367548524268685","144","03/31/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Cruz Travis","343365342437742","804","08/09/21","Credito",2),
  ("Kato Wyatt","448594 456767 2129","456","09/29/22","Credito",2),
  ("Dieter Juarez","633443844384772676","574","09/27/21","Credito",2),
  ("Molly Vega","214956235883714","205","12/28/21","Credito",2),
  ("Mary Burton","3443 163147 77135","393","10/02/22","Credito",2),
  ("Price Nieves","67628256229239","383","02/25/22","Credito",2),
  ("Lester Ramirez","2014 626684 68821","281","12/12/22","Credito",2),
  ("Clark Fulton","630487 28 1954 2778 638","400","07/09/23","Credito",2),
  ("Amethyst Horn","523896 224738 5623","619","10/11/22","Credito",2),
  ("Leo Mays","4485 5885 3734 4531","690","05/10/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Brenna Dennis","4024 007 14 3738","714","07/22/22","Credito",2),
  ("Yetta Schmidt","547337 5525711499","892","02/17/22","Credito",2),
  ("Minerva Harrell","4905545615915337","768","05/24/22","Credito",2),
  ("Cooper Mclaughlin","676 73147 37368 314","894","05/15/23","Credito",2),
  ("Quinn Hooper","3057 961563 24277","192","06/03/22","Credito",2),
  ("Kyra Bullock","301744366552125","955","03/28/23","Credito",2),
  ("Brittany Knox","647 96393 75362 321","769","01/23/22","Credito",2),
  ("Rashad Martinez","6304756677166175","467","10/15/21","Credito",2),
  ("Dieter Butler","3785 732599 43226","289","08/06/21","Credito",2),
  ("Blossom Sosa","362892445339653","935","03/27/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Kato Sellers","448 56884 23753 579","251","05/19/22","Credito",2),
  ("Donovan Burke","450 87737 44354 720","871","10/10/22","Credito",2),
  ("Camden Trevino","63046482859658593","482","11/23/22","Credito",2),
  ("Keane Sargent","3675 357732 85395","807","01/26/23","Credito",2),
  ("Basil Frazier","214953822685354","343","12/16/22","Credito",2),
  ("Moana Martinez","633324 12 6846 2132 769","174","07/10/22","Credito",2),
  ("Dahlia Orr","676736 771972 4888","698","03/16/22","Credito",2),
  ("Sacha Mosley","676 25245 66853 682","865","03/29/22","Credito",2),
  ("Abigail Donovan","4024 007 11 2352","664","07/15/23","Credito",2),
  ("Quemby Day","368968387343814","315","03/09/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Acton Ramsey","633488827755351242","736","07/01/22","Credito",2),
  ("Amaya Bass","301752277286683","755","03/09/22","Credito",2),
  ("Michael Dixon","3731 898845 54521","238","06/07/22","Credito",2),
  ("Mollie Flowers","633477 833856 2281","281","12/12/22","Credito",2),
  ("Jared Contreras","503826552437811","139","02/15/23","Credito",2),
  ("Jaime Hoffman","3004 251535 34861","750","09/30/21","Credito",2),
  ("Hedy Harrington","304724843384349","643","11/29/22","Credito",2),
  ("Holly Rodriquez","453278 3374928750","591","05/05/23","Credito",2),
  ("Oleg Osborne","3786 723474 67717","318","08/19/22","Credito",2),
  ("Knox Santos","6771 6511 3443 7380","310","07/16/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Nehru Cummings","677142 655171 8525","448","01/31/23","Credito",2),
  ("Anthony Alexander","4936 5191 5657 5217","291","01/14/23","Credito",2),
  ("Anika Hebert","630 42579 28632 784","509","10/03/21","Credito",2),
  ("Emery Bowers","648712 384525 3626","188","05/20/23","Credito",2),
  ("Patricia Ramsey","3731 773944 48326","865","06/25/23","Credito",2),
  ("Cleo Pittman","670 68282 55222 961","475","06/06/23","Credito",2),
  ("Francis Alvarez","6709591649644970","451","03/07/22","Credito",2),
  ("Megan Howe","3666 283334 66430","502","12/28/21","Credito",2),
  ("Phillip Gray","201457598168533","455","11/19/21","Credito",2),
  ("Natalie Howard","368457455747643","660","02/19/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Aline Mason","670 62427 76632 569","552","01/14/23","Credito",2),
  ("Daquan Joyce","367422877132775","847","12/20/21","Credito",2),
  ("Carlos Clark","4913 3676 3597 4289","753","02/28/22","Credito",2),
  ("Orla Sanford","304287481386265","854","05/13/22","Credito",2),
  ("Anjolie Chase","589375 2871137770","429","04/03/22","Credito",2),
  ("Yetta Potter","363921643472773","391","09/23/21","Credito",2),
  ("Samuel Gardner","492 97751 89337 228","540","05/12/22","Credito",2),
  ("Quemby Larsen","448556 926272 1788","155","06/07/23","Credito",2),
  ("Penelope Goodwin","490593 4583133877","525","03/14/22","Credito",2),
  ("Cruz Wilcox","4485885195498","734","03/05/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Robin Watson","4913 4252 2515 3837","930","05/29/22","Credito",2),
  ("Carol Cantu","490563 61 2268 2432 871","317","09/12/22","Credito",2),
  ("Erich William","633421 322271 5431","282","07/21/23","Credito",2),
  ("Ethan Baird","6767 3973 2259 6316","646","04/21/23","Credito",2),
  ("Quynn Kirby","402 65344 15349 875","606","04/15/23","Credito",2),
  ("Margaret Gamble","670981745723314981","426","07/09/22","Credito",2),
  ("Kenyon Bradford","528149 587683 6778","429","07/11/23","Credito",2),
  ("Nigel Berry","349697312559335","407","03/06/22","Credito",2),
  ("Quentin Dunn","633 43859 69224 429","499","12/21/22","Credito",2),
  ("Perry Logan","5573335673651433","430","11/10/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Chase Guthrie","6771568936687267638","681","02/01/23","Credito",2),
  ("Jack Higgins","376676673235285","823","08/05/22","Credito",2),
  ("Vladimir Riley","633498442285633669","896","08/29/22","Credito",2),
  ("Knox Peck","658823 8536635457","296","04/09/23","Credito",2),
  ("Zane Humphrey","2014 772687 25883","615","09/10/22","Credito",2),
  ("Jonas Davis","633459669446429481","910","12/25/21","Credito",2),
  ("Nina Tillman","201485628767438","524","03/15/23","Credito",2),
  ("Gray Compton","4844 7755 4748 9440","842","01/02/23","Credito",2),
  ("Pascale Hayden","677167627652844868","941","11/06/22","Credito",2),
  ("Walter Spencer","3019 415385 73910","209","01/18/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Malik Ramirez","537374 386621 7478","989","08/22/21","Credito",2),
  ("Mannix Jefferson","501881 2265637262","568","08/15/21","Credito",2),
  ("Abdul Rush","484458 7682616228","228","02/02/22","Credito",2),
  ("Alma Mays","5038 265 36 5858","198","08/28/21","Credito",2),
  ("Hyatt Morgan","417 50024 26661 679","765","06/13/22","Credito",2),
  ("Todd Duncan","3481 743233 38274","439","12/31/21","Credito",2),
  ("Jaime Torres","633456 5633246466","157","02/13/23","Credito",2),
  ("Ivor Warren","647 34644 38784 429","741","11/20/21","Credito",2),
  ("Edward Cline","484434 8187937282","804","07/22/22","Credito",2),
  ("Brandon Fernandez","484 47386 78828 539","522","12/19/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Harding Finley","670983678622466925","559","03/05/22","Credito",2),
  ("Damian Raymond","492 98222 48663 739","251","08/13/21","Credito",2),
  ("Zephania Meadows","670652 889582 9593","922","11/23/21","Credito",2),
  ("Maxwell Hunt","304757776774342","882","11/16/21","Credito",2),
  ("Chloe Mayer","453266 645536 1647","926","04/28/22","Credito",2),
  ("Joelle Hale","633 37994 11829 992","360","06/23/23","Credito",2),
  ("Rebekah Barton","214955165655563","630","01/16/23","Credito",2),
  ("Carson Flynn","670953 58 6262 3344 275","519","07/13/22","Credito",2),
  ("Scott Church","6492394766414736","134","01/30/22","Credito",2),
  ("Barry Bentley","6767784316956475","693","02/18/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Jordan Craig","4026 8387 7397 7270","529","10/15/22","Credito",2),
  ("Yardley Tillman","3047 544577 67877","604","09/10/21","Credito",2),
  ("Henry Acevedo","633441 1666454257","728","07/16/22","Credito",2),
  ("Ivor Hodge","633482 39 5684 2583 925","308","10/12/21","Credito",2),
  ("Uma Bowman","2149 277256 87832","216","04/17/22","Credito",2),
  ("Eaton Hansen","4508 8825 3386 9937","263","10/03/22","Credito",2),
  ("Caesar Rasmussen","4905254533974777636","438","10/07/21","Credito",2),
  ("Keiko Pope","670922 497388 3382","295","07/24/23","Credito",2),
  ("Preston Mckee","633435 3576219661","129","09/10/22","Credito",2),
  ("Vivian Carney","589334296913","160","08/17/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Julie Prince","362644363235847","400","07/10/22","Credito",2),
  ("Andrew Curtis","4913548143922296","819","10/02/22","Credito",2),
  ("Emery Sellers","305229265357756","445","08/30/22","Credito",2),
  ("Richard Crosby","4024 007 17 7298","599","06/26/23","Credito",2),
  ("Pamela Vazquez","4905665677253342","142","02/18/23","Credito",2),
  ("Urielle Johnson","6767629832315922","824","11/22/21","Credito",2),
  ("Declan Goodman","492934 466451 8636","560","10/25/21","Credito",2),
  ("Xandra Mcdaniel","214938315347729","392","03/26/22","Credito",2),
  ("Vanna Holland","369673461656235","883","09/20/21","Credito",2),
  ("Illana Booker","374437263933694","262","06/20/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Claire Duke","6767351341651453","690","01/05/22","Credito",2),
  ("Wynne Velez","4485356486541","426","05/16/22","Credito",2),
  ("Paula Shaffer","491649 4683357592","590","05/28/22","Credito",2),
  ("Ivor Kirk","572565 3485456321","588","07/18/22","Credito",2),
  ("Hayes Emerson","670933918848457493","538","09/19/21","Credito",2),
  ("Amelia Kirby","304135634718829","661","06/09/23","Credito",2),
  ("Margaret Pearson","2014 279787 48717","484","01/29/22","Credito",2),
  ("Lewis Peck","654156 645637 2750","352","07/14/23","Credito",2),
  ("Chandler Pace","6476486952437263","365","04/12/22","Credito",2),
  ("Roth Blackburn","5647322631677215","767","11/08/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Pascale Wilkinson","491669 1626747876","958","03/01/22","Credito",2),
  ("Amanda Dalton","4026586987538681","741","03/31/22","Credito",2),
  ("Zephania King","3005 876933 78768","596","10/22/21","Credito",2),
  ("Buffy Richardson","4026332432184734","895","12/13/22","Credito",2),
  ("Paul Ingram","645834 4212171242","901","01/01/23","Credito",2),
  ("Jeremy Cochran","4929823318720","252","12/29/22","Credito",2),
  ("Raven Lawson","646964 823792 4378","327","09/27/22","Credito",2),
  ("Savannah Farmer","6473431136374720","573","06/20/22","Credito",2),
  ("Octavius Finley","5258 9872 6423 3468","502","09/06/21","Credito",2),
  ("Heather Douglas","361165941388123","514","01/27/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Xenos Buchanan","676739 58 1432 6869 261","483","01/24/22","Credito",2),
  ("Bradley Valenzuela","6304 8936 4718 3640","294","03/06/22","Credito",2),
  ("Jessica David","4716 6437 3475 6937","498","07/21/22","Credito",2),
  ("Ginger Sellers","491355 845386 2321","168","10/27/22","Credito",2),
  ("Chester Steele","201417542464321","753","07/13/23","Credito",2),
  ("Vincent Curry","6497 7253 6421 6640","644","11/08/22","Credito",2),
  ("Castor Stafford","453 29981 29571 321","670","01/24/23","Credito",2),
  ("Dustin Nicholson","4917 6331 4371 3477","228","09/20/22","Credito",2),
  ("Vanna Ford","675957 535564 6716","382","02/17/22","Credito",2),
  ("Samuel Lindsey","4844 6548 8825 6678","771","12/31/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Kimberley Barlow","345934328791410","634","08/12/21","Credito",2),
  ("Samson Massey","3647 858445 63659","704","12/14/22","Credito",2),
  ("Lucy Newton","490595 89 4646 6853 484","385","02/02/22","Credito",2),
  ("Sandra Leblanc","453 96674 84155 235","761","04/30/22","Credito",2),
  ("Camden Carey","492956 5751487752","257","12/25/21","Credito",2),
  ("Thomas Ayers","453234 757132 7487","493","08/24/22","Credito",2),
  ("Buckminster Reese","5846562673571573","339","11/28/21","Credito",2),
  ("Mira Terrell","5735686326621","166","02/21/23","Credito",2),
  ("Carlos Duncan","3023 237728 44779","817","06/09/22","Credito",2),
  ("Madonna French","670932 8685623596","172","09/15/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Sydnee Guerra","4936829533575314574","441","07/10/23","Credito",2),
  ("Cora Bates","676718728663426194","895","10/10/22","Credito",2),
  ("Dustin Cross","3675 242633 43310","337","04/16/22","Credito",2),
  ("Ivan Montgomery","491127576543472241","830","09/12/21","Credito",2),
  ("Lionel Bartlett","362425826387544","860","05/11/22","Credito",2),
  ("Alexa Kane","4929419748538287","291","06/22/22","Credito",2),
  ("Stephen Ware","670985673532633910","684","09/17/22","Credito",2),
  ("John Alston","4844335656376233","121","07/13/23","Credito",2),
  ("Miranda Allison","304219377444791","696","09/20/21","Credito",2),
  ("Aline Flores","491738 2266368327","244","07/28/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Judith Pearson","4539 675 74 5589","117","06/03/22","Credito",2),
  ("Dylan Justice","633369 6755588384","397","07/02/23","Credito",2),
  ("Bree Davenport","6709962338826745891","769","02/14/22","Credito",2),
  ("Wayne Carpenter","301984381636392","948","12/26/21","Credito",2),
  ("Elijah Watson","2014 737644 45837","648","08/06/22","Credito",2),
  ("Odysseus Sawyer","3664 895146 15836","141","01/03/22","Credito",2),
  ("Vivian Love","3622 688238 35440","795","04/15/22","Credito",2),
  ("Alexandra Rivas","361428889385794","436","03/15/22","Credito",2),
  ("Eaton Woodward","3695 958864 37455","186","02/16/23","Credito",2),
  ("Carter Dunn","304561379525329","155","12/05/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Belle Weiss","201429748325347","563","07/01/23","Credito",2),
  ("Maisie Lawrence","362566748256620","331","04/12/22","Credito",2),
  ("Lucas Scott","300657359224638","369","04/01/22","Credito",2),
  ("Bevis Stewart","6334825689334651","946","06/15/22","Credito",2),
  ("Gavin Compton","527885 431998 6753","740","01/09/22","Credito",2),
  ("Orla Leblanc","303672138223824","177","11/15/22","Credito",2),
  ("Helen Cooper","363116174726933","799","10/05/21","Credito",2),
  ("Hasad Stuart","3046 495232 84123","754","05/28/23","Credito",2),
  ("Isadora Nash","417500 6529437747","996","02/06/23","Credito",2),
  ("Lamar Curtis","633462673855174740","164","09/25/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Beatrice Klein","4716 877 81 3825","266","04/12/23","Credito",2),
  ("Kasper Juarez","201449785449826","220","08/06/21","Credito",2),
  ("Merrill Lane","402 68139 64338 988","199","03/31/23","Credito",2),
  ("Tasha Garrett","4913 1276 2172 4670","872","05/26/23","Credito",2),
  ("Kyla Chapman","601133 2641447440","935","08/15/21","Credito",2),
  ("Rana Riley","4905 2525 6278 8920","457","03/11/23","Credito",2),
  ("Rhiannon Watson","633446 17 6714 2652 642","320","09/11/21","Credito",2),
  ("Adara Logan","676796 9945655651","542","02/06/23","Credito",2),
  ("Carl Sweet","5298 6962 8162 4755","951","03/15/23","Credito",2),
  ("Vaughan Robinson","490562 469548 9487","269","07/31/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Dawn Bird","346472769874741","777","07/09/23","Credito",2),
  ("Dale King","2014 323441 71776","698","12/05/22","Credito",2),
  ("Craig Battle","491187683563245452","922","09/06/21","Credito",2),
  ("Imogene Curtis","4936572535832881252","268","11/10/22","Credito",2),
  ("Rosalyn English","6762781282544547544","445","04/15/22","Credito",2),
  ("Barrett Carlson","4485 2187 3873 3759","395","10/09/21","Credito",2),
  ("Bruno Gibson","670 64967 31826 381","912","10/20/22","Credito",2),
  ("Sean Bartlett","367353639278640","802","06/21/22","Credito",2),
  ("Shelby Banks","491 32564 29741 477","208","01/11/23","Credito",2),
  ("Ima Wolf","6767 5268 9934 6172","454","09/10/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Kadeem Klein","417500 836257 4875","706","06/26/23","Credito",2),
  ("Timothy Irwin","302676338778223","245","05/10/22","Credito",2),
  ("Chadwick Kane","543686 9332975475","187","10/09/22","Credito",2),
  ("Janna Myers","4024 0071 3842 9243","431","10/21/22","Credito",2),
  ("Haley Mckay","675984 32 5122 8643 756","442","04/08/22","Credito",2),
  ("Lewis Valdez","5038 739324 3341","437","11/20/22","Credito",2),
  ("Joseph Fox","455675 3162593422","813","06/10/23","Credito",2),
  ("Paul Duffy","645467 8436265775","342","10/27/21","Credito",2),
  ("Wynter Mueller","6462 9729 8271 6368","730","01/07/22","Credito",2),
  ("Martha Roth","67596247526483757","678","09/10/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Quin Grimes","492973 6737336450","753","10/26/22","Credito",2),
  ("Chelsea Mills","4716 5646 4456 5624","455","04/02/22","Credito",2),
  ("Rebekah Young","491638 989884 1556","537","03/30/22","Credito",2),
  ("Moses Crawford","4844767221622370","823","01/14/23","Credito",2),
  ("Susan Orr","6767487363283658","324","06/10/22","Credito",2),
  ("Ora Dunlap","523 63321 77217 950","123","04/03/23","Credito",2),
  ("Hyacinth Mack","2014 298236 77745","111","03/31/23","Credito",2),
  ("Mikayla Schneider","491132 689737 5264","873","09/08/21","Credito",2),
  ("Fitzgerald Allison","6465 4827 8589 6430","959","01/24/23","Credito",2),
  ("Lesley Winters","4539235744221","917","06/27/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Dora Rocha","6771 2384 3483 8259","485","05/26/22","Credito",2),
  ("Ulric Decker","6334742183722423233","224","02/27/23","Credito",2),
  ("Juliet Hendrix","534352 276846 3894","305","12/10/21","Credito",2),
  ("Dieter Kennedy","630434 486337 2467","155","05/14/22","Credito",2),
  ("Orli French","378758752395632","545","07/13/22","Credito",2),
  ("Alma Witt","4716 366 75 6774","766","03/22/23","Credito",2),
  ("Vivien Castro","675953548510","447","10/26/22","Credito",2),
  ("Kenyon Hopper","556526 2875212220","619","10/01/21","Credito",2),
  ("Chester May","670653 83 3236 1345 390","585","04/11/22","Credito",2),
  ("Leonard Melendez","6304841518164328932","485","04/20/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Eliana Castillo","3015 755736 37790","972","05/04/23","Credito",2),
  ("Lev Robbins","675996 652234 6829","350","07/23/22","Credito",2),
  ("Ira Melton","214951852224623","357","01/26/22","Credito",2),
  ("Sybill Fischer","417500 356683 1320","528","10/09/22","Credito",2),
  ("Bryar Santiago","670985 5988767670","840","10/10/22","Credito",2),
  ("Berk Hansen","573638 34 6522 8222 866","921","10/24/21","Credito",2),
  ("Ciara Vaughn","363722822366434","730","02/15/23","Credito",2),
  ("Denton Berger","5038625946397","515","02/03/22","Credito",2),
  ("Susan Cash","5525428445696999","152","12/11/22","Credito",2),
  ("Lacey Jimenez","3723 786427 24861","509","11/27/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Kennedy Cross","6759 844 45 3622","468","05/21/23","Credito",2),
  ("Beatrice Parks","5225752597356554","828","06/07/23","Credito",2),
  ("Ronan Blake","633428 694882 9751","497","12/24/21","Credito",2),
  ("Jaden Thompson","670997 6254866622","488","01/27/22","Credito",2),
  ("Tasha Cochran","4026 2759 5235 2423","199","02/24/22","Credito",2),
  ("Fritz Hull","6706796225161448884","917","04/22/22","Credito",2),
  ("Drake Francis","492978 7766553671","941","12/19/22","Credito",2),
  ("Yuri Hensley","647826 862884 3258","354","02/28/23","Credito",2),
  ("Ivan Gibson","2149 478643 37742","600","10/28/22","Credito",2),
  ("Reece Walton","6771482747458182333","165","07/16/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Venus Stewart","305769799795484","875","10/19/22","Credito",2),
  ("Upton Hays","493 66466 29237 222","228","09/28/21","Credito",2),
  ("Dacey Rosales","301615413567458","565","01/27/23","Credito",2),
  ("Laith Landry","4556 9761 2633 2484","316","01/09/23","Credito",2),
  ("Chaney Clay","402 40071 94853 625","261","10/30/21","Credito",2),
  ("Curran Burns","3035 586415 41127","189","12/22/21","Credito",2),
  ("Teegan Fitzpatrick","3626 525285 95559","315","07/07/22","Credito",2),
  ("Carson Whitney","3696 463267 74682","874","04/04/23","Credito",2),
  ("Blythe Merrill","6473 8298 3474 6745","684","06/07/22","Credito",2),
  ("Clare Spears","6706376743623312827","112","11/29/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Charles Frost","214943519216571","303","12/16/22","Credito",2),
  ("Zeus Chen","633455 134698 6267","700","04/22/23","Credito",2),
  ("Allegra Fisher","651756 4237945739","427","03/02/22","Credito",2),
  ("Jaime Reeves","6496 7369 5389 3567","252","11/25/22","Credito",2),
  ("Wang David","6771414648226651232","257","06/03/23","Credito",2),
  ("Kaitlin Stevenson","453247 8694761177","446","12/16/22","Credito",2),
  ("Ralph Church","529467 3356364868","721","12/31/22","Credito",2),
  ("Kaye Irwin","549774 563614 4859","941","09/12/21","Credito",2),
  ("Elliott Fulton","201411317172524","215","12/04/21","Credito",2),
  ("Mannix Hubbard","490542 48 7285 6613 963","357","01/10/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Davis Woodard","6706877783289885","252","02/08/23","Credito",2),
  ("Mari Black","3424 221698 67427","814","08/27/21","Credito",2),
  ("Keaton Nash","4929334487782","838","06/08/23","Credito",2),
  ("Isaac Smith","3025 557788 23998","117","01/22/23","Credito",2),
  ("Risa Cortez","633475524342144439","827","04/01/23","Credito",2),
  ("Nash Nichols","4485 3886 1426 4193","561","02/05/22","Credito",2),
  ("Athena Salas","6706273732941857229","185","07/13/23","Credito",2),
  ("Meredith Hoffman","2014 885135 17579","891","11/08/22","Credito",2),
  ("Emerald Horton","4532666885816491","357","08/11/22","Credito",2),
  ("Hasad Wilder","6709929748489457281","745","05/19/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Geraldine King","3615 845643 55864","657","09/19/21","Credito",2),
  ("Coby Bean","670628882234693824","744","12/07/22","Credito",2),
  ("Katell Hill","453 29325 87657 728","589","04/16/22","Credito",2),
  ("Prescott Evans","670983 84 5583 5564 337","830","10/30/22","Credito",2),
  ("Fletcher Hester","538459 3872424726","313","12/02/21","Credito",2),
  ("Eugenia Fuentes","644269 3787458536","281","01/03/23","Credito",2),
  ("Brandon Waters","3058 335586 86761","670","04/14/22","Credito",2),
  ("Slade Pitts","3433 443623 24890","937","02/22/23","Credito",2),
  ("Adrian Andrews","6767349418662394996","615","07/18/22","Credito",2),
  ("Maisie Boone","4532322223324","387","09/20/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Ainsley Pena","67713947284454738","380","05/09/22","Credito",2),
  ("Branden Hooper","343354721466779","763","12/09/21","Credito",2),
  ("Hayden Parks","2149 975336 22867","467","10/18/22","Credito",2),
  ("Alea Calhoun","676115 859276 6583","776","09/12/22","Credito",2),
  ("Jaden Alexander","453938 437648 7375","545","03/20/22","Credito",2),
  ("Bethany Small","649831 8738447296","803","08/01/22","Credito",2),
  ("Amos Mays","670 97665 57856 689","157","09/14/22","Credito",2),
  ("Laith Norris","417500 3474424275","803","03/07/22","Credito",2),
  ("Medge Stein","362145739744579","613","08/14/22","Credito",2),
  ("Serena Dickerson","6011 9683 5336 5211","587","02/03/22","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Liberty Carney","433 65856 89572 357","133","09/07/22","Credito",2),
  ("Jessamine Pruitt","4508 9419 8728 7861","171","08/25/22","Credito",2),
  ("Deirdre Valenzuela","201456693934989","559","09/26/22","Credito",2),
  ("Chaney Schmidt","644 38145 46165 498","947","05/03/22","Credito",2),
  ("Jarrod Fischer","2014 825534 25355","524","04/19/23","Credito",2),
  ("Paul Galloway","3724 792782 49544","697","09/17/21","Credito",2),
  ("Ignatius Reyes","677 13417 53632 244","404","04/01/23","Credito",2),
  ("Hilda Hatfield","3734 284368 93544","357","02/23/23","Credito",2),
  ("Griffin Brock","6767323727685933477","438","05/01/22","Credito",2),
  ("Todd Miller","376832223548772","964","04/26/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Ross Giles","649 94735 85385 534","997","02/11/23","Credito",2),
  ("Knox Wilcox","3049 773479 85686","697","06/06/23","Credito",2),
  ("Mufutau Adams","491678 9452721849","125","04/27/22","Credito",2),
  ("Vaughan Cross","214924196473974","813","02/11/22","Credito",2),
  ("Sonia Jennings","5893 941 14 5557","649","06/04/22","Credito",2),
  ("Inga Wise","556414 6327327242","651","08/05/21","Credito",2),
  ("Cade Greer","376871485264389","535","05/25/23","Credito",2),
  ("Sylvester Townsend","676737788126417898","501","03/09/22","Credito",2),
  ("Jin Mcfarland","491744 6177774699","602","05/04/22","Credito",2),
  ("Allegra Lucas","491 77538 19491 941","264","07/23/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Josiah Conway","676168758665229176","790","03/19/22","Credito",2),
  ("Melvin Donaldson","450847 645742 9289","777","09/08/21","Credito",2),
  ("Katelyn Hoover","6484873258395487","487","04/02/23","Credito",2),
  ("Athena Wooten","366496217242388","989","07/28/22","Credito",2),
  ("Len Montgomery","303222655736343","139","06/14/22","Credito",2),
  ("Ulysses Franco","6334664877523447796","595","07/20/22","Credito",2),
  ("Duncan Thompson","3042 355818 65845","165","09/08/22","Credito",2),
  ("Ezra Gay","555836 1141187981","838","11/02/21","Credito",2),
  ("Alfonso Wolf","344433742598270","565","10/25/22","Credito",2),
  ("Myra Moon","491142 68 1229 6375 274","677","07/09/23","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Tatiana Benson","5352 6595 6838 3183","464","09/14/22","Credito",2),
  ("Garrett Hogan","67628458869642","435","04/02/22","Credito",2),
  ("Brianna Huffman","6706226558467427","448","10/17/21","Credito",2),
  ("Danielle Sims","630476 81 3346 2557 882","751","02/21/22","Credito",2),
  ("Brendan Russell","517 86322 88427 665","826","05/12/22","Credito",2),
  ("Nora Edwards","2014 422537 71664","412","10/11/22","Credito",2),
  ("Orla Leon","6761377532269","144","08/27/22","Credito",2),
  ("Serina Fry","547 62975 12818 839","705","06/12/23","Credito",2),
  ("Andrew Wilkerson","471 63929 58352 383","719","05/07/22","Credito",2),
  ("Juliet Goodman","6334858538754858335","167","09/21/21","Credito",2);
INSERT INTO `tarjetas` (`Owner`,`CreditNumber`,`CVV`,`Expiration`,`Tipo_Tarjeta`,`marca_tarjeta_id`)
VALUES
  ("Evan Gray","633425 7612491111","882","12/21/22","Credito",2),
  ("Ariel Dickson","3797 593464 34274","850","12/29/21","Credito",2),
  ("Xyla Wheeler","492 95587 64645 359","844","03/09/23","Credito",2),
  ("Patrick Porter","4175006259188189","848","09/25/21","Credito",2),
  ("Remedios Marquez","304738547836586","342","08/08/21","Credito",2),
  ("Melodie Sims","453 28552 23746 284","791","04/08/23","Credito",2),
  ("Maggy Downs","6334 6477 4422 8896","537","10/04/22","Credito",2),
  ("Rooney Rios","559311 438159 2437","552","11/14/22","Credito",2),
  ("Ishmael Carney","3472 876326 23243","687","07/04/22","Credito",2),
  ("Liberty Franks","633372 2459733272","863","08/09/22","Credito",2);
