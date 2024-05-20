create table tbl_product (
  prod_code char(4) primary key, -- P001, P002, P003...
  prod_name varchar2(100) not null, -- 상품이름.
  prod_desc varchar2(500) not null, -- 상품의 설명.
  price number not null, -- 상품의 원래가격.
  off_price number not null, -- 할인된 가격.
  like_it number default 3, -- 1 ~ 5점의 평점.
  prod_image varchar2(100)
);

insert into tbl_product (prod_code, prod_name, prod_desc, price, off_price, like_it, prod_image)
values ('P001', '과테말라 안티구아', '과테말라 안티구아 설명', 10000, 9000,  4, '과테말라 안티구아.jpg');

insert into tbl_product (prod_code, prod_name, prod_desc, price, off_price, like_it, prod_image)
values ('P002', '니카라구아 원두', '니카라구아 원두 설명', 20000, 18000,  5, '니카라구아 원두.jpg');

insert into tbl_product (prod_code, prod_name, prod_desc, price, off_price, like_it, prod_image)
values ('P003', '브라질 산토스', '브라질 산토스 설명', 20000, 18000,  3, '브라질 산토스.jpg');

insert into tbl_product (prod_code, prod_name, prod_desc, price, off_price, like_it, prod_image)
values ('P004', '에티오피아 예가체프', '에티오피아 예가체프 설명', 23000, 22000,  3, '에디오피아 예가체프.jpg');

insert into tbl_product (prod_code, prod_name, prod_desc, price, off_price, like_it, prod_image)
values ('P005', '케냐 오크라톡신', '케냐 오크라톡신 설명', 25000, 23000,  5, '케냐 오크라톡신.jpg');

insert into tbl_product (prod_code, prod_name, prod_desc, price, off_price, like_it, prod_image)
values ('P006', '코스타리카 따라주', '코스타리카 따라주 설명', 10000, 8000,  4, '코스타리카 따라주.jpg');

select * from tbl_product;