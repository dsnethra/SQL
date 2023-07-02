CREATE DATABASE task_2;
USE  task_2;
CREATE TABLE cat__table (sl_no int);
ALTER TABLE cat__table ADD Column cat_name varchar(25);
ALTER TABLE cat__table ADD Column breed varchar(60);
ALTER TABLE cat__table ADD Column age_limit int;
ALTER TABLE cat__table ADD Column cat_colour varchar(10);
ALTER TABLE cat__table ADD Column owner varchar(20);
ALTER TABLE cat__table ADD Column cat_home varchar(20);
ALTER TABLE cat__table ADD Column cat_nickname varchar(20);
ALTER TABLE cat__table ADD Column cat_bf varchar(25);
ALTER TABLE cat__table ADD Column cat__gf varchar(30);
ALTER TABLE cat__table ADD Column cat__colour varchar(30);

/*droping */
ALTER TABLE  cat__table DROP COLUMN  cat_name;
ALTER TABLE cat__table DROP COLUMN breed;

/*renaming*/
ALTER TABLE cat__table RENAME COLUMN age_limt to age;
ALTER TABLE cat__table RENAME COLUMN cat_colout to colour;
ALTER TABLE cat__table RENAME COLUMN owner to cat_owner;
ALTER TABLE cat__table RENAME COLUMN cat_home to home;
ALTER TABLE cat__table RENAME COLUMN cat_nickname to nickname;


/* Modifying */
ALTER TABLE cat__table MODIFY COLUMN cat_bf int;
ALTER TABLE cat__table MODIFY COLUMN cat_colour int;
ALTER TABLE cat__table MODIFY COLUMN cat_gf int;






CREATE TABLE horse___table(sl__no int);
ALTER TABLE horse___table ADD COLUMN horse_name varchar(25);
ALTER TABLE horse___table ADD COLUMN breed varchar(60);
ALTER TABLE horse___table ADD COLUMN  age_limit int;
ALTER TABLE horse___table ADD COLUMN horse_colour varchar(10);
ALTER TABLE horse___table ADD COLUMN  owner varchar(20);
ALTER TABLE horse___table ADD COLUMN  horse_home varchar(20);
ALTER TABLE horse___table ADD COLUMN  horse_nickname varchar(20);
ALTER TABLE horse___table ADD COLUMN horse_bf varchar(25);
ALTER TABLE horse___table ADD COLUMN horse_gf varchar(30);
ALTER TABLE horse___table ADD COLUMN horse_child varchar(30);

/* droping */
ALTER TABLE horse___table DROP COLUMN horse_name;
ALTER TABLE horse___table DROP COLUMN breed;
ALTER TABLE horse___table DROP COLUMN age_limit;

/*renaming*/
ALTER TABLE horse___table RENAME COLUMN horse_colour to colour;
ALTER TABLE horse___table RENAME COLUMN owner to horse_owner;
ALTER TABLE horse___table RENAME COLUMN horse_home to home;
ALTER TABLE horse___table RENAME COLUMN horse_nickname to nickname;
ALTER TABLE horse___table RENAME COLUMN age_limit to age;

/* Modifying */

ALTER TABLE horse___table MODIFY COLUMN horse_bf int;
ALTER TABLE horse___table MODIFY COLUMN horse_gf int;
ALTER TABLE horse___table MODIFY COLUMN horse_child int;



CREATE TABLE bird___table(sl_no int);
ALTER TABLE bird___table ADD COLUMN bird_name varchar(25);
ALTER TABLE bird___table ADD COLUMN breed varchar(60);
ALTER TABLE bird___table ADD COLUMN age_limit int;
ALTER TABLE bird___table ADD COLUMN bird_colour varchar(10);
ALTER TABLE bird___table ADD COLUMN owner varchar(20);
ALTER TABLE bird___table ADD COLUMN bird_home varchar(20);
ALTER TABLE bird___table ADD COLUMN bird_nickname varchar(20);
ALTER TABLE bird___table ADD COLUMN  bird_bf varchar(25);
ALTER TABLE bird___table ADD COLUMN bird_gf varchar(30);
ALTER TABLE bird___table ADD COLUMN bird_child varchar(25);


