CREATE DATABASE task_1;
CREATE TABLE bus__table(bus_id int ,
bus_name varchar(25),
depo varchar(40) ,
bus_noOfstops int, 
bus_noofseat int, 
bus_noofgirlseat int, 
bus_noofboysseat int ,
bus_drivername varchar(30), 
bus_conductorname varchar(30) ,
bus_destination varchar(30));
INSERT INTO bus__table VALUES(1,'KSRTC','KSRTCDEPO1',5,55,	20,	20,	'DRIVER1',	'CONDUCTOR1',	'HASSAN');
INSERT INTO bus__table VALUES(2,'RAJAHAMSA','KSRTCDEPO2',4,55,	20,	20,	'DRIVER2',	'CONDUCTOR2',	'BNG');
INSERT INTO bus__table VALUES(3,'BMTC','KSRTCDEPO3',25,55,	20,	20,	'DRIVER3',	'CONDUCTOR3',	'BUS STAND');
INSERT INTO bus__table VALUES(4,'KSRTC','KSRTCDEPO4',5,55,	20,	20,	'DRIVER4',	'CONDUCTOR4',	'DAVANGERE');
INSERT INTO bus__table VALUES(5,'RAJAHAMSA','KSRTCDEPO5',5,55,	20,	20,	'DRIVER5',	'CONDUCTOR5',	'HASSAN');
INSERT INTO bus__table VALUES(6,'KSRTC','KSRTCDEPO1',5,55,	20,	20,	'DRIVER6',	'CONDUCTOR6',	'BNG');
INSERT INTO bus__table VALUES(7,'REDBUS','KSRTCDEPO2',1,55,	20,	20,	'DRIVER8',	'CONDUCTOR7',	'HNPURA');
INSERT INTO bus__table VALUES(8,'RAJAHAMSA','KSRTCDEPO3',1,55,	20,	20,	'DRIVER9',	'CONDUCTOR9',	'HUBALLI');
INSERT INTO bus__table VALUES(9,'REDBUS','KSRTCDEPO4',1,55,	20,	20,	'DRIVER10',	'CONDUCTOR10',	'PUNE');
INSERT INTO bus__table VALUES(10,'KSRTC','KSRTCDEPO5',5,55,	20,	20,	'DRIVER1',	'CONDUCTOR1',	'MYSORE');
INSERT INTO bus__table VALUES(11,'RAJAHAMSA','KSRTCDEPO1',1,55,	20,	20,	'DRIVER2',	'CONDUCTOR2',	'HASSAN');
INSERT INTO bus__table VALUES(12,'REDBUS','KSRTCDEPO2',1,55,	20,	20,	'DRIVER3',	'CONDUCTOR3',	'PUNE');
INSERT INTO bus__table VALUES(13,'BMTC','KSRTCDEPO3',25,55,	20,	20,	'DRIVER4',	'CONDUCTOR4',	'BUSSTAND');
INSERT INTO bus__table VALUES(14,'KSRTC','KSRTCDEPO4',5,55,	20,	20,	'DRIVER5',	'CONDUCTOR5',	'HASSAN');
INSERT INTO bus__table VALUES(15,'BMTC','KSRTCDEPO5',25,55,	20,	20,	'DRIVER6',	'CONDUCTOR6',	'HASSAN');
INSERT INTO bus__table VALUES(16,'KSRTC','KSRTCDEPO1',5,55,	20,	20,	'DRIVER7',	'CONDUCTOR7',	'BIDAR');
INSERT INTO bus__table VALUES(17,'KSRTC','KSRTCDEPO2',5,55,	20,	20,	'DRIVER8',	'CONDUCTOR8',	'GULBARGA');
INSERT INTO bus__table VALUES(18,'KSRTC','KSRTCDEPO3',5,55,	20,	20,	'DRIVER9',	'CONDUCTOR9',	'UDUPI');
INSERT INTO bus__table VALUES(19,'BMTC','KSRTCDEPO4',25,55,	20,	20,	'DRIVER10',	'CONDUCTOR10',	'MYSORE');
INSERT INTO bus__table VALUES(20,'RAJAHAMSA','KSRTCDEPO5',1,55,	20,	20,	'DRIVER1',	'CONDUCTOR1',	'HASSAN');

SELECT * FROM bus__table;


/*filtering data*/
SELECT *FROM bus__table WHERE bus_id=2;
SELECT *FROM bus__table WHERE bus_noOfstops=4;
SELECT *FROM bus__table WHERE bus_noofseat=55;
SELECT *FROM bus__table WHERE bus_noofseat=5;
SELECT *FROM bus__table WHERE bus_id=10;

/*updating data */
SELECT * FROM bus__table;
UPDATE bus__table SET bus_drivername='MAHADEV' WHERE   bus_id=1;
UPDATE bus__table SET bus_drivername='MAHA' WHERE   bus_conductorname='CONDUCTOR1';   
UPDATE bus__table SET bus_drivername='MAHADEV' WHERE   bus_id=1;
UPDATE bus__table SET bus_destination='mangaluru' WHERE   bus_id=10;
UPDATE bus__table SET bus_conductorname='mahesh' WHERE   bus_id=15;

/* deliting */
DELETE FROM bus__table WHERE bus_id=1;
rollback;
SELECT * FROM bus__table;
/* DELETE FROM bus__table where bus_id=2;  */
rollback;

/* and operator*/
SELECT *FROM bus__table where bus_id=2 AND bus_id=4;
SELECT *FROM bus__table where bus_id=5 AND bus_noOfstops=5;
SELECT *FROM bus__table where bus_id=3 AND bus_id=4;
SELECT *FROM bus__table where bus_name='bmtc' AND bus_noofseat=55;
SELECT *FROM bus__table where bus_name='bmtc' AND bus_destination='busstand';

