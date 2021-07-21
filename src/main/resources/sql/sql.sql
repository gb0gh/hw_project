DROP TABLE board_data;

CREATE TABLE board_data (
	board_num	number		NOT NULL,
	category_num	number		NOT NULL,
	id	varchar2(15)		NOT NULL,
	read_count	number		NULL,
	board_name	varchar2(100)		NULL,
	board_subject	CLOB		NULL,
	status	number		NULL
);

DROP TABLE user_info;

CREATE TABLE user_info (
	id	varchar2(15)		NOT NULL,
	pass	varchar2(15)		NULL,
	reg_num	date		NULL,
	sex	varchar2(6)		NULL,
	reg_date	date		NULL
);

DROP TABLE board_comment;

CREATE TABLE board_comment (
	comment_num	number		NOT NULL,
	board_num	number		NOT NULL,
	id	varchar2(15)		NOT NULL,
	com_ref	number		NULL,
	com_lev	number		NULL,
	com_seq	number		NULL,
	com_subject	varchar2(1000)		NULL
);

DROP TABLE board_file;

CREATE TABLE board_file (
	board_num	number		NOT NULL,
	board_file	CLOB		NULL
);

DROP TABLE user_icon;

CREATE TABLE user_icon (
	id	varchar2(15)		NOT NULL,
	img	CLOB		NULL
);

DROP TABLE report;

CREATE TABLE report (
	board_num	number		NOT NULL,
	id	varchar2(15)		NOT NULL,
	report	number		NULL
);

DROP TABLE good;

CREATE TABLE good (
	board_num	number		NOT NULL,
	id	varchar2(15)		NOT NULL,
	good	number		NULL
);

DROP TABLE hate;

CREATE TABLE hate (
	board_num	number		NOT NULL,
	id	varchar2(15)		NOT NULL,
	hate	number		NULL
);

DROP TABLE category;

CREATE TABLE category (
	category_num	number		NOT NULL,
	category_name	varchar2(30)		NULL
);

ALTER TABLE board_data ADD CONSTRAINT PK_BOARD_DATA PRIMARY KEY (
	board_num
);

ALTER TABLE user_info ADD CONSTRAINT PK_USER_INFO PRIMARY KEY (
	id
);

ALTER TABLE board_comment ADD CONSTRAINT PK_BOARD_COMMENT PRIMARY KEY (
	comment_num,
	board_num,
	id
);

ALTER TABLE board_file ADD CONSTRAINT PK_BOARD_FILE PRIMARY KEY (
	board_num
);

ALTER TABLE user_icon ADD CONSTRAINT PK_USER_ICON PRIMARY KEY (
	id
);

ALTER TABLE report ADD CONSTRAINT PK_REPORT PRIMARY KEY (
	board_num,
	id
);

ALTER TABLE good ADD CONSTRAINT PK_GOOD PRIMARY KEY (
	board_num,
	id
);

ALTER TABLE hate ADD CONSTRAINT PK_HATE PRIMARY KEY (
	board_num,
	id
);

ALTER TABLE category ADD CONSTRAINT PK_CATEGORY PRIMARY KEY (
	category_num
);

ALTER TABLE board_data ADD CONSTRAINT FK_category_TO_board_data_1 FOREIGN KEY (
	category_num
)
REFERENCES category (
	category_num
);

ALTER TABLE board_data ADD CONSTRAINT FK_user_info_TO_board_data_1 FOREIGN KEY (
	id
)
REFERENCES user_info (
	id
);

ALTER TABLE board_comment ADD CONSTRAINT FK_board_TO_comment_1 FOREIGN KEY (
	board_num
)
REFERENCES board_data (
	board_num
);

ALTER TABLE board_comment ADD CONSTRAINT FK_user_TO_comment_1 FOREIGN KEY (
	id
)
REFERENCES user_info (
	id
);

ALTER TABLE board_file ADD CONSTRAINT FK_board_data_TO_board_file_1 FOREIGN KEY (
	board_num
)
REFERENCES board_data (
	board_num
);

ALTER TABLE user_icon ADD CONSTRAINT FK_user_info_TO_user_icon_1 FOREIGN KEY (
	id
)
REFERENCES user_info (
	id
);

ALTER TABLE report ADD CONSTRAINT FK_board_data_TO_report_1 FOREIGN KEY (
	board_num
)
REFERENCES board_data (
	board_num
);

ALTER TABLE report ADD CONSTRAINT FK_user_info_TO_report_1 FOREIGN KEY (
	id
)
REFERENCES user_info (
	id
);

ALTER TABLE good ADD CONSTRAINT FK_board_data_TO_good_1 FOREIGN KEY (
	board_num
)
REFERENCES board_data (
	board_num
);

ALTER TABLE good ADD CONSTRAINT FK_user_info_TO_good_1 FOREIGN KEY (
	id
)
REFERENCES user_info (
	id
);

ALTER TABLE hate ADD CONSTRAINT FK_board_data_TO_hate_1 FOREIGN KEY (
	board_num
)
REFERENCES board_data (
	board_num
);

ALTER TABLE hate ADD CONSTRAINT FK_user_info_TO_hate_1 FOREIGN KEY (
	id
)
REFERENCES user_info (
	id
);