/* Droiping */
ALTER TABLE bird___table DROP COLUMN bird_name ;
ALTER TABLE bird___table DROP  COLUMN breed ;

/* Renaming */

ALTER TABLE bird___table RENAME COLUMN age_limit to age;
ALTER TABLE bird___table RENAME COLUMN bird_colour to colour;
ALTER TABLE bird___table RENAME COLUMN owner to bird_owner;
ALTER TABLE bird___table RENAME COLUMN bird_home to homr;
ALTER TABLE bird___table RENAME COLUMN bird_nickname to nickname;

/* Modifying */
 ALTER TABLE bird___table MODIFY COLUMN bird_gf int;
 ALTER TABLE bird___table MODIFY COLUMN bird_bf int;
 ALTER TABLE bird___table MODIFY COLUMN bird_child int;

 
CREATE TABLE door___table(door_no int);
ALTER TABLE door___table ADD COLUMN door_name varchar(25);
ALTER TABLE door___table ADD COLUMN door_fee int;
ALTER TABLE door___table ADD COLUMN door_made_from varchar(40);
ALTER TABLE door___table ADD COLUMN door_colour varchar(25);
ALTER TABLE door___table ADD COLUMN door_heighlight varchar(25);
ALTER TABLE door___table ADD COLUMN door_locking_system varchar(40);
ALTER TABLE door___table ADD COLUMN door_height int;
ALTER TABLE door___table ADD COLUMN door_width int;
ALTER TABLE door___table ADD COLUMN  door_thickness float;
ALTER TABLE door___table ADD COLUMN door_look varchar(20);


/*droping */
ALTER TABLE door___table DROP COLUMN door_name ;
ALTER TABLE door___table DROP COLUMN door_fee;

/* Renaming */
ALTER TABLE door___table RENAME COLUMN door_made_from to made_from;
ALTER TABLE door___table RENAME COLUMN door_colour to colour ;
ALTER TABLE door___table RENAME COLUMN door_heighlight to heighlight
ALTER TABLE door___table RENAME COLUMN door_locking_system to locking_system;
ALTER TABLE door___table RENAME COLUMN door_height to height;


/* Modifying */
 ALTER TABLE door___table MODIFY COLUMN door_width varchar(30);
  ALTER TABLE door___table MODIFY COLUMN door_thickness varchar(40);
   ALTER TABLE door___table MODIFY COLUMN door_look int;
   
 

 

CREATE TABLE slipper___table(slipper_num int);
ALTER TABLE slipper___table ADD COLUMN slipper_name varchar(25);
ALTER TABLE slipper___table ADD COLUMN slipper_size int;
ALTER TABLE slipper___table ADD COLUMN  slipper_brand varchar(30);
ALTER TABLE slipper___table ADD COLUMN slipper_colour varchar(30);
ALTER TABLE slipper___table ADD COLUMN  slipper_outlook varchar(50);
ALTER TABLE slipper___table ADD COLUMN  slipper_inlook varchar(30);
ALTER TABLE slipper___table ADD COLUMN slipper_price int;
ALTER TABLE slipper___table ADD COLUMN slipper_warranty float;
ALTER TABLE slipper___table ADD COLUMN slipper_ambasidor varchar(25);
ALTER TABLE slipper___table ADD COLUMN slipper_cost int;

 

/*droping */
ALTER TABLE slipper___table DROP COLUMN slipper_name ;
ALTER TABLE slipper___table DROP COLUMN slipper_size;

 ALTER TABLE slipper___table RENAME COLUMN  slipper_brand to brand;
ALTER TABLE slipper___table RENAME COLUMN  slipper_colour to colour;
ALTER TABLE slipper___table RENAME COLUMN  slipper_outllok to outlook;
 ALTER TABLE slipper___table RENAME COLUMN  slipper_inlook to inlook;
  ALTER TABLE slipper___table RENAME COLUMN  slipper_price to price;
  
  /* Modifying */
 ALTER TABLE slipper___table MODIFY COLUMN  slipper_warranty int;
 ALTER TABLE slipper___table MODIFY COLUMN  slipper_ambasidor int;
 ALTER TABLE slipper___table MODIFY COLUMN  slipper_cost double;

 
 
