CREATE TABLE IF NOT EXISTS direccion (
  `direccion_id` INT NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(50) NOT NULL,
  `ciudad` VARCHAR(50) NOT NULL,
  `calle` VARCHAR(50) NOT NULL,
  `numero_calle` INT NOT NULL,

  PRIMARY KEY (`direccion_id`));

INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Jeju","Sudhanoti","nascetur ridiculus mus.",2000),
  ("Kremenchuk","Kohistan","parturient montes, nascetur ridiculus",1110),
  ("Bekegem","Kaliningrad","Mauris molestie pharetra nibh. Aliquam",2063),
  ("Burnie","Cambridge Bay","vestibulum lorem, sit amet",79),
  ("Dibrugarh","Huaral","volutpat. Nulla dignissim.",1541),
  ("Stalowa Wola","Bafra","egestas.",1890),
  ("Radebeul","Haisyn","adipiscing ligula.",1130),
  ("Zittau","Mazatlán","Curabitur egestas nunc",172),
  ("Albany","Concón","justo nec ante.",1331),
  ("Asan","Hà Nội","non, luctus sit amet,",616);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Vienna","Jamshedpur","pede, malesuada",2638),
  ("Xinjiang","Kaduna","erat nonummy",1331),
  ("Pinetown","Matiari","Aliquam",174),
  ("Dannevirke","San Rafael","lacinia mattis.",2147),
  ("Huancayo","Khmilnyk","consequat dolor vitae",199),
  ("Monmouth","Owerri","orci sem eget",2409),
  ("Florø","Nicoya","mi. Aliquam",1627),
  ("Pessac","Villenave-d'Ornon","Aliquam nisl.",2944),
  ("Tabaco","Dublin","Vestibulum",1096),
  ("Hoogeveen","Sakhalin","dictum magna. Ut tincidunt",187);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Ensenada","Oldenzaal","sapien, gravida non,",2416),
  ("Nizip","Tianjin","vitae, orci. Phasellus",255),
  ("Omsk","Shanghai","sodales purus, in molestie tortor",944),
  ("Sarpsborg","Castel Ritaldi","lacinia orci, consectetuer euismod",845),
  ("Tourinnes-Saint-Lambert","Wilmington","posuere vulputate, lacus. Cras",2589),
  ("Etalle","Burgos","eget odio. Aliquam vulputate",2379),
  ("Puno","Cabuyao","penatibus et magnis",2038),
  ("Sokoto","Dutse","urna suscipit nonummy. Fusce",334),
  ("Garaguso","Kurgan","dui nec urna suscipit",145),
  ("Hofors","Koppervik","urna suscipit nonummy. Fusce",2266);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Puerto Nariño","Belfast","id,",259),
  ("General Santos","Chastre-Villeroux-Blanmont","felis",521),
  ("Dublin","Downtown Core","purus mauris a",2886),
  ("Eindhoven","Oudergem","lacus pede",1725),
  ("Galway","Zhytomyr","Maecenas libero est, congue a,",1817),
  ("Malambo","Sumy","est mauris,",1196),
  ("Nice","Canberra","parturient montes, nascetur ridiculus",1567),
  ("Juliaca","Ijebu Ode","porttitor vulputate, posuere",383),
  ("Banjarmasin","Kidapawan","elit. Nulla facilisi. Sed",2125),
  ("Bellefontaine","Regina","sed pede.",2717);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Rotello","Schwechat","et malesuada fames",2056),
  ("Pınarbaşı","Matamata","consectetuer adipiscing elit. Aliquam",1413),
  ("Clydebank","San José de Alajuela","consectetuer euismod",2692),
  ("Guizhou","Los Mochis","mollis non, cursus non,",1625),
  ("Zamora","Albi","sodales purus,",1427),
  ("Tyumen","Harrisburg","blandit mattis.",523),
  ("Dalcahue","Belfast","magnis dis parturient",637),
  ("Ceuta","Pacasmayo","fames ac",1566),
  ("Mülheim","Gols","orci, adipiscing non, luctus",890),
  ("Huaral","Fürth","vel arcu. Curabitur ut",2643);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Canberra","Ulloa (Barrial]","facilisis lorem",867),
  ("Changi Bay","Develi","Quisque fringilla",2146),
  ("Pagadian","Western Water Catchment","lorem,",2189),
  ("Smolensk","San Piero Patti","enim non nisi.",1372),
  ("Pamplona","Anhui","velit eu sem. Pellentesque",510),
  ("Dangjin","Sacheon","Ut tincidunt",2270),
  ("Jagersfontein","Melilla","aliquet nec, imperdiet",870),
  ("Mersin","Kerikeri","dui, nec tempus",2359),
  ("Bollnäs","Punggol","Vivamus nibh dolor,",652),
  ("Pavone del Mella","Liberia","interdum libero dui",1004);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Quảng Ngãi","Corozal","Integer id magna",2426),
  ("Gasteiz","Telde","nibh dolor, nonummy ac,",1806),
  ("Cork","Heusweiler","ligula. Aenean gravida",840),
  ("Bais","Berlin","ligula consectetuer rhoncus.",2381),
  ("Devonport","Itterbeek","pharetra. Quisque ac libero nec",221),
  ("Lào Cai","Ikot Ekpene","odio. Nam interdum",2549),
  ("Chalon-sur-Saône","Scanzano Jonico","convallis est,",699),
  ("Masullas","Korneuburg","vitae dolor. Donec",329),
  ("Gravataí","La Hulpe","adipiscing elit. Aliquam",322),
  ("Greater Hobart","Evesham","arcu. Aliquam ultrices iaculis odio.",2826);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Ipatinga","Niterói","amet ultricies sem",380),
  ("Enschede","Riesa","tincidunt, neque vitae semper",2848),
  ("Kimberley","Mirpur","In mi pede, nonummy",2344),
  ("Jönköping","Stockerau","malesuada augue ut",2097),
  ("Bulandshahr","Yekaterinburg","orci quis",1286),
  ("Jeonju","Chungju","Cum sociis natoque",1300),
  ("Libramont-Chevigny","Ryazan","elit pede, malesuada vel, venenatis",2320),
  ("Novosibirsk","Chortkiv","arcu. Sed eu",1115),
  ("Stekene","Pondicherry","gravida molestie",2905),
  ("Chortkiv","Cork","Cum sociis natoque penatibus et",2419);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Jeongeup","Grimstad","placerat, augue.",376),
  ("Palangka Raya","Ciénaga","sed, facilisis vitae, orci.",248),
  ("Albacete","Westport","eu,",2828),
  ("Würzburg","Sagamu","nec",2274),
  ("Galway","Blenheim","mattis velit justo nec",135),
  ("Dörtyol","Tamworth","rutrum magna. Cras convallis convallis",1344),
  ("Pskov","Lombardsijde","parturient",396),
  ("Asan","Hattian Bala","non, sollicitudin a,",1819),
  ("Nam Sách","Galway","Etiam bibendum fermentum",516),
  ("Okara","San Marcos","turpis egestas. Aliquam fringilla",642);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Burgos","Jaén","scelerisque scelerisque dui. Suspendisse",713),
  ("Hattian Bala","Daejeon","bibendum fermentum metus.",2291),
  ("Kędzierzyn-Koźle","Huara","et,",1394),
  ("Gyeongsan","Orenburg","nunc sed pede.",1699),
  ("Matamata","Sumy","Mauris ut quam vel sapien",1945),
  ("Hamilton","Campina Grande","Morbi neque",912),
  ("Punitaqui","Bajaur Agency","Phasellus fermentum convallis ligula.",739),
  ("Chancay","Chiclayo","mi tempor",24),
  ("Kimberley","Oranienburg","scelerisque dui. Suspendisse ac",1023),
  ("Puntarenas","Zhejiang","Donec nibh.",750);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Tarma","Bedok","Donec nibh. Quisque",266),
  ("Burnie","Paillaco","nunc nulla vulputate",2390),
  ("Cawdor","Puerto Guzmán","nonummy. Fusce fermentum",578),
  ("Pachuca","Gorontalo","gravida mauris",2231),
  ("Yunnan","Houston","Suspendisse dui. Fusce",2836),
  ("Cartagena","Thái Nguyên","sit amet, consectetuer adipiscing elit.",1425),
  ("Montgomery","Pondicherry","est. Nunc ullamcorper, velit in",656),
  ("Parauapebas","Urdaneta","Suspendisse sed dolor. Fusce mi",1017),
  ("Greymouth","Okene","pede. Cras vulputate velit",1409),
  ("Mâcon","Khairpur","molestie sodales.",863);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Curridabat","Boryspil","ornare sagittis felis. Donec tempor,",631),
  ("Nizip","Samal","lectus. Cum sociis natoque",2610),
  ("Sichuan","Graaff-Reinet","aliquet, metus urna",963),
  ("Canberra","Murray Bridge","nulla. Cras eu",2964),
  ("Perquenco","Huaraz","sed,",964),
  ("Antakya","Pike Creek","adipiscing",1525),
  ("Serangoon","Putre","sit amet, risus. Donec",1997),
  ("Banjarbaru","Aurora","dolor, nonummy",1864),
  ("Ryazan","Gojal Upper Hunza","cursus a,",2283),
  ("Muradiye","Lelystad","ut eros",772);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Santa Cruz de Lorica","Tibet","a, scelerisque sed,",2980),
  ("Ourense","Duluth","hendrerit a, arcu. Sed et",2145),
  ("Koblenz","Montauban","natoque penatibus et magnis",2692),
  ("Ørsta","Ballarat","lacus. Nulla",713),
  ("Bucaramanga","Ovalle","lacinia vitae,",1201),
  ("Belfast","Rechnitz","dui.",2403),
  ("Breda","Risør","mollis. Duis sit",2922),
  ("Khushab","Whangarei","tincidunt",1854),
  ("Folkestone","Hilo","sem elit,",1399),
  ("Watson Lake","St. Ives","ultricies ligula. Nullam",1194);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Gore","Enkhuizen","mi, ac mattis velit justo",2318),
  ("Kohima","Lagos","ullamcorper, velit in",1411),
  ("San José de Alajuela","Sierra Gorda","eget laoreet",2726),
  ("Épernay","Cañas","diam. Pellentesque",1850),
  ("Mataram","Mandai","ultrices a, auctor non, feugiat",85),
  ("Iksan","Aizwal","ante ipsum primis",14),
  ("Arequipa","Lithgow","lobortis augue scelerisque mollis.",1150),
  ("Minyar","Worcester","nec tempus mauris erat eget",1902),
  ("Finspång","Tunja","blandit viverra. Donec tempus, lorem",1216),
  ("Pazarcık","Hạ Long","faucibus id, libero.",1800);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("São José dos Pinhais","Tandag","non quam. Pellentesque",61),
  ("Boorsem","Waidhofen an der Ybbs","Vestibulum ut",552),
  ("Yogyakarta","LaSalle","dolor sit",2262),
  ("Franeker","Dörtyol","nonummy ut, molestie in, tempus",551),
  ("San Pablo","Volda","mollis lectus pede",2551),
  ("Toruń","Cork","sed consequat auctor, nunc",2618),
  ("Winnipeg","Trà Vinh","parturient montes, nascetur ridiculus",913),
  ("Penco","Juliaca","nunc est,",2025),
  ("Kapiti","Cáceres","sapien. Cras",840),
  ("Cedar Rapids","Sudbury","porttitor vulputate, posuere",2606);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("San Francisco","Chongqing","velit. Aliquam nisl.",2105),
  ("Semarang","Mykolaiv","posuere at, velit.",1574),
  ("Madrid","Daejeon","vitae dolor. Donec",175),
  ("Galway","Ivangorod","tincidunt,",35),
  ("Cauayan","Mora","felis.",213),
  ("Rae Bareli","West Vancouver","convallis, ante",2673),
  ("San Cristóbal de las Casas","Florø","blandit mattis. Cras eget nisi",932),
  ("San Jose","Gagliato","augue id",2575),
  ("Cartago","Franeker","sapien, gravida non, sollicitudin",84),
  ("Santa Rosa de Cabal","Kremenchuk","vel arcu. Curabitur ut",2245);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Punggol","Queanbeyan","elementum",1385),
  ("Langley","Ceuta","Etiam imperdiet dictum magna.",666),
  ("Täby","Tomsk","egestas blandit.",1481),
  ("Phuthaditjhaba","Ghotki","Nam ac nulla.",2109),
  ("Lambersart","Ryazan","gravida nunc sed",1972),
  ("Paraíso","Antalya","Quisque ornare tortor",954),
  ("Paradise","Zerkegem","non enim. Mauris",1011),
  ("Ely","Värnamo","sed tortor. Integer aliquam adipiscing",1066),
  ("Fraserburgh","Buccheri","sit amet metus. Aliquam",1730),
  ("Dunbar","Gliwice","hendrerit neque. In ornare",2003);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Yahyalı","Graz","tristique",1046),
  ("Alajuela","Alanya","Ut sagittis lobortis",2944),
  ("Port Harcourt","Guaymas","parturient montes,",2016),
  ("Port Pirie","Etroubles","et tristique",660),
  ("Cockburn","Greater Hobart","sociis natoque penatibus et magnis",1433),
  ("Słupsk","Itanagar","vel nisl. Quisque fringilla",2369),
  ("Romford","Hebei","Nulla aliquet. Proin velit.",36),
  ("San Luis Potosí","Konotop","ipsum leo elementum sem,",867),
  ("La Carlota","Guápiles","dolor. Nulla semper",1196),
  ("Dublin","Vĩnh Long","sagittis. Duis gravida.",1929);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Runcorn","Puno","est ac facilisis facilisis,",2345),
  ("Leoben","Dadu","lectus. Nullam",843),
  ("Shaki","Zutphen","Proin vel nisl. Quisque fringilla",2037),
  ("Cajazeiras","Luziânia","Nam tempor",2338),
  ("Llanquihue","Stratford","enim non",2231),
  ("Falun","Canberra","tincidunt. Donec vitae erat vel",1180),
  ("Harbour Grace","Bakhmut","diam. Proin dolor. Nulla",2409),
  ("Jonesboro","Laarne","dui nec urna",582),
  ("Timaru","Värnamo","Sed eu eros.",270),
  ("Vienna","Sokoto","dictum placerat, augue. Sed molestie.",1806);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Picton","Clovenfords","a tortor. Nunc",2300),
  ("Mora","Ostrowiec Świętokrzyski","Mauris magna.",292),
  ("Jaboatão dos Guararapes","Lochgilphead","Phasellus at",2244),
  ("Miryang","Gdańsk","nascetur ridiculus mus.",1088),
  ("Seevetal","Ciudad Santa Catarina","nunc sit",1537),
  ("Mojokerto","Binjai","in faucibus",2633),
  ("Gijón","Imphal","Morbi metus. Vivamus euismod",275),
  ("Puntarenas","Simpang","et,",1284),
  ("Palmerston","Mỹ Tho","at pretium",599),
  ("Moncton","Cusco","faucibus id, libero. Donec",1852);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Qinghai","Sneek","sed, hendrerit",944),
  ("Sirsa","Larkana","lorem ut aliquam iaculis, lacus",117),
  ("Kavaratti","Codó","pede blandit congue.",1771),
  ("Gorzów Wielkopolski","Zielona Góra","enim, sit amet ornare lectus",2628),
  ("Tours","Aserrí","id risus quis",187),
  ("Jayapura","Parauapebas","gravida.",559),
  ("Dalcahue","Timaukel","tempus scelerisque, lorem ipsum",768),
  ("Dnipro","Watermaal-Bosvoorde","parturient montes, nascetur ridiculus",2308),
  ("Gisborne","Tando Allahyar","mi enim,",924),
  ("Raufoss","Bedok","Donec est. Nunc ullamcorper,",2026);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Shanxi","Chiclayo","Curabitur sed tortor. Integer aliquam",2243),
  ("Pleiku","Ełk","Duis ac arcu.",2803),
  ("Warri","Bukit Batok","tellus justo sit",249),
  ("Çarşamba","Larvik","odio. Nam interdum",2544),
  ("Arequipa","Thủ Dầu Một","lectus ante dictum mi,",1958),
  ("Solnechnogorsk","Fortaleza","tristique pharetra. Quisque ac",584),
  ("Béziers","Vetlanda","dolor. Nulla semper",1065),
  ("Bergerac","Brandon","ridiculus mus. Proin",1904),
  ("Kupang","Kraków","euismod et, commodo",1960),
  ("Punggol","Saint-Médard-en-Jalles","auctor,",2212);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Verdalsøra","Palmerston","purus ac tellus.",1702),
  ("Penrith","Novosibirsk","Curabitur consequat, lectus",2559),
  ("Bellville","Dutse","libero. Proin sed",990),
  ("Kurram Agency","Clarksville","ridiculus mus. Aenean eget",2303),
  ("Lelystad","Vierzon","euismod urna. Nullam",1456),
  ("Canberra","Castanhal","diam luctus lobortis. Class aptent",2938),
  ("Rueil-Malmaison","Biloxi","sem elit,",2140),
  ("Changi Bay","Erdemli","consequat purus. Maecenas",245),
  ("San Fernando","Pamplona","non ante bibendum ullamcorper. Duis",2785),
  ("Ajaccio","Belfast","cursus non, egestas",563);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Uiwang","Sandefjord","porttitor scelerisque neque.",1531),
  ("Zavitinsk","Silvassa","fringilla.",237),
  ("Sapele","Oslo","eu nibh vulputate mauris",2278),
  ("Toruń","Guangxi","amet ultricies sem magna nec",743),
  ("Logroño","Cabadbaran","vitae nibh. Donec",729),
  ("Dubno","Baguio","sapien, gravida non, sollicitudin",2047),
  ("Timaru","Saalfelden am Steinernen Meer","consectetuer ipsum nunc",1469),
  ("Leiden","Bhavnagar","conubia nostra, per inceptos",1740),
  ("Bama","Kielce","aliquet lobortis, nisi",2570),
  ("Laramie","Cañas","enim mi tempor",2545);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Katsina","Henderson","vulputate ullamcorper magna. Sed eu",888),
  ("Western Water Catchment","Jamshedpur","fermentum",2807),
  ("Castel Giorgio","Bad Dürkheim","arcu iaculis enim,",2892),
  ("Jafarabad","Shaanxi","blandit",1068),
  ("Goulburn","Kadiyivka","neque tellus, imperdiet",2253),
  ("Minna","San Pablo","Quisque ac libero",1493),
  ("Konstanz","Kuruman","dolor. Quisque tincidunt",496),
  ("Butuan","Knittelfeld","fames ac",2476),
  ("Krefeld","Galway","euismod est",1648),
  ("Ankara","Kalush","nunc sed pede. Cum",2065);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Tlaquepaque","Murmansk","consectetuer adipiscing elit.",1457),
  ("Mata de Plátano","Zaporizhzhia","Pellentesque habitant morbi tristique senectus",2442),
  ("Blois","Tavistock","cursus non, egestas a,",2159),
  ("Córdoba","Antofagasta","mus. Proin",841),
  ("Ulyanovsk","Galway","non nisi. Aenean",268),
  ("Piscinas","Florencia","et, rutrum non, hendrerit",694),
  ("Nicoya","Huancayo","vestibulum, neque sed dictum",2658),
  ("Araban","Villach","metus sit amet ante.",974),
  ("Worms","Birecik","nisi a odio semper",2952),
  ("Dublin","Lim Chu Kang","placerat, augue. Sed molestie.",2978);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Digos","Geraldton-Greenough","pretium neque.",1130),
  ("Oslo","Montería","laoreet lectus",900),
  ("Dubbo","Värnamo","in molestie",12),
  ("Arviat","Cao Lãnh","primis",101),
  ("San Jose","Nässjö","nibh. Quisque",2668),
  ("Paita","Gresham","Curabitur ut odio vel",2992),
  ("San Juan del Río","Balclutha","nec luctus felis purus",1454),
  ("Florencia","Darwin","diam lorem, auctor quis,",1737),
  ("Hope","Yongin","cursus in,",1368),
  ("Täby","Galway","lacus. Cras",254);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Alanya","Belfast","a purus. Duis",2506),
  ("Dublin","Maubeuge","Aliquam erat volutpat.",1042),
  ("Koblenz","Thanh Hóa","ac nulla. In",2399),
  ("Valencia","Srinagar","at arcu. Vestibulum ante",2837),
  ("Candon","Siverek","ante",960),
  ("Białystok","Sortland","Maecenas",2287),
  ("Pacasmayo","Marzabotto","commodo at, libero. Morbi accumsan",55),
  ("Naushahro Firoze","Lozova","Donec luctus aliquet odio.",545),
  ("Little Rock","Grasse","et magnis dis parturient montes,",2483),
  ("Mexico City","Caxias","fringilla cursus purus. Nullam scelerisque",1135);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Istmina","Belfast","Aenean eget magna.",199),
  ("Nice","Dublin","neque tellus,",961),
  ("Tlaquepaque","Rawalakot","euismod urna. Nullam",1758),
  ("Stockholm","Creil","enim commodo",1499),
  ("Hattian Bala","Laces/Latsch","urna suscipit nonummy. Fusce",1796),
  ("Lauro de Freitas","Chờ","cursus et, eros.",1878),
  ("Tando Muhammad Khan","Wokingham","Sed pharetra, felis eget",2619),
  ("Whittlesey","Caen","ipsum. Suspendisse",585),
  ("Mitú","Devonport","ut, nulla. Cras",2596),
  ("Barranca","Silvan","Curabitur vel lectus. Cum sociis",2751);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("South Perth","Okene","eu odio tristique",573),
  ("Ryazan","Oxford","Cras vehicula aliquet libero.",235),
  ("Ceuta","Oslo","ridiculus mus. Aenean eget",1984),
  ("Palmerston North","Banjarmasin","interdum ligula eu enim.",1800),
  ("Spaniard's Bay","Logroño","amet ultricies sem magna",1712),
  ("Monte San Savino","Kaluga","vitae sodales nisi magna sed",2422),
  ("Mesoraca","Jeju","ornare. In faucibus.",1594),
  ("Nazilli","Edremit","mattis. Cras eget nisi",221),
  ("Sumy","Jeju","et,",1789),
  ("Gboko","Kaluga","dictum sapien. Aenean massa.",2472);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Mahikeng","Onze-Lieve-Vrouw-Lombeek","Proin vel nisl.",727),
  ("Bischofshofen","Mandai","mauris ipsum",1298),
  ("Santander","Tân An","iaculis nec, eleifend",615),
  ("Dutse","Odessa","metus. Aenean",611),
  ("Serangoon","Lorient","imperdiet ullamcorper. Duis at",926),
  ("Panjim","Kherson","nec tempus mauris erat",2838),
  ("Xinjiang","Bischofshofen","est, congue a,",2464),
  ("Nässjö","Tlaquepaque","Quisque imperdiet, erat",643),
  ("Okene","Carterton","Aliquam tincidunt, nunc",2536),
  ("Belfast","Pekanbaru","ante ipsum",2932);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Tomaszów Mazowiecki","Cáceres","amet ornare",1757),
  ("Cajamarca","Pangkalpinang","sollicitudin orci",1745),
  ("Jeju","Vichy","feugiat non, lobortis",250),
  ("Amsterdam","Chulucanas","lorem ac risus.",2725),
  ("Trondheim","Delicias","amet metus. Aliquam erat",583),
  ("Aguazul","São João de Meriti","Cum sociis natoque penatibus et",323),
  ("San Pablo","Ełk","est. Nunc ullamcorper, velit",1422),
  ("Jauchelette","Mattersburg","ultricies sem magna nec",1737),
  ("Sommethonne","Kalush","a, magna. Lorem",631),
  ("Collipulli","San Juan de Girón","risus varius orci,",1425);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Denpasar","San Rafael Abajo","orci",1638),
  ("Faridabad","Sabanalarga","egestas. Sed pharetra,",813),
  ("Mackay","Foz do Iguaçu","nunc sit",1094),
  ("Watson Lake","Jilin","vel arcu. Curabitur",1127),
  ("Riosucio","Rotorua","Aliquam tincidunt,",1418),
  ("Thái Nguyên","Colico","mauris",1176),
  ("Mandal","Windsor","eu, ultrices",2192),
  ("Koppervik","Mexico City","sed, est.",319),
  ("Bethlehem","St. Pölten","sit amet diam",2046),
  ("Dörtyol","Baracaldo","Quisque varius. Nam porttitor",803);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Gönen","Weiz","lacinia at, iaculis quis,",780),
  ("Los Lagos","Odessa","sit amet, faucibus ut,",2933),
  ("Simpang","Kraków","lobortis ultrices.",2081),
  ("Purulia","Montigny-lès-Metz","semper rutrum. Fusce dolor quam,",2134),
  ("Tehuacán","Gyeongju","Aenean eget",1696),
  ("Nijmegen","Haren","tempor lorem,",2308),
  ("Tyumen","Bydgoszcz","nunc ac mattis ornare, lectus",1733),
  ("Bauchi","Vashkivtsi","lorem",1059),
  ("Billings","Sogamoso","quis, tristique ac, eleifend",2633),
  ("Dublin","Kakisa","in sodales elit erat vitae",1797);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Lelystad","Madrid","quam, elementum at, egestas a,",1601),
  ("Zielona Góra","Darmstadt","Quisque tincidunt pede",904),
  ("Melilla","Cambridge","mauris, aliquam eu,",2671),
  ("Istanbul","Semarang","ipsum dolor sit amet,",1433),
  ("Baranello","Bauchi","diam. Sed",2717),
  ("Gliwice","Talcahuano","tincidunt pede ac urna.",1642),
  ("Rio Verde","Gunungsitoli","nisi. Aenean",1074),
  ("Marlborough","Kavaratti","Nam porttitor",1908),
  ("San Juan del Río","Baubau","sapien.",1436),
  ("Harstad","Piotrków Trybunalski","bibendum sed, est.",2680);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Salzburg","Đông Hà","vel, faucibus id, libero. Donec",819),
  ("Chihuahua","Whitehorse","neque pellentesque massa",738),
  ("Sengkang","San Carlos","est,",2149),
  ("Vienna","Cañas","semper pretium neque.",1198),
  ("Galway","Borongan","faucibus. Morbi vehicula. Pellentesque",1630),
  ("Bremen","Newton","egestas a, scelerisque sed,",1674),
  ("Belgrave","Tehuacán","Phasellus elit pede, malesuada",2324),
  ("Westport","Hoogeveen","sit amet,",2479),
  ("Dublin","Banjar","volutpat. Nulla facilisis. Suspendisse",2806),
  ("San Rafael","Sorsogon City","egestas ligula. Nullam feugiat placerat",235);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Iksan","Wha Ti","vitae, erat. Vivamus nisi.",2181),
  ("Isabela City","Koszalin","tincidunt, nunc ac mattis ornare,",1977),
  ("Slough","Nevers","Fusce aliquam, enim nec",2183),
  ("Bais","Orhangazi","nec enim. Nunc ut erat.",253),
  ("Siena","Rüsselsheim","tortor. Nunc commodo auctor velit.",2546),
  ("Galway","Anamur","malesuada.",466),
  ("Cork","Tromsø","fames ac turpis",2159),
  ("Zavitinsk","Parramatta","euismod urna. Nullam lobortis",223),
  ("Bergen Mons","Bloemfontein","Nunc ac sem ut dolor",424),
  ("Giyani","Loughborough","mollis. Duis sit",1801);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Attock","Kuruman","ornare. In faucibus.",2410),
  ("Dunfermline","Salvador","congue a, aliquet vel,",2284),
  ("Changi Bay","Dangjin","ornare,",2212),
  ("Kongsvinger","Rechnitz","odio. Nam interdum",2576),
  ("Estevan","Cartagena del Chairá","ultrices.",2186),
  ("Jhang","Develi","aliquet odio. Etiam",1171),
  ("La Dorada","Gols","lacus, varius et,",2978),
  ("Moss","Chaumont-Gistoux","nec,",2783),
  ("Jiangxi","Tank","primis",1270),
  ("Devonport","Daegu","penatibus et",2911);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("La Rochelle","Lancaster","molestie pharetra nibh. Aliquam",1837),
  ("Itanagar","Gillette","id sapien. Cras",909),
  ("Depok","Cabo de Santo Agostinho","egestas ligula. Nullam",2633),
  ("Albacete","Galway","laoreet ipsum.",2631),
  ("Jørpeland","Riparbella","magnis dis parturient montes,",252),
  ("Munich","Hallein","turpis. Nulla aliquet. Proin",2821),
  ("Blumenau","Ternopil","magnis dis",248),
  ("Norman","Bila Tserkva","non ante",1300),
  ("Fortaleza","Cork","vel sapien imperdiet ornare.",1410),
  ("Yunnan","Dublin","Nam nulla magna, malesuada vel,",175);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Swan Hill","Canberra","dui. Cum sociis natoque",873),
  ("Rangiora","Galway","vel sapien imperdiet",1575),
  ("Pontianak","Gimcheon","in, tempus eu, ligula. Aenean",564),
  ("Dublin","Aschaffenburg","laoreet lectus",2306),
  ("Mödling","Gary","dictum sapien. Aenean massa.",2639),
  ("Querétaro","Magadan","consequat enim",1024),
  ("Coatbridge","Ełk","eros. Proin ultrices. Duis",1141),
  ("Jeju","Ockelbo","dignissim lacus. Aliquam",2113),
  ("Rodgau","Bethlehem","dictum. Phasellus in",140),
  ("South Jakarta","Guarulhos","urna. Nullam lobortis quam a",2040);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Santander","Plato","sed, facilisis vitae,",546),
  ("Bally","Sapele","rutrum lorem ac risus. Morbi",1580),
  ("Huacho","Jayapura","tempor augue ac ipsum. Phasellus",838),
  ("Victor Harbor","Vienna","natoque penatibus et magnis",967),
  ("Hebei","Illapel","tortor at risus. Nunc ac",1666),
  ("Palma de Mallorca","Palma de Mallorca","amet metus. Aliquam erat volutpat.",2298),
  ("Dutse","Onitsha","ipsum. Phasellus vitae mauris sit",1575),
  ("Gorzów Wielkopolski","Zirl","tempus mauris erat eget",1392),
  ("Kieldrecht","Stargard Szczeciński","ac",2786),
  ("Bukit Panjang","Tame","vulputate, nisi",709);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Imphal","Jilin","metus. Aliquam",2105),
  ("Darwin","Mmabatho","mollis. Duis",373),
  ("Watson Lake","Belfast","lobortis risus.",2181),
  ("Weißenfels","Opole","facilisis non, bibendum sed,",1584),
  ("Kallang","Madrid","orci",673),
  ("Gliwice","Đà Nẵng","massa non ante",1501),
  ("Voitsberg","Chungju","amet, faucibus ut, nulla.",180),
  ("Los Mochis","Tacoma","feugiat non, lobortis",2128),
  ("Hunan","Boo","luctus",1345),
  ("Killa Abdullah","Orenburg","erat, eget tincidunt",55);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Padang Sidempuan","Charters Towers","risus. Donec",2016),
  ("Hidalgo del Parral","Zeist","Praesent interdum ligula eu",1888),
  ("Tropea","Santiago","Aenean sed pede",2081),
  ("Basingstoke","Murray Bridge","neque vitae semper egestas,",936),
  ("College","Casper","lorem semper auctor.",2164),
  ("Ibagué","Antofagasta","libero. Donec consectetuer mauris",2178),
  ("Goes","Virginal-Samme","velit",2095),
  ("Querétaro","Palangka Raya","adipiscing fringilla,",135),
  ("Napoli","Murcia","Donec tincidunt. Donec",2651),
  ("Mount Pearl","Nurdağı","tempus risus.",1150);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Guangxi","Knighton","scelerisque scelerisque dui.",42),
  ("Itanagar","Río Claro","mauris",575),
  ("Guizhou","Porto Alegre","magna. Duis",2025),
  ("Rangiora","Ijebu Ode","massa non",1176),
  ("Guadalajara","Kemerovo","eleifend",2151),
  ("San Juan (San Juan de Tibás]","Beauvais","ac orci.",2982),
  ("Aguacaliente (San Francisco]","Berlare","nulla. Integer",870),
  ("Madison","Qinghai","scelerisque mollis.",161),
  ("Rustenburg","Eindhoven","turpis egestas. Fusce",2731),
  ("Lanklaar","Katsina","enim commodo hendrerit.",2172);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Niterói","Xinjiang","Sed neque. Sed eget lacus.",1092),
  ("Armidale","Muntinlupa","Etiam ligula tortor,",2030),
  ("Bila Tserkva","Den Helder","aliquam arcu. Aliquam ultrices",93),
  ("Höchst","Siquirres","Suspendisse aliquet, sem",1579),
  ("Zona Bananera","Lisciano Niccone","nulla. In tincidunt",2283),
  ("Marawi","Çaldıran","nec tempus scelerisque, lorem",2227),
  ("Chuncheon","Oaxaca","lacinia. Sed congue, elit",858),
  ("Béthune","Lidköping","est. Nunc ullamcorper,",2456),
  ("Ibadan","Okene","pretium et, rutrum non,",1094),
  ("Inner Mongolia","Murcia","Nunc sed",860);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Bonnyrigg","Tarma","enim diam vel",1221),
  ("Shanghai","Athens","Pellentesque habitant",2852),
  ("Ponta Grossa","Okpoko","Sed neque.",2958),
  ("Achalpur","Sovizzo","tellus sem",1369),
  ("Kurgan","Zoetermeer","Mauris vel turpis.",1639),
  ("Florø","Hertford","rhoncus",2603),
  ("Falun","Bukit Timah","neque",2993),
  ("Paillaco","Hamilton","ipsum. Suspendisse non leo. Vivamus",2128),
  ("Irapuato","Belfast","eros.",2392),
  ("Chelmsford","Mokpo","a mi",67);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Pskov","Odessa","Aliquam tincidunt, nunc",949),
  ("Hamburg","Gävle","rutrum non, hendrerit",2731),
  ("Makiivka","Huaraz","rutrum, justo. Praesent",271),
  ("Naushahro Firoze","Potchefstroom","ornare, facilisis eget,",1049),
  ("Linköping","Vienna","sed pede. Cum",533),
  ("Cairns","Pangnirtung","orci",2694),
  ("Roccasicura","Tejar","ut",269),
  ("Mariquina","Long Eaton","convallis in, cursus",1469),
  ("Minna","Da Lat","justo eu arcu. Morbi sit",388),
  ("Monacilioni","Watson Lake","mollis. Integer",1738);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Ambon","Dreieich","ornare, facilisis",643),
  ("Preore","Yunnan","urna. Ut tincidunt vehicula",727),
  ("Stroitel","Frederikstad","est, mollis non,",444),
  ("Weiz","Maiduguri","in, dolor. Fusce",2005),
  ("Kharabali","Limoges","ipsum sodales purus, in",2056),
  ("Hoogeveen","Aparecida de Goiânia","nonummy. Fusce",1100),
  ("Cajamarca","Boryeong","felis eget varius",1944),
  ("Hamburg","Deutschkreutz","imperdiet",1208),
  ("Houston","Central Water Catchment","Nam ac nulla. In tincidunt",1221),
  ("Ijebu Ode","Torrejón de Ardoz","mi lacinia",427);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Ålesund","Marina South","tempor arcu.",1306),
  ("Pangkalpinang","Rawalakot","adipiscing elit.",2583),
  ("Saltara","Bremen","enim, condimentum eget, volutpat",946),
  ("Jacobabad","Colombo","lectus rutrum",1809),
  ("Sohbatpur","Arauca","Mauris non dui",1293),
  ("Liaoning","Port Harcourt","felis. Donec tempor,",693),
  ("Tarnów","Orenburg","nunc. In at pede. Cras",1854),
  ("Nelspruit","Palmerston","mollis",800),
  ("Schwalbach","Llaillay","in consequat enim",542),
  ("Mandai","Oss","Sed nunc est,",709);
INSERT INTO `direccion` (`estado`,`ciudad`,`calle`,`numero_calle`)
VALUES
  ("Victor Harbor","Maiduguri","cursus. Integer",1073),
  ("Juazeiro","Puno","posuere,",2291),
  ("San Nicolás de los Garza","Ryazan","mauris eu elit.",1795),
  ("Juliaca","San Felipe","arcu. Vestibulum",1533),
  ("Samara","Belfast","tincidunt dui augue",1662),
  ("Chimbote","Palu","faucibus leo, in",739),
  ("Bognor Regis","İmamoğlu","tristique ac,",1279),
  ("Tianjin","Campina Grande","id, mollis nec, cursus",2703),
  ("Ternopil","Kavaratti","arcu. Vestibulum ante ipsum primis",2449),
  ("Allentown","Huế","odio a purus. Duis",622);
