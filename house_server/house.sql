SET NAMES UTF8;
DROP DATABASE IF EXISTS house;
CREATE DATABASE house CHARSET=UTF8;
USE house;

/**用户**/
CREATE TABLE hs_user(
    userId INT PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(50),
    userPwd VARCHAR(50),
    phone VARCHAR(16),
    avatar VARCHAR(128),
    gender INT ,
    isUser INT
);

/**消息表**/
CREATE TABLE hs_msg(
    msgId INT PRIMARY KEY AUTO_INCREMENT,
    userId INT,
    contents VARCHAR(200)
);
/**城市**/
CREATE TABLE hs_city(
    cityId INT PRIMARY KEY AUTO_INCREMENT,
    cityName VARCHAR(50)
);
/**地区**/
CREATE TABLE hs_area(
    areaId INT PRIMARY KEY AUTO_INCREMENT,
    cityId INT,
    areaName VARCHAR(50)
);

-- /**街道**/
-- CREATE TABLE hs_street(
--     streetId INT PRIMARY KEY AUTO_INCREMENT,
--     sName VARCHAR(50)
-- );

/**房屋类型**/
CREATE TABLE hs_type(
    typeId INT PRIMARY KEY AUTO_INCREMENT,
    typeName VARCHAR(50)
);

/**房屋所有信息**/
CREATE TABLE hs_allInfo(
    infoId INT PRIMARY KEY AUTO_INCREMENT,
    userId INT,
    areaId INT,
    typeId INT,
    price DECIMAL(8,2),
    title VARCHAR(10),
    htype VARCHAR(50),
    contents VARCHAR(50),
    size VARCHAR(10),
    img1 VARCHAR(128),
    img2 VARCHAR(128),
    img3 VARCHAR(128),
    img4 VARCHAR(128)
);
CREATE TABLE hs_collect(
    colId INT PRIMARY KEY AUTO_INCREMENT,
    infoId INT,
    title VARCHAR(10),
    colImg VARCHAR(128)
);
/**用户信息**/
INSERT INTO hs_user VALUES
(NULL, 'dingding', '123456', '13501234567', 'img/avatar/default.png',  '1' , 1),
(NULL, 'dangdang', '123456', '13501234568', 'img/avatar/default.png', '1', 0),
(NULL, 'doudou', '123456', '13501234569', 'img/avatar/default.png', '1', 1),
(NULL, 'tom123', '123456', '13501234567', 'img/avatar/default.png',  '1' , 1),
(NULL, 'jerry123', '123456', '13501234568', 'img/avatar/default.png', '1', 0),
(NULL, 'join123', '123456', '13501234569', 'img/avatar/default.png', '1', 1);
/**房屋类型**/
INSERT INTO hs_type VALUES
(1,'一室一厅'),(2,'两室一厅'),(3,'三室一厅'),(4,'四室一厅'),(5,'更大户型');
/**房屋所有信息**/
INSERT INTO hs_allInfo VALUES
(null,1,1,1,1299,'柚米美兰公寓','整租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','15.0m²','house1_1.jpg','house1_2.jpg','house1_3.jpg','house1_4.jpg'),
(null,1,1,1,1799,'中兴公寓','合租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','17.0m²','house2_1.jpg','house2_2.jpg','house2_3.jpg','house2_4.jpg'),
(null,1,1,1,1399,'明月小区','整租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','14.0m²','house3_1.jpg','house3_2.jpg','house3_3.jpg','house3_4.jpg'),
(null,1,1,1,1699,'独栋公寓','合租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','12.0m²','house4_1.jpg','house4_2.jpg','house4_3.jpg','house4_4.jpg'),
(null,1,1,1,1299,'艾米丽公寓','整租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','13.0m²','house5_1.jpg','house5_2.jpg','house5_3.jpg','house5_4.jpg'),
(null,1,1,1,1599,'威尼斯小区','整租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','15.0m²','house6_1.jpg','house6_2.jpg','house6_3.jpg','house6_4.jpg'),
(null,1,1,1,1299,'柚米美兰公寓','整租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','17.0m²','house1_1.jpg','house1_2.jpg','house1_3.jpg','house1_4.jpg'),
(null,1,1,1,1799,'中兴公寓','合租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','13.0m²','house2_1.jpg','house2_2.jpg','house2_3.jpg','house2_4.jpg'),
(null,1,1,1,1399,'明月小区','整租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','19.0m²','house3_1.jpg','house3_2.jpg','house3_3.jpg','house3_4.jpg'),
(null,1,1,1,1699,'独栋公寓','合租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','19.0m²','house4_1.jpg','house4_2.jpg','house4_3.jpg','house4_4.jpg'),
(null,1,1,1,1299,'艾米丽公寓','整租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','11.0m²','house5_1.jpg','house5_2.jpg','house5_3.jpg','house5_4.jpg'),
(null,1,1,1,1599,'威尼斯小区','整租','房屋出租!!!押一付一,支持月付,无中介免网费;邀请好友入住更划算!','14.0m²','house6_1.jpg','house6_2.jpg','house6_3.jpg','house6_4.jpg');
/**城市**/
INSERT INTO hs_city VALUES
(null,'成都'),(null,'重庆'),(null,'长沙'),(null,'东莞'),(null,'福州'),(null,'贵阳'),(null,'广州'),(null,'合肥'),(null,'杭州'),(null,'济南'),(null,'宁波'),(null,'南京'),(null,'泉州'),(null,'苏州'),(null,'上海'),(null,'深圳'),(null,'天津'),(null,'武汉'),(null,'厦门'),(null,'西安'),(null,'郑州');
/**区域**/
INSERT INTO hs_area VALUES
(null,9,'建德市'),(null,9,'西湖区'),(null,9,'淳安县'),(null,9,'上城区'),(null,9,'下城区'),(null,9,'江干区'),(null,9,'滨江区'),(null,9,'萧山区'),(null,9,'余杭区'),(null,9,'临安区'),(null,9,'富阳区');
/**消息表**/
INSERT INTO hs_msg VALUES
(null,1,'请问价格多少?'),(null,2,'请问价格多少?'),(null,1,'请问价格多少?'),(null,2,'请问价格多少?');