CREATE TABLE tv___table(tv_num int);
ALTER TABLE tv___table ADD COLUMN tv_name varchar(25);
ALTER TABLE tv___table ADD COLUMN tv_brand varchar(25);
ALTER TABLE tv___table ADD COLUMN tv_colour varchar(25);
ALTER TABLE tv___table ADD COLUMN tv_price int;
ALTER TABLE tv___table ADD COLUMN tv_width float;
ALTER TABLE tv___table ADD COLUMN tv_height float;
ALTER TABLE tv___table ADD COLUMN tv_owner varchar(25);
ALTER TABLE tv___table ADD COLUMN  tv_print varchar(24);
ALTER TABLE tv___table ADD COLUMN tv_quality varchar(25);
ALTER TABLE tv___table ADD COLUMN  tv_brand_name varchar(34);


/*droping */
ALTER TABLE tv___table DROP COLUMN tv_name ;
ALTER TABLE tv___table DROP COLUMN tv_brand;


/*Renaming*/
ALTER TABLE tv___table RENAME COLUMN  tv_colour to colour;
ALTER TABLE tv___table RENAME COLUMN  tv_price to pricre; 
 ALTER TABLE tv___table RENAME COLUMN  tv_width to width;
 ALTER TABLE tv___table RENAME COLUMN  tv_height to height;
 ALTER TABLE tv___table RENAME COLUMN  tv_owner to owner;
 
  /* Modifying */
 ALTER TABLE tv___table MODIFY COLUMN tv_print int;
ALTER TABLE tv___table MODIFY COLUMN tv_quality int;
 ALTER TABLE tv___table MODIFY COLUMN tv_brand_name int;
 
 
CREATE TABLE month___table(month_num int);
ALTER TABLE month___table ADD COLUMN month_name varchar(25);
ALTER TABLE month___table ADD COLUMN days_in_month int;
ALTER TABLE month___table ADD COLUMN  weeks_in_month int;
ALTER TABLE month___table ADD COLUMN  monsoon_month varchar(25);
ALTER TABLE month___table ADD COLUMN summer_month varchar(25);
ALTER TABLE month___table ADD COLUMN winter_month varchar(25);
ALTER TABLE month___table ADD COLUMN 31_days varchar(15);
ALTER TABLE month___table ADD COLUMN 30_days varchar(25);
ALTER TABLE month___table ADD COLUMN 28_days varchar(20);
ALTER TABLE month___table ADD COLUMN 27_days varchar(20);


/*droping */
ALTER TABLE month___table DROP COLUMN month_name ;
ALTER TABLE month___table DROP COLUMN days_in_month;


/*Renaming*/
ALTER TABLE month___table RENAME COLUMN  monsoon_month to moonsoon;
ALTER TABLE month___table RENAME COLUMN  summer_month to summer;
ALTER TABLE month___table RENAME COLUMN  winter_month to winter;
 ALTER TABLE month___table RENAME COLUMN  31_days to 31_day;
 ALTER TABLE month___table RENAME COLUMN  30_days to 30_day;
 
 
 /* Modifying */
 ALTER TABLE month___table MODIFY COLUMN 28_days int;
  ALTER TABLE month___table MODIFY COLUMN 27_days int;
 
 
CREATE TABLE day___table(day_no int);
ALTER TABLE day___table ADD COLUMN  no_days_week int;
ALTER TABLE day___table ADD COLUMN  no_days_month int;
ALTER TABLE day___table ADD COLUMN   day_name varchar(25);
ALTER TABLE day___table ADD COLUMN   hours_in_day int;
ALTER TABLE day___table ADD COLUMN  min_in_ahour int;
ALTER TABLE day___table ADD COLUMN  sec_in_min int;
ALTER TABLE day___table ADD COLUMN  day_special varchar(30);
ALTER TABLE day___table ADD COLUMN  day_time float;
ALTER TABLE day___table ADD COLUMN  birth_day varchar(25);
 
 
 /*droping */