/* between operator */
SELECT * FROM bus__table WHERE bus_name BETWEEN 'BMTC' AND 'RAJAHAMSA';
SELECT * FROM bus__table WHERE bus_id BETWEEN 3 AND 10;
SELECT * FROM bus__table WHERE bus_drivername BETWEEN 'driver3' AND 'driver8';
SELECT * FROM bus__table WHERE bus_conductorname BETWEEN 'conductor3' AND 'conductor4';
SELECT * FROM bus__table WHERE bus_id BETWEEN 10 AND 20;


/* or operator */
SELECT *FROM bus__table WHERE bus_noOfstops=5 or bus_conductorname='conductor4';
SELECT *FROM bus__table WHERE bus_id=5 or bus_conductorname='conductor4';
SELECT *FROM bus__table WHERE bus_noOfstops=5 or bus_conductorname='conductor4';
SELECT *FROM bus__table WHERE bus_noOfstops=5 or bus_conductorname='CONDUCTOR4';  
SELECT *FROM bus__table WHERE bus_id=10 or bus_id=12;

/* IN OPERATOR */
SELECT *FROM bus__table WHERE bus_id in(4,6,7,1,2,8);
SELECT *FROM bus__table WHERE bus_conductorname in('conductor3','conductor4');
SELECT *FROM bus__table WHERE bus_destination in('hassan','pune','busstand');
SELECT *FROM bus__table WHERE bus_id in(4,9,7,18);
SELECT *FROM bus__table WHERE bus_id in(5,9,12,0);


/* not operator */
SELECT *FROM bus__table WHERE bus_id not in(4,6,7,1,2,8);
SELECT *FROM bus__table WHERE bus_conductorname not in('conductor3','conductor4');
SELECT *FROM bus__table WHERE bus_destination not in('hassan','pune','busstand');
SELECT *FROM bus__table WHERE bus_id not in(4,9,7,18);
SELECT *FROM bus__table WHERE bus_id not in(5,9,12,0);


/* Table 2 */

CREATE TABLE district__table(district_id int ,
district_name varchar(25) ,
taluk int ,
district_special varchar(30), 
district_airport varchar(30) ,
district_bus_standname varchar(30), 
district_courts int ,
international_school int, 
mla varchar(40) ,
no_of_villages int);
SELECT *FROM district__table;
INSERT INTO district__table VALUES(1,'DARAVADA',7,'TRADITIONAL_CULTURE','no','STAND1',4,16,'MLA1',88);
INSERT INTO district__table VALUES(2,'DARAVADA',3,'TRADITIONAL_CULTURE','no','STAND2',4,16,'MLA2',88);
INSERT INTO district__table VALUES(3,'DARAVADA',8,'TRADITIONAL_CULTURE','no','STAND3',4,16,'MLA3',88);
INSERT INTO district__table VALUES(4,'HASSAN',7,'TRADITIONAL_CULTURE','YES','STAND4',4,16,'MLA4',88);
INSERT INTO district__table VALUES(5,'DARAVADA',9,'TRADITIONAL_CULTURE','YES','STAND5',4,16,'MLA5',88);
INSERT INTO district__table VALUES(6,'GULBARGA',10,'TRADITIONAL_CULTURE','no','STAND6',4,16,'MLA6',88);
INSERT INTO district__table VALUES(7,'MYSORE',7,'TRADITIONAL_CULTURE','no','STAND7',4,16,'MLA7',88);
INSERT INTO district__table VALUES(8,'CHITRADURGA',9,'KOTE','YES','STAND8',4,16,'MLA8',88);
INSERT INTO district__table VALUES(9,'BIDAR',12,'TEMPARATURE','no','STAND9',4,16,'MLA9',88);
INSERT INTO district__table VALUES(10,'KODSAGU',17,'RAIN','no','STAND10',4,16,'MLA10',88);
INSERT INTO district__table VALUES(11,'CHITRADURGA',13,'KOTE','no','STAND11',4,16,'MLA11',88);
INSERT INTO district__table VALUES(12,'HASSAN',6,'TRADITIONAL_CULTURE','no','STAND12',4,16,'MLA12',88);
INSERT INTO district__table VALUES(13,'MYSORE',8,'PALACE','no','STAND13',4,16,'MLA13',88);
INSERT INTO district__table VALUES(14,'BNG',9,'TRAFFIC','YES','STAND14',4,16,'MLA14',88);
INSERT INTO district__table VALUES(15,'BIDAR',2,'TRADITIONAL_CULTURE','no','STAND15',4,16,'MLA15',88);
INSERT INTO district__table VALUES(16,'DARAVADA',5,'TRADITIONAL_CULTURE','YES','STAND16',4,16,'MLA16',88);
INSERT INTO district__table VALUES(17,'DARAVADA',13,'TRADITIONAL_CULTURE','no','STAND17',4,16,'MLA17',88);
INSERT INTO district__table VALUES(18,'MYSORE',7,'TRADITIONAL_CULTURE','YES','STAND18',4,16,'MLA19',88);
INSERT INTO district__table VALUES(19,'UDUPI',7,'KRISHNA','YES','STAND19',4,16,'MLA19',88);
INSERT INTO district__table VALUES(20,'HASSAN',7,'BELURU','YES','STAND20',4,16,'MLA20',88);


/*filtering data*/
SELECT *FROM district__table WHERE district_id=2;
SELECT *FROM district__table WHERE taluk=9;
SELECT *FROM district__table WHERE district_courts=4;
SELECT *FROM district__table WHERE district_bus_standname='stand1';
SELECT *FROM district__table WHERE district_special='traditional_culture';

/*updating data */
SELECT * FROM district__table;
UPDATE district__table SET district_name='hassan' WHERE   district_id=1;
UPDATE district__table SET district_courts=9  WHERE   district_name='hassan';   
UPDATE district__table SET international_school=50 WHERE   district_id=1;
UPDATE district__table SET district_courts=7 WHERE   international_school=16;
UPDATE district__table SET district_name='hassan' WHERE   district_id=20;

