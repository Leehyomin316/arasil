use arasil;
CREATE TABLE `ROOM_INFO` (
	`ROOM_ID`	int 	NOT NULL auto_increment primary key,
	`ROOM_NM`	varchar(50)	NULL,
	`USE_FEE` int NULL,
	`ADDITIONAL_FEE`	int	NULL,
    `STANDARD_PERSON` int NULL,
    `MAX_PERSON` int NULL
);
CREATE TABLE `RESERVATION` (
	`RESERV_SEQ`	int	NOT NULL auto_increment,
	`ROOM_ID`	int	NOT NULL ,
    primary key(reserv_seq, room_id),
	`GUEST_NM`	varchar(50)	NULL,
	`GUEST_CELL_PHONE`	varchar(50)	NULL,
	`RESERV_DT`	datetime	NULL,
	`START_DT`	date	NULL,
	`END_DT`	date	NULL,
	`RESERV_CODE`	varchar(1)	check(`RESERV_CODE`='A' or `RESERV_CODE`='B' or `RESERV_CODE`='C' or `RESERV_CODE`='D' or `RESERV_CODE`='E'),
	`EXTRA_PERSON`	int	NULL,
	`USER_ID`	varchar(50) NOT NULL
);
ALTER TABLE `RESERVATION` ADD CONSTRAINT `FK_ROOM_INFO_TO_RESERVATION_1` FOREIGN KEY (
	`ROOM_ID`
)
REFERENCES `ROOM_INFO` (
	`ROOM_ID`
);
CREATE TABLE `USERS` (
	`USER_ID`	varchar(50)	not NULL PRIMARY KEY,
	`EMAIL`	varchar(255)	NULL,
	`PASSWARD`	varchar(255)	NULL,
	`ENABLED`	boolean	NULL
);
CREATE TABLE `ROLES` (
	`ROLE_ID`	varchar(50)	NOT NULL PRIMARY KEY,
	`ROLE_NM`	varchar(255)	NULL
);
CREATE TABLE `USER_ROLE` (
	`USER_ID`	varchar(50)	NOT NULL,
	`ROLE_ID`	varchar(50)	NOT NULL,
    PRIMARY KEY(USER_ID, ROLE_ID)
);
ALTER TABLE `RESERVATION` ADD CONSTRAINT `FK_USERS_TO_RESERVATION_1` FOREIGN KEY(
	`USER_ID`
)
REFERENCES `USERS` (
	`USER_ID`
);
ALTER TABLE `USER_ROLE` ADD CONSTRAINT `FK_USERS_TO_USER_ROLE_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `USERS` (
	`USER_ID`
);
ALTER TABLE `USER_ROLE` ADD CONSTRAINT `FK_ROLES_TO_USER_ROLE_1` FOREIGN KEY (
	`ROLE_ID`
)
REFERENCES `ROLES` (
	`ROLE_ID`
);
CREATE TABLE `NOTICE` (
	`NOTICE_ID`	int	NOT NULL auto_increment PRIMARY KEY,
	`NOTICE_TITLE`	varchar(500)	NULL,
	`NOTICE_CONTENT`	varchar(4000)	NULL,
	`NOTICE_DATE`	datetime	NULL,
	`USER_ID`	varchar(50) NOT NULL
);
ALTER TABLE `NOTICE` ADD CONSTRAINT `FK_USERS_TO_NOTICE_1` FOREIGN KEY(
	`USER_ID`
)
REFERENCES `USERS` (
	`USER_ID`
);
CREATE TABLE `FAQ` (
	`FAQ_ID`	int	NOT NULL auto_increment PRIMARY KEY,
	`FAQ_TITLE`	varchar(500)	NULL,
	`FAQ_CONTENT`	varchar(4000)	NULL,
	`USER_ID`	varchar(50) NOT	NULL
);
ALTER TABLE `FAQ` ADD CONSTRAINT `FK_USERS_TO_FAQ_1` FOREIGN KEY(
	`USER_ID`
)
REFERENCES `USERS` (
	`USER_ID`
);
INSERT INTO `arasil`.`room_info`
(`ROOM_NM`,
`ADDITIONAL_FEE`,
`STANDARD_PERSON`,
`MAX_PERSON`,
`USE_FEE`)
VALUES
('아라실', 10000, 10, 20, 450000);
INSERT INTO `arasil`.`users`
(`user_id`,
`EMAIL`,
`PASSWARD`,
`ENABLED`)
VALUES
('admin', 'admin@google.com', 'admin', true);
COMMIT;