ALTER TABLE day___table DROP COLUMN no_days_week;
ALTER TABLE day___table DROP COLUMN no_days_month;


/*Renaming*/
ALTER TABLE day___table RENAME COLUMN  day_name to name;
ALTER TABLE day___table RENAME COLUMN  hours_in_day  to hours;
ALTER TABLE day___table RENAME COLUMN  min_in_ahour to min;
ALTER TABLE day___table RENAME COLUMN  day_special to special;
ALTER TABLE day___table RENAME COLUMN  sec_in_min to  sec;


  /* Modifying */
 ALTER TABLE day___table MODIFY COLUMN day_time int;
  ALTER TABLE day___table MODIFY COLUMN birthday int;
  ALTER TABLE day___table MODIFY COLUMN day_special int;
 
 

 
CREATE TABLE room___table(room_no int);
ALTER TABLE room___table ADD COLUMN  room_name varchar(25);
ALTER TABLE room___table ADD COLUMN  room_place varchar(25);
ALTER TABLE room___table ADD COLUMN  room_location varchar(25);
ALTER TABLE room___table ADD COLUMN  room_type varchar(25);
ALTER TABLE room___table ADD COLUMN  room_sec varchar(25);
ALTER TABLE room___table ADD COLUMN  room_construction varchar(25);
ALTER TABLE room___table ADD COLUMN  room_door varchar(25);
ALTER TABLE room___table ADD COLUMN  room_colour varchar(25);
ALTER TABLE room___table ADD COLUMN  room_name2 varchar(25);
ALTER TABLE room___table ADD COLUMN  room_name3 varchar(25);


 /*droping */
ALTER TABLE room___table DROP COLUMN room_name;
ALTER TABLE room___table DROP COLUMN room_place;


/*Renaming*/
ALTER TABLE room___table RENAME COLUMN  room_location to location;
ALTER TABLE room___table RENAME COLUMN  room_type to type;
ALTER TABLE room___table RENAME COLUMN  room_sec to section;
ALTER TABLE room___table RENAME COLUMN  room_construction to construction;
ALTER TABLE room___table RENAME COLUMN  room_door to door;


 /* Modifying */
 ALTER TABLE room___table MODIFY COLUMN room_colour int;
ALTER TABLE room___table MODIFY COLUMN room_name2 int;
ALTER TABLE room___table MODIFY COLUMN room_name3 int;


CREATE TABLE friend___table(friend_name varchar(25));
ALTER TABLE friend___table ADD COLUMN  friend_gender varchar(25);
 ALTER TABLE friend___table ADD COLUMN  friend_qualification varchar(25);
 ALTER TABLE friend___table ADD COLUMN  friend_place varchar(25);
 ALTER TABLE friend___table ADD COLUMN   friend_fathername varchar(25);
 ALTER TABLE friend___table ADD COLUMN  friend_mothername varchar(25);
 ALTER TABLE friend___table ADD COLUMN  friend_height float;
 ALTER TABLE friend___table ADD COLUMN friend_weight float;
 ALTER TABLE friend___table ADD COLUMN  friend_mobilenum long;
 ALTER TABLE friend___table ADD COLUMN  friend_favcolour varchar(25);
 ALTER TABLE friend___table ADD COLUMN  friend_gf varchar(25);
 
 
  /*droping */
ALTER TABLE friend___table DROP COLUMN friend_gender;
ALTER TABLE friend___table DROP COLUMN friend_qualification;


/*Renaming*/
ALTER TABLE friend___table RENAME COLUMN  friend_place to place;
ALTER TABLE friend___table RENAME COLUMN  friend_fathername to fathername;
ALTER TABLE friend___table RENAME COLUMN  friend_mothername to mothername;
ALTER TABLE friend___table RENAME COLUMN  friend_height to height;
ALTER TABLE friend___table RENAME COLUMN  friend_weight to weight;


/* Modifying */
 ALTER TABLE friend___table MODIFY COLUMN friend_mobilenum int;
ALTER TABLE friend___table MODIFY COLUMN friend_favcolour int;
ALTER TABLE friend___table MODIFY COLUMN friend_gf int;

 
 

 
 

 