/* deliting 
DELETE FROM bus__table WHERE bus_id=1;
rollback;                             
SELECT * FROM bus__table;
DELETE FROM bus__table where bus_id=2;
rollback; */

/* and operator*/
SELECT *FROM district__table where district_id=5 AND district_id=4;
SELECT *FROM district__table where international_school=16 AND district_courts=7;
SELECT *FROM district__table where district_id=3 AND district_name='hassan';
SELECT *FROM district__table where district_name='daravada' AND district_airport='no';
SELECT *FROM district__table where district_name='bng' AND district_airport='no';

/* between operator */
SELECT * FROM district__table;
SELECT * FROM district__table WHERE district_name BETWEEN 'daravada' AND 'hassan';
SELECT * FROM district__table WHERE district_id BETWEEN 3 AND 10;
SELECT * FROM district__table WHERE district_airport BETWEEN 'no' AND 'yes';
SELECT * FROM district__table WHERE no_of_villages BETWEEN '88' AND '70';
SELECT * FROM district__table WHERE district_id BETWEEN 10 AND 20;


/* or operator */
SELECT *FROM district__table WHERE district_name='hassan' or district_id=4;
SELECT *FROM district__table WHERE international_school=16 or international_school=17;
SELECT *FROM district__table WHERE district_id=4 or district_special='kote';
SELECT *FROM district__table WHERE district_special='traffic' or district_airport='yes';  
SELECT *FROM district__table WHERE district_id=10 or district_id=12;

/* IN OPERATOR */
SELECT *FROM district__table WHERE district_id in(4,6,7,1,2,8);
SELECT *FROM district__table WHERE district_special in('kote','traffic');
SELECT *FROM district__table WHERE international_school in(16,1,17);
SELECT *FROM district__table WHERE district_id in(4,9,7,18);
SELECT *FROM district__table WHERE district_id in(5,9,12,0);


/* not operator */
SELECT *FROM district__table WHERE district_id not in(4,6,7,1,2,8);
SELECT *FROM district__table WHERE international_school not in(16,1,17);
SELECT *FROM district__table WHERE district_special not in('kote','traffic');
SELECT *FROM district__table WHERE district_special not in('kote','traffic','traditional_culture');
SELECT *FROM district__table WHERE district_id not in(5,9,12,0);


