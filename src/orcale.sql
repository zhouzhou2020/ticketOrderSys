-- Create table
create table Admin
(
  aid      number(4),
  username varchar2(20),
  password varchar2(20)
)
;
-- Create/Recreate primary, unique and foreign key constraints 
alter table Admin
  add constraint pk_aid primary key (AID);
  
  -------------------------------------------------------------------
 -- Create table
create table F_USER
(
  userid   NUMBER(4) not null,
  username VARCHAR2(20),
  password VARCHAR2(20),
  truename VARCHAR2(20),
  sex      NUMBER(1),
  idcard   CHAR(18),
  phone    CHAR(11)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
-- Create/Recreate primary, unique and foreign key constraints 
alter table F_USER
  add constraint PK_UID primary key (USERID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
  ------------------------------------------------------------------
-- Create table
create table flight
(
  fid            number(4),
  name           varchar2(20),
  flighttype     number(1),
  fromcity       varchar2(40),
  tocity         varchar2(40),
  fromtime       date,
  totime         date,
  price          number(7,2),
  remainingseats number(3)
)
;
-- Create/Recreate primary, unique and foreign key constraints 
alter table flight
  add constraint pk_fid primary key (FID);
  ------------------------------------------------------------------
-- Create table
create table FlightOrder
(
  oid        number(4),
  orderno    char(8),
  ordertime  date,
  num	     number(4),
  totalprice number(7,2),
  unitprice  number(7,2),
  userid     number(4),
  fid        number(4)
)
;
-- Create/Recreate primary, unique and foreign key constraints 
alter table FlightOrder
  add constraint pk_oid primary key (OID);
alter table FlightOrder
  add constraint fk_userid foreign key (USERID)
  references f_user (USERID);
alter table FlightOrder
  add constraint fk_fid foreign key (FID)
  references flight (FID);
  --------------------------------------------------------------------
-- Create sequence 
create sequence SEQ_ADMIN
minvalue 1
maxvalue 999999
start with 1
increment by 1
order;
---------------------------------------------------------------
-- Create sequence 
	create sequence SEQ_USER
	minvalue 1
	maxvalue 999999
	start with 1
	increment by 1
	order;
---------------------------------------------------------------------- 
-- Create sequence 
	create sequence SEQ_FLIGHT
	minvalue 1
	maxvalue 999999
	start with 1
	increment by 1
	order;
	 ----------------------------------------------------------------------
	 -- Create sequence 
	create sequence SEQ_ORDER
	minvalue 1
	maxvalue 999999
	start with 1
	increment by 1
	order;