/* task 3 */
 CREATE TABLE home__table(home_id int, 
home_name varchar(25) ,
Home_location varchar(30), 
home_taluk varchar(30) ,
district_district varchar(30), 
home_state varchar(30) ,
home_country varchar(30), 
home_members int ,
home_area varchar(40), 
home_head varchar(30));
desc home_table;
select *from home__table;
INSERT INTO home__table VALUES(1,'home1','hassan','hnpura','hassan','karnataka','india',4,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(2,'home2','bng','hnpura','hassan','karnataka','india',8,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(3,'home3','mandya','arakalagudu','hassan','karnataka','india',9,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(4,'home4','mysore','hnpura','hassan','karnataka','india',8,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(5,'home5','hassan','sakaleshpura','hassan','karnataka','india',4,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(6,'home6','daravada','beluru','hassan','karnataka','india',4,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(7,'home7','mysore','mandya','hassan','karnataka','india',4,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(8,'home8','gulbarga','hebbal','hassan','karnataka','india',4,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(9,'home9','bidar','hnpura','hassan','karnataka','india',4,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(10,'home10','hassan','hnpura','hassan','karnataka','india',4,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(11,'home11','bidar','hnpura','hassan','karnataka','india',4,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(12,'home12','hassan','halebidu','hassan','karnataka','india',8,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(13,'home13','hassan','dg','hassan','karnataka','india',1,'basavanagudi','sahana');
INSERT INTO home__table VALUES(14,'home14','udupi','hassan','hassan','karnataka','india',2,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(15,'home15','kerala','sakaleshapura','hassan','karnataka','india',3,'basavanagudi','nethra');
INSERT INTO home__table VALUES(16,'home16','pune','hnpura','hassan','karnataka','india',7,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(17,'home17','maharastra','hnpura','hassan','karnataka','india',5,'basavanagudi','deepa');
INSERT INTO home__table VALUES(18,'home18','hassan','hnpura','hassan','karnataka','india',5,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(19,'home19','hassan','hnpura','hassan','karnataka','india',8,'basavanagudi','shivalingappa A');
INSERT INTO home__table VALUES(20,'home20','hassan','hnpura','hassan','karnataka','india',7,'basavanagudi','jayamma b r');



/*filtering data*/
SELECT *FROM home__table WHERE home_id=2;
SELECT *FROM home__table WHERE home_taluk='hassan';
SELECT *FROM home__table WHERE home_state='karnataka';
SELECT *FROM home__table WHERE home_id=3;
SELECT *FROM home__table WHERE home_id=9;

/*updating data */
SELECT * FROM home__table;
UPDATE home__table SET home_taluk='belagavi' WHERE   home_members=4;
UPDATE home__table SET district_district='hassan'  WHERE  home_head='modi';   
UPDATE home__table SET home_name='nandadeepa' WHERE  home_id=1;
UPDATE home__table SET home_name='NS' WHERE  home_id=2;
UPDATE home__table SET home_name='SJ' WHERE  home_id=3;

/* deliting 
DELETE FROM bus__table WHERE bus_id=1;
rollback;                             
SELECT * FROM bus__table;
DELETE FROM bus__table where bus_id=2;
rollback; */

/* and operator*/
SELECT *FROM home__table where home_id=5 AND home_id=4;  /*something not uderstanding */
SELECT *FROM home__table where home_location='hassan' AND home_state='karnataka';
SELECT *FROM home__table where home_id=5 AND home_location='mysore';
SELECT *FROM home__table where home_id=5 AND home_location='hassan';
SELECT *FROM home__table where home_id=7 AND home_location='mysore';

/* between operator */
SELECT * FROM home__table;
SELECT * FROM home__table WHERE home_location BETWEEN 'mysore' AND 'hassan';
SELECT * FROM home__table WHERE home_id BETWEEN 3 AND 10;
SELECT * FROM home__table WHERE home_taluk BETWEEN 'hnpura' AND 'hassan';
SELECT * FROM home__table WHERE home_state BETWEEN 'karnataka' AND 'maharastra';
SELECT * FROM home__table WHERE home_area BETWEEN 'hassan' AND 'basavanagudi';


/* or operator */
SELECT *FROM home__table WHERE home_name='home1' or home_id=4;
SELECT *FROM home__table WHERE home_name='home6' or home_id=8;
SELECT *FROM home__table WHERE home_name='nandadeepa' or home_id=12;
SELECT *FROM home__table WHERE home_name='NS' or home_id=19;
SELECT *FROM home__table WHERE home_name='SJ' or home_id=20;


/* IN OPERATOR */
SELECT *FROM home__table WHERE home_id in(4,6,7,1,2,8);
SELECT *FROM home__table WHERE home_taluk in('hassan','hnpura','mysore');
SELECT *FROM home__table WHERE home_head in('shivalingappa A');
SELECT *FROM home__table WHERE home_id in(4,9,7,18);
SELECT *FROM home__table WHERE home_id in(5,9,12,0);


/* not operator */
SELECT *FROM home__table WHERE home_id not in(4,6,7,1,2,8);
SELECT *FROM home__table WHERE home_taluk not in('hassan','hnpura','mysore');
SELECT *FROM home__table WHERE home_head not in('shivalingappa A');
SELECT *FROM home__table WHERE home_id not in(4,9,7,18);
SELECT *FROM home__table WHERE home_id not in(5,9,12,0);




/* task4 */
CREATE TABLE mobile__table(mobile_id int ,
mobile_name varchar(25) ,
mobile_manufacture_location varchar(30), 
mobile_storage int ,
mobile_ramspeed int ,
mobile_lockopen varchar(30), 
mobile_colour varchar(30) ,
mobile_batterystorage int ,
mobile_special_feature varchar(40), 
mobile_weight int);
desc mobile__table;
SELECT*FROM mobile__table;
INSERT INTO mobile__table  VALUES(1,'SAMSUNG','BNG',128,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(2,'SAMSUNG','HASSAN',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(3,'SAMSUNG','MANDYA',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(4,'SAMSUNG','PUNE',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(5,'SAMSUNG','CHINA',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(6,'SAMSUNG','BNG',128,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(7,'SAMSUNG','MYSORE',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(8,'SAMSUNG','HASSAN',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 2);
INSERT INTO mobile__table  VALUES(9,'SAMSUNG','MANDYA',128,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(10,'SAMSUNG','CHINA',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(11,'SAMSUNG','MYSORE',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 2);
INSERT INTO mobile__table  VALUES(12,'SAMSUNG','BNG',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(13,'SAMSUNG','UDUPI',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(14,'SAMSUNG','BIDAR',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 2);
INSERT INTO mobile__table  VALUES(15,'SAMSUNG','BNG',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 2);
INSERT INTO mobile__table  VALUES(16,'SAMSUNG','BNG',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(17,'SAMSUNG','HASSAN',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(18,'SAMSUNG','BNG',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(19,'SAMSUNG','MANGLURU',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);
INSERT INTO mobile__table  VALUES(20,'SAMSUNG','BIDAR',64,4,'INDIAN','BLACK', 100,'PICTURE QUALITY', 1);



/*filtering data*/
SELECT *FROM mobile__table WHERE mobile_id=2;
SELECT *FROM mobile__table WHERE mobile_name='samsung';
SELECT *FROM mobile__table WHERE mobile_storage=64;
SELECT *FROM mobile__table WHERE mobile_id=20;
SELECT *FROM mobile__table WHERE mobile_id=4;

/*updating data */
SELECT * FROM mobile__table;
UPDATE mobile__table SET mobile_name='oppo' WHERE   mobile_weight=1;
UPDATE mobile__table SET  mobile_name='one+' WHERE   mobile_weight=2;   
UPDATE mobile__table SET mobile_name='redme' WHERE   mobile_id=2;
UPDATE mobile__table SET mobile_ramspeed=2 WHERE  mobile_weight=1;
UPDATE mobile__table SET mobile_ramspeed=2 WHERE  mobile_id=20;

/* deliting 
DELETE FROM bus__table WHERE bus_id=1;
rollback;                             
SELECT * FROM bus__table;
DELETE FROM bus__table where bus_id=2;
rollback; */

/* and operator*/
SELECT *FROM mobile__table where mobile_id=5 AND mobile_id=4;  /*something not uderstanding */
SELECT *FROM mobile__table where mobile_ramspeed=4 AND mobile_name='one+';
SELECT *FROM mobile__table where mobile_id=5 AND mobile_name='one+';
SELECT *FROM mobile__table where mobile_id=20 AND mobile_name='one+';
SELECT *FROM mobile__table where mobile_id=7 AND mobile_name='oppo';

/* between operator */
SELECT * FROM mobile__table;
SELECT * FROM mobile__table WHERE mobile_manufacture_location BETWEEN 'bng' AND 'pune';
SELECT * FROM mobile__table WHERE mobile_storage BETWEEN 128 AND 64;
SELECT * FROM mobile__table WHERE mobile_name BETWEEN 'oppo' AND 'redme';
SELECT * FROM mobile__table WHERE mobile_weight BETWEEN 1 AND 2;
SELECT * FROM mobile__table WHERE mobile_weight BETWEEN 1 AND 2;


/* or operator */
SELECT *FROM mobile__table WHERE mobile_name='oppo' or mobile_id=4;
SELECT *FROM mobile__table WHERE mobile_id=8 or mobile_id=9;
SELECT *FROM mobile__table WHERE mobile_id=11 or mobile_id=10;
SELECT *FROM mobile__table WHERE mobile_id=18 or mobile_id=9;
SELECT *FROM mobile__table WHERE mobile_id=8 or mobile_id=19;

/* IN OPERATOR */
SELECT *FROM mobile__table WHERE mobile_id in(4,6,7,1,2,8);
SELECT *FROM mobile__table WHERE mobile_name in('one+','oppo','samsung');
SELECT *FROM mobile__table WHERE mobile_lockopen in('indian');
SELECT *FROM mobile__table WHERE mobile_weight in(2);
SELECT *FROM mobile__table WHERE  mobile_weight in(1);


/* not operator */
SELECT *FROM mobile__table WHERE mobile_id not in(4,6,7,1,2,8);
SELECT *FROM mobile__table WHERE mobile_name not in('one+','oppo','samsung');
SELECT *FROM mobile__table WHERE mobile_lockopen not in('indian');
SELECT *FROM mobile__table WHERE mobile_weight not in(2);
SELECT *FROM mobile__table WHERE  mobile_weight not in(1);

/* TABLE 5 */
CREATE TABLE dog(dog_name varchar(12), dog_breed varchar(12), dog_age int, dog_color varchar(12), dog_gender varchar(8), dog_childern int, dog_ageLimit int, dog_eye int, dog_leg int, dog_tile int);
INSERT INTO dog VALUES("leo", "Pug", 7, "black", "male", 2, 15, 2, 4, 1);
INSERT INTO dog VALUES("puppy", "Pomerian", 5, "white", "female", 2, 13, 2, 4, 1);
INSERT INTO dog VALUES("lory", "Aidi", 5, "brown", "male", 2, 11, 2, 4, 1);
INSERT INTO dog VALUES("clena", "pug", 3, "black", "female", 2, 13, 2, 4, 1);
INSERT INTO dog VALUES("luno", "Akita", 6, "white-black", "female", 2, 10, 2, 4, 1);
INSERT INTO dog VALUES("leon", "Alapaha Blue", 5, "black", "male", 2, 12, 2, 4, 1);
INSERT INTO dog VALUES("ruffan", "street Dog", 8, "brown", "female", 2, 14, 2, 4, 1);
INSERT INTO dog VALUES("sweety", "pug", 5, "white", "female", 2, 13, 2, 4, 1);
INSERT INTO dog VALUES("ramu", "Akbash", 7, "black-white", "male", 2, 14, 2, 4, 1);
INSERT INTO dog VALUES("broo", "Alopekis", 6, "black", "female", 2, 13, 2, 4, 1);
INSERT INTO dog VALUES("bravey", "Bit", 7, "brown", "female", 2, 14, 2, 4, 1);
INSERT INTO dog VALUES("zuno", "Pomerian", 8, "black", "female", 2, 13, 2, 4, 1);
INSERT INTO dog VALUES("gahan", "Akbash", 6, "brown", "male", 2, 11, 2, 4, 1);
INSERT INTO dog VALUES("chamina", "Bully", 3, "black", "female", 2, 12, 2, 4, 1);
INSERT INTO dog VALUES("bruna", "Akita", 6, "white-black", "female", 2, 10, 2, 4, 1);
INSERT INTO dog VALUES("gumo", "Alapaha Blue", 7, "black", "male", 2, 12, 2, 4, 1);
INSERT INTO dog VALUES("maven", "street Dog", 8, "white", "female", 2, 14, 2, 4, 1);
INSERT INTO dog VALUES("lulu", "Akitha", 4, "black", "male", 2, 14, 2, 4, 1);
INSERT INTO dog VALUES("laven", "Akbash", 7, "black-white", "male", 2, 14, 2, 4, 1);
INSERT INTO dog VALUES("sonu", "Alopekis", 6, "black", "female", 2, 13, 2, 4, 1);

/*filtering */
SELECT* from dog;
SELECT * FROM dog WHERE dog_name="Leo";
SELECT * FROM dog WHERE dog_breed="pug";
SELECT * FROM dog WHERE dog_age=6;
SELECT * FROM dog WHERE dog_color="black";
SELECT * FROM dog WHERE dog_gender="female";


/* updating */
UPDATE dog SET dog_age = 9 WHERE dog_ageLimit=13;
UPDATE dog SET dog_name = 'puppies' WHERE dog_breed='Aidi';
UPDATE dog SET dog_childern = 15 WHERE dog_gender='male';
UPDATE dog SET dog_breed = 'Pomerian' WHERE dog_name='Leo';
UPDATE dog SET dog_ageLimit = 16 WHERE dog_age=7;


/* TABLE 6 */
CREATE TABLE building(buil_sl int, buil_name varchar(20), buil_owner Varchar(20), buil_type int, buil_room int, buil_windows int, buil_doors int, buil_floors int, buil_gate int, buil_lifts int, buil_homeTheatre int);
ALTER TABLE building modify column buil_type varchar(30);
select *from building;
INSERT INTO building VALUES(1, "brundavana", "naman", "residential", 50, 100, 20, 10,  5, 6, 5);
 INSERT INTO building VALUES(2, "palguni", "shreyas", "restorent", 20, 50, 60, 20,  8, 9, 2);
 INSERT INTO building VALUES(3, "empire", "narendra", "hotel", 5, 10, 2, 1,  2, 7, 6);
 INSERT INTO building VALUES(4, "love 360", "kamal", "caffe", 20, 40, 10, 30,  2, 9, 6);
 INSERT INTO building VALUES(5, "udupi hotel", "garuda", "hotel", 70, 170, 60, 20,  5, 8, 7); 
INSERT INTO building VALUES(6, "shanthivana", "karann", "residential", 150, 140, 120, 110,  15, 61, 52);
INSERT INTO building VALUES(7, "lakshmi nivas", "ranbir", "restorent", 25, 30, 20, 40,  18, 19, 23);
INSERT INTO building VALUES(8, "shri krishna nilya", "ranvir", "hotel", 6, 11, 3, 2,  3, 8, 7);
INSERT INTO building VALUES(9, "mahadeva", "sidharth", "mall", 200, 420, 110, 320,  12, 29, 16);
INSERT INTO building VALUES(10, "chiken center", "varun", "hotel", 73, 2270, 160, 210,  15, 18, 17);
INSERT INTO building VALUES(11, "parlur", "yash", "residential", 51, 122, 22, 17,  15, 16, 15);
INSERT INTO building VALUES(12, "saloon", "sudeep", "restorent", 90, 80, 30, 10,  18, 19, 12);
INSERT INTO building VALUES(13, "PG", "ganesh", "hotel", 5, 10, 2, 1,  2, 7, 6);
INSERT INTO building VALUES(14, "college", "darshan", "caffe", 30, 40, 40, 50,  12, 19, 16);
INSERT INTO building VALUES(15, "university", "prabudeva", "hotel", 80, 180, 30, 20,  15, 38, 27); 
INSERT INTO building VALUES(16, "office", "allu arjun", "residential", 50, 340, 220, 110,  15, 61, 52);
INSERT INTO building VALUES(17, "PG", "ram charan", "restorent", 25, 30, 20, 40,  18, 49, 23);
INSERT INTO building VALUES(18, "mall", "rajamouli", "hotel", 690, 110, 34, 22,  23, 28, 7);
INSERT INTO building VALUES(19, "trends", "prabhas", "mall", 200, 420, 110, 320,  12, 29, 16);
INSERT INTO building VALUES(20, "mart", "vikas", "hotel", 73, 2270, 160, 210,  15, 18, 17);

/*filtering */
SELECT * FROM building WHERE buil_sl=3;
SELECT * FROM building WHERE buil_name="brundavana";
SELECT * FROM building WHERE buil_owner="ranbir";
SELECT * FROM building WHERE buil_type="Hotel";
SELECT * FROM building WHERE buil_room=30;
SELECT * FROM building WHERE buil_windows=40;
SELECT * FROM building WHERE buil_doors=10;
SELECT * FROM building WHERE buil_floors=30;
SELECT * FROM building WHERE buil_gate=9;
SELECT * FROM building WHERE buil_lifts=10;
SELECT * FROM building WHERE buil_homeTheatre=3;

/*updating*/
 UPDATE building SET buil_name='parameshwara' WHERE buil_sl=2;
 UPDATE building SET buil_owner='gandhi' WHERE buil_lifts=6;
 UPDATE building SET buil_type='duplex' WHERE buil_floors=210;
 UPDATE building SET buil_room=50 WHERE buil_gate=18;
 UPDATE building SET buil_doors=220 WHERE buil_sl=5;
 
 /*TABLE 7 */
 CREATE TABLE country(coun_sl int, coun_name varchar(34), coun_numStates int, coun_numDisrct int, coun_capital int, coun_president int, coun_nationalAnimal varchar(45), coun_nationalTree varchar(56), coun_natinalBird varchar(34), coun_rivers int);
DESC country;
SELECT * FROM country;
INSERT INTO country VALUES(1, 'India', 32, 134, 1, 1, 'Tiger', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(2, 'pakistan', 30, 23, 1, 1, 'lion', 'orange', 'parrot', 25324); 
INSERT INTO country VALUES(3, 'afganisthan', 21, 454, 1, 1, 'elephant', 'kewi', 'pigen', 54324); 
INSERT INTO country VALUES(4, 'bhutan', 20, 224, 1, 1, 'tog', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(5, 'srilanka', 31, 34, 1, 1, 'chith', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(6, 'nepal', 32, 24, 1, 1, '', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(7, 'china', 30, 234, 1, 1, 'Bear', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(8, 'america', 30, 234, 1, 1, 'Porcupine', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(9, 'US', 30, 234, 1, 1, 'Tiger', 'Rabbit', 'peakock', 24324); 
INSERT INTO country VALUES(10, 'USA', 30, 234, 1, 1, 'Tiger', 'Emu', 'peakock', 24324); 
INSERT INTO country VALUES(11, 'swizerland', 30, 234, 1, 1, 'Tortoise', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(12, 'south africa', 30, 234, 1, 1, 'Jackal', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(13, 'korea', 30, 234, 1, 1, 'Chimpanzee', 'Chimpanzee', 'peakock', 24324); 
INSERT INTO country VALUES(14, 'austrilia', 30, 234, 1, 1, 'TigAntelopeer', 'Antelope', 'peakock', 24324); 
INSERT INTO country VALUES(15, 'west indies', 30, 234, 1, 1, 'Tiger', 'Bat', 'peakock', 24324);
INSERT INTO country VALUES(16, 'bangladesh', 30, 234, 1, 1, 'Badger', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(17, 'Russia', 30, 234, 1, 1, 'Crow', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(18, 'Ukrian', 30, 234, 1, 1, 'Tiger', 'Mango', 'peakock', 24324); 
INSERT INTO country VALUES(19, 'New zea land', 30, 234, 1, 1, 'Tiger', 'Mango', 'peakock', 24324);
INSERT INTO country VALUES(20, 'africa', 30, 234, 1, 1, 'Tiger', 'Mango', 'peakock', 24324); 

/* filtering */
SELECT * FROM country WHERE coun_sl=1;
SELECT * FROM country WHERE coun_name='pakistan';
SELECT * FROM country WHERE coun_numStates=30;
SELECT * FROM country WHERE coun_numDisrct=244;
SELECT * FROM country WHERE coun_capital=1;
SELECT * FROM country WHERE coun_president=2;
SELECT * FROM country WHERE coun_nationalAnimal='lion';
SELECT * FROM country WHERE coun_nationalTree='Mango';
SELECT * FROM country WHERE coun_nationalBird='parrot';
SELECT * FROM country WHERE coun_rivers=123;

/* updating */

UPDATE country SET coun_nationalAnimal='chith' WHERE coun_sl=16;
UPDATE country SET coun_numStates=56 WHERE coun_natinalBird='pigen';
UPDATE country SET coun_name='zizambe' WHERE coun_sl=17;
UPDATE country SET coun_rivers=64321 WHERE coun_nationalAnimal='tog';
UPDATE country SET coun_nationalAnimal='dog' WHERE coun_sl=5;



/* TABLE 9 */

CREATE TABLE water(Water_sl int, water_color int, water_types int, water_liters int, water_kaveriLit int, water_element int, water_conOxygen int, water_conHydrogen int, water_inGanga int, water_otherName Varchar(3));
desc water;
ALTER TABLE water modify column water_color varchar(30);
INSERT INTO water VALUES(1, 'white',10,612,9762,2, 41603, 93213, 385463, 'co2');
INSERT INTO water VALUES(2, 'blue',12,658,9562,2, 55552, 6655, 46454, 'c02');
INSERT INTO water VALUES(3, 'black',9,692,9562,2, 6546, 1241, 945646, 'h2o');
INSERT INTO water VALUES(4, 'orange',34,152,9562,2, 41613, 55513, 685463, 'h2o');
INSERT INTO water VALUES(5, 'purple',5,682,9562,2, 54135, 13213, 685463, 'h2o');
INSERT INTO water VALUES(6, 'navy',34,672,9562,2, 32434, 12413, 685463, 'h2o');
INSERT INTO water VALUES(7, 'red',23,632,9562,2, 4534, 5523, 685463, 'h2o');
INSERT INTO water VALUES(8, 'pink',10,622,9562,2, 41613, 6454, 685463, 'h2o');
INSERT INTO water VALUES(9, 'yellow',10,352,9562,2, 64135, 33123, 4654, 'h2o');
INSERT INTO water VALUES(10, 'white',10,612,9562,2, 419913, 64513, 5653, 'h2o');
INSERT INTO water VALUES(11, 'white',57,622,9562,2, 32131, 6543, 5132, 'h2o');
INSERT INTO water VALUES(12, 'blue',23,642,9562,2, 3132, 6535, 685463, 'h2o');
INSERT INTO water VALUES(13, 'red',12,612,9562,2, 3132, 55336, 454555, 'h2o');
INSERT INTO water VALUES(14, 'orange',21,622,9562,2, 3132, 65435, 653, 'h2o');
INSERT INTO water VALUES(15, 'white',10,252,9562,2, 41683, 6435, 685463, 'h2o');
INSERT INTO water VALUES(16, 'white',10,152,9562,2, 66533, 84545, 685463, 'h2o');
INSERT INTO water VALUES(17, 'brown',32,252,9562,2, 3433454, 1236546, 234234, 'h2o');
INSERT INTO water VALUES(18, 'white',12,642,9562,2, 24224, 56135, 63435, 'h2o');
INSERT INTO water VALUES(19, 'black',61,612,9562,2, 2432, 513212, 2342, 'h2o');
INSERT INTO water VALUES(20, 'white',45,752,9562,2, 234535, 351352, 645464, 'h2o');

/* filtering */
SELECT * FROM water WHERE water_sl =7;
SELECT * FROM water WHERE water_color ='blue';
SELECT * FROM water WHERE water_types =34;
SELECT * FROM water WHERE water_liters =152;
SELECT * FROM water WHERE water_kaveriLit =65469;
SELECT * FROM water WHERE water_element =8;
SELECT * FROM water WHERE water_conOxygen =41613;
SELECT * FROM water WHERE water_conHydrogen =6543;
SELECT * FROM water WHERE water_inGanga =5132;
SELECT * FROM water WHERE water_otherName ='co2';

/* updating*/
SELECT * FROM water;
UPDATE Water SET water_types=15 WHERE Water_sl=2;
UPDATE Water SET water_color='blue' WHERE Water_kaveriLit=9762;
UPDATE Water SET water_liters=152 WHERE Water_inGanga=685463;
UPDATE Water SET water_element=3 WHERE Water_kaveriLit=9562;
UPDATE Water SET water_types=15 WHERE Water_sl=3;

/*9TH TABLE */
CREATE TABLE satalite(sat_sl int, sat_type int, sat_moon int, sat_dressPrice int, sat_inmem int, sat_cost int, sat_components int, sat_metal int, sat_tv int, sat_dir varchar(20)); 
desc satalite;
ALTER TABLE satalite MODIFY COLUMN sat_cost long;
INSERT INTO satalite VALUES(1, 200, 1, 80000000.00, 5, 64423213255312, 25, 34, 1, "elon musk");
INSERT INTO satalite VALUES(2, 355, 1, 82000000.00, 1, 64423213255312, 25, 34, 1, "TATA");
INSERT INTO satalite VALUES(3, 130, 1, 83000000.00, 3, 64423218255312, 25, 34, 1, "modi");
INSERT INTO satalite VALUES(4, 342, 1, 84000000.00, 4, 644232112255312, 25, 34, 1, "naveen");
INSERT INTO satalite VALUES(5, 120, 1, 88000000.00, 5, 64423217955312, 25, 34, 1, "glyson");
INSERT INTO satalite VALUES(6, 670, 1, 87000000.00, 6, 644232125855312, 25, 34, 1, "pranb");
INSERT INTO satalite VALUES(7, 100, 1, 85000000.00, 2, 6442321325534657, 25, 34, 1, "ambani");
INSERT INTO satalite VALUES(8, 230, 1, 86500000.00, 4, 64423213255355, 25, 34, 1, "adani");
INSERT INTO satalite VALUES(9, 450, 1, 82300000.00, 5, 64423213255544, 25, 34, 1, "naval");
INSERT INTO satalite VALUES(10,450, 1, 85100000.00, 3, 6442321325556, 25, 34, 1, "picchi");
INSERT INTO satalite VALUES(11, 320, 1, 85600000.00, 2, 644232132554212, 25, 34, 1, "manahor");
INSERT INTO satalite VALUES(12, 125, 1, 85100000.00, 3, 64423213253322, 25, 34, 1, "krishna");
INSERT INTO satalite VALUES(13, 342, 1, 87600000.00, 2, 6442321328962, 25, 34, 1, "elon musk");
INSERT INTO satalite VALUES(14, 50, 1, 80890000.00, 6, 6442321326232, 25, 34, 1, "rahul");
INSERT INTO satalite VALUES(15, 234, 1, 801500000.00, 1, 644232565312, 25, 34, 1, "chitanya");
INSERT INTO satalite VALUES(16, 132, 1, 80780000.00, 2, 643284655312, 25, 34, 1, "kavana");
INSERT INTO satalite VALUES(17, 452, 1, 80450000.00, 4, 644233313255312, 25, 34, 1, "kavya");
INSERT INTO satalite VALUES(18, 230, 1, 80780000.00, 6, 6446233255312, 25, 34, 1, "karthik");
INSERT INTO satalite VALUES(19, 243, 1, 80890000.00, 3, 6653213255312, 25, 34, 1, "lavan");
INSERT INTO satalite VALUES(20, 105, 1, 80450000.00, 8, 69523213255312, 25, 34, 1, "revanth");

/* filtering */
SELECT * FROM satalite WHERE sat_sl=2;
SELECT sat_sl FROM satalite WHERE sat_sl=2;
SELECT * FROM satalite WHERE sat_type=120;
SELECT * FROM satalite WHERE sat_moon=2;
SELECT * FROM satalite WHERE sat_dressPrice=80000000;
SELECT * FROM satalite WHERE sat_inmem=4;
SELECT * FROM satalite WHERE sat_cost=644233313255312;
SELECT * FROM satalite WHERE sat_components=25;
SELECT * FROM satalite WHERE sat_metal=25;
SELECT * FROM satalite WHERE sat_tv=1;
SELECT * FROM satalite WHERE sat_dir="glyson";

/* updating */
UPDATE satalite SET sat_type =852 WHERE sat_inmem=5;
UPDATE satalite SET sat_moon =2 WHERE sat_sl=3;
UPDATE satalite SET sat_dressprice =85256987 WHERE sat_dir='modi';
UPDATE satalite SET sat_inmem =8 WHERE sat_sl=15;
UPDATE satalite SET sat_type =852 WHERE sat_inmem=7;


/* table 10 */
CREATE TABLE space(space_Num int, space_name varchar(10), space_elements int, space_feel varchar(6), space_struc varchar(23), space_diam int, space_sense int, space_type int, space_stars varchar(20), space_moon int);
desc space;
ALTER TABLE space MODIFY COLUMN space_Num varchar(30); 
INSERT INTO space VALUES("3 triallon", "Atala", 94, 87, "rectangle", 5896.0056, "H20", 94, "298374893703", 6);
INSERT INTO space VALUES("3 triallon", "Vitala", 94, 85, "triangle", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Sutala", 94, 34, "round", 6466225.0057, "so2", 94, "25454748955265", 89);
INSERT INTO space VALUES("3 triallon", "Talatala", 94, 85, "triangle", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Mahatala", 94, 86, "round", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Rasatala", 94, 87, "rectangle", 5896.0056, "H20", 94, "298374893703", 6);
INSERT INTO space VALUES("3 triallon", "Paatala", 94, 87, "round", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Bhuloka", 94, 94, " ", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Bhuvarloka",94, 68, "recangle", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Svarloka", 94, 45, "triangle", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Maharloka", 94, 258, "hallow", 5896.0056, "H20", 94, "298374893703", 6);
INSERT INTO space VALUES("3 triallon", "Janaloka", 94, 245, "round", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Tapoloka", 94, 5698, "triangle", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "satyaloka", 94, 458, "square", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "goloka", 94, 235, "rectangle", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Maharloka", 94, 258, "hallow", 5896.0056, "H20", 94, "298374893703", 6);
INSERT INTO space VALUES("3 triallon", "Janaloka", 94, 245, "round", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "Tapoloka", 94, 5698, "triangle", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "satyaloka", 94, 458, "square", 56896.0057, "co2", 94, "2983748955265", 8);
INSERT INTO space VALUES("3 triallon", "goloka", 94, 235, "rectangle", 56896.0057, "co2", 94, "2983748955265", 8);


/* filtering */
SELECT * FROM space WHERE space_num ="3 triallon";
SELECT * FROM space WHERE space_name ="Atala";
SELECT * FROM space WHERE space_elements =94;
SELECT * FROM space WHERE space_planets =85;
SELECT * FROM space WHERE space_struc ="triangle";
SELECT * FROM space WHERE space_diam =56896.0057;
SELECT * FROM space WHERE space_che_element ="H2o";
SELECT * FROM space WHERE space_type = 94;
SELECT * FROM space WHERE space_stars =298374893703;
SELECT * FROM space WHERE space_moon =6;

/* updating */
SELECT * FROM space;
UPDATE space SET space_num ='4 triallon' WHERE space_planets = 87;
UPDATE space SET space_name ='Milkiway' WHERE space_moon = 6;
UPDATE space SET space_elements =96 WHERE space_stars = 2983748955265;
UPDATE space SET space_planets =562 WHERE space_struc = 'round';
UPDATE space SET space_num ='4 triallon' WHERE space_planets = 87;












	













