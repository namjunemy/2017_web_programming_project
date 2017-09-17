create table user(
	u_no		integer		not null,
    u_id		integer		not null,
    password	varchar(20)	not null,
    primary key(u_no),
    unique key(u_id)
);

alter table user modify column u_no integer not null auto_increment;

select * from user;

DROP TABLE USER;

insert into user(u_id, password) values(20121724, '1234');
insert into user(u_id, password) values(20121842, '1234');
insert into user(u_id, password) values(20142044, '1234');
insert into user(u_id, password) values(20141985, '1234');
insert into user(u_id, password) values(20142000, '1234');


create table restaurant(
	r_no		integer		not null,
    r_name		varchar(20)	not null,
    type		varchar(10)	not null,
    primary key(r_no)
);

alter table restaurant modify column r_no integer not null auto_increment;

select * from restaurant;

insert into restaurant(r_name, type) values('마루','한식');
insert into restaurant(r_name, type) values('황돈이','한식');
insert into restaurant(r_name, type) values('오뚜기식당','한식');

insert into restaurant(r_name, type) values('고래떡볶이','분식');
insert into restaurant(r_name, type) values('봉구스밥버거','분식');
insert into restaurant(r_name, type) values('몽떡','분식');

insert into restaurant(r_name, type) values('봉스키친','일식');
insert into restaurant(r_name, type) values('하카타','일식');
insert into restaurant(r_name, type) values('스시킴','일식');

insert into restaurant(r_name, type) values('보니타','양식');
insert into restaurant(r_name, type) values('더쿡','양식');
insert into restaurant(r_name, type) values('솔트앤페퍼','양식');

create table menu(
	m_no		integer		not null,
    r_no		integer		not null,
    m_name		varchar(20)	not null,
    price		varchar(10)	not null,
    primary key(m_no),
    foreign key(r_no) references restaurant(r_no)
);

alter table menu modify column m_no integer not null auto_increment;

select * from menu;

insert into menu(r_no, m_name, price) values(1, '마루회덮밥', '4,500');
insert into menu(r_no, m_name, price) values(1, '참치회덮밥', '6,000');
insert into menu(r_no, m_name, price) values(1, '농어회덮밥', '6,000');
insert into menu(r_no, m_name, price) values(1, '광어회덮밥', '7,000');
insert into menu(r_no, m_name, price) values(1, '연어회덮밥', '6,000');
insert into menu(r_no, m_name, price) values(1, '문어회덮밥', '6,000');
insert into menu(r_no, m_name, price) values(1, '해물덮밥', '6,000');
insert into menu(r_no, m_name, price) values(1, '새우덮밥', '6,000');
insert into menu(r_no, m_name, price) values(1, '크랩덮밥', '6,000');
insert into menu(r_no, m_name, price) values(1, '장어구이덮밥', '8,000');

insert into menu(r_no, m_name, price) values(2, '촌돼지찌개', '6,000');
insert into menu(r_no, m_name, price) values(2, '뼈다귀탕', '7,000');
insert into menu(r_no, m_name, price) values(2, '뼈다귀전골 중', '25,00');
insert into menu(r_no, m_name, price) values(2, '뼈다귀전골 대', '35,000');
insert into menu(r_no, m_name, price) values(2, '대패삼겹살 100g', '2,800');
insert into menu(r_no, m_name, price) values(2, '막창 100g', '6,000');
insert into menu(r_no, m_name, price) values(2, '목살소금구이 100g', '7,000');

insert into menu(r_no, m_name, price) values(3, '김치찌개', '6,000');
insert into menu(r_no, m_name, price) values(3, '된장찌개', '6,000');
insert into menu(r_no, m_name, price) values(3, '돼지불고기백반', '6,000');
insert into menu(r_no, m_name, price) values(3, '닭볶음탕', '25,000');

insert into menu(r_no, m_name, price) values(4, '왕돈까스', '6,500');
insert into menu(r_no, m_name, price) values(4, '쫄면', '4,000');
insert into menu(r_no, m_name, price) values(4, '김밥', '2,000');
insert into menu(r_no, m_name, price) values(4, '꼬마김밥', '3,000');
insert into menu(r_no, m_name, price) values(4, '어묵', '2,000');
insert into menu(r_no, m_name, price) values(4, '제육덮밥', '5,000');
insert into menu(r_no, m_name, price) values(4, '튀김', '2,500');
insert into menu(r_no, m_name, price) values(4, '순대', '3,000');
insert into menu(r_no, m_name, price) values(4, '라면', '3,000');
insert into menu(r_no, m_name, price) values(4, '김치몪음밥', '5,000');

insert into menu(r_no, m_name, price) values(5, '봉구스밥버거', '1,500');
insert into menu(r_no, m_name, price) values(5, '돈까스밥버거', '2,000');
insert into menu(r_no, m_name, price) values(5, '햄밥버거', '2,000');
insert into menu(r_no, m_name, price) values(5, '치즈밥버거', '2,000');
insert into menu(r_no, m_name, price) values(5, '멸치밥버거', '2,000');
insert into menu(r_no, m_name, price) values(5, '라면밥버거', '2,000');
insert into menu(r_no, m_name, price) values(5, '제육밥버거', '2,000');

insert into menu(r_no, m_name, price) values(6, '전통떡볶이', '2,500');
insert into menu(r_no, m_name, price) values(6, '치즈떡볶이', '4,000');
insert into menu(r_no, m_name, price) values(6, '꼬마김밥', '3,000');
insert into menu(r_no, m_name, price) values(6, '즉석수제튀김', '2,500');
insert into menu(r_no, m_name, price) values(6, '참맛순대', '3,000');
insert into menu(r_no, m_name, price) values(6, '치킨떡볶이', '5,500');

insert into menu(r_no, m_name, price) values(7, '수제일식돈까스', '6,500');
insert into menu(r_no, m_name, price) values(7, '수제양식돈까스', '6,500');
insert into menu(r_no, m_name, price) values(7, '돈까스정식', '6,500');
insert into menu(r_no, m_name, price) values(7, '수제왕돈까스', '5,500');
insert into menu(r_no, m_name, price) values(7, '수제치즈오븐돈까스', '6,500');
insert into menu(r_no, m_name, price) values(7, '돈까스우동세트', '5,900');
insert into menu(r_no, m_name, price) values(7, '돈까스미니알밥세트', '6,900');
insert into menu(r_no, m_name, price) values(7, '김치돈까스치즈나베', '5,500');

insert into menu(r_no, m_name, price) values(8, '하카타우동', '4,500');
insert into menu(r_no, m_name, price) values(8, '니꾸우동', '5,500');
insert into menu(r_no, m_name, price) values(8, '어묵우동', '5,500');
insert into menu(r_no, m_name, price) values(8, '부타돈', '5,000');
insert into menu(r_no, m_name, price) values(8, '미니부타돈', '2,000');
insert into menu(r_no, m_name, price) values(8, '이나리', '1,000');

insert into menu(r_no, m_name, price) values(9, '장어구이', '10,000');
insert into menu(r_no, m_name, price) values(9, '알탕', '10,000');
insert into menu(r_no, m_name, price) values(9, '해물탕', '12,000');
insert into menu(r_no, m_name, price) values(9, '골뱅이소면', '12,000');
insert into menu(r_no, m_name, price) values(9, '학생사시미', '15,000');

insert into menu(r_no, m_name, price) values(10, '베이컨크림리조또', '6,900');
insert into menu(r_no, m_name, price) values(10, '해물치즈리조또', '6,900');
insert into menu(r_no, m_name, price) values(10, '김치베이컨필라프', '5,900');
insert into menu(r_no, m_name, price) values(10, '새우필라프', '5,900');
insert into menu(r_no, m_name, price) values(10, '수제등심돈까스', '5,900');

insert into menu(r_no, m_name, price) values(11, '돈까스', '5,500');
insert into menu(r_no, m_name, price) values(11, '돈까스떡볶이', '6,000');
insert into menu(r_no, m_name, price) values(11, '소고기볶음밥', '5,000');
insert into menu(r_no, m_name, price) values(11, '스팸볶음밥', '5,000');
insert into menu(r_no, m_name, price) values(11, '해물볶음밥', '5,000');
insert into menu(r_no, m_name, price) values(11, '돼지김치볶음밥', '5,000');
insert into menu(r_no, m_name, price) values(11, '소고기덮밥', '5,000');
insert into menu(r_no, m_name, price) values(11, '제육덮밥', '5,000');

insert into menu(r_no, m_name, price) values(12, 'NewYorkSteak', '21,900');
insert into menu(r_no, m_name, price) values(12, 'CrispyPorkBellySteak', '15,900');
insert into menu(r_no, m_name, price) values(12, 'BBQPorkRibs', '22,900');
insert into menu(r_no, m_name, price) values(12, 'BBQPlates', '24,900');

create table board(
	b_no		integer		not null,
    star		integer		not null,
    subject		varchar(300)	not null,
    u_id		integer		not null,
    primary key(b_no),
    foreign key(u_id)references user(u_id)
);

alter table board modify column b_no integer not null auto_increment;

select * from board;

drop table board;

insert into board(star, subject, u_id) values(5, '마루 : 회덮밥이 싱싱하니 맛있었어요 별점 다섯개 드려요 내일도 가고싶네요', 20121724);
insert into board(star, subject, u_id) values(3, '고래떡볶이 : 떡볶이집인데 사장님이 자꾸 돈까스 먹으라고 추천해주시네요 하지만 맛있게 잘 먹었습니다.', 20121724);
insert into board(star, subject, u_id) values(2, '봉스키친 : 맛은 있지만 음식이 너무 천천히 나와서 오후수업 못갈뻔했네요', 20121724);
insert into board(star, subject, u_id) values(4, '보니타 : 저렴하게 양식을 맛볼 수 있어서 좋네요 한밭대 데이트 맛집으로 추천합니다', 20121724);
insert into board(star, subject, u_id) values(5, '황돈이 : 집밥처럼 맛있고 든든한 찌개', 20121842);
insert into board(star, subject, u_id) values(5, '봉구스밥버거 : 명불허전 밥버거 아점저를 다먹고 야식으로 먹어도 안질림', 20121842);
insert into board(star, subject, u_id) values(4, '하카타 : 학교주변에 소바집이 없어서 아쉬웠는데 생겼네요 드디어 여름에 자주갈게요', 20121842);
insert into board(star, subject, u_id) values(1, '더쿡 : 맛이 별로입니다', 20121842);
insert into board(star, subject, u_id) values(5, '오뚜기식당 : 밥도 먹고 싶은만큼 계속 먹을 수 있고 사장님 인심이 너무 좋습니다', 20142044);
insert into board(star, subject, u_id) values(3, '몽떡 : 치킨 떡볶이가 특이해서 시켜봤는데 그냥 따로 치킨이랑 떡볶이가 나와서 당황했네요', 20142044);
insert into board(star, subject, u_id) values(5, '스시킴 : 맛있게 잘 먹었습니다 최고의 술안주네요', 20142044);
insert into board(star, subject, u_id) values(1, '솔트앤페퍼 : 가격이 너무 비싸서 또 갈 엄두가 안나네요 맛은 평범했습니다', 20142044);
insert into board(star, subject, u_id) values(3, '마루 : 마루는 역시 마루회덮밥 적당한맛 한달에 한번 생각나는 맛 사실안날때도 많음', 20141985);
insert into board(star, subject, u_id) values(4, '고래떡볶이 : 고래떡볶이 베스트메뉴는 고래떡볶이와 왕돈까스라고 할수있는데 그 조합은 정말 이승우와 백승호가 환상적인 드리블을 하고 내입안으로 골인시키는 거 같달까요', 20141985);
insert into board(star, subject, u_id) values(3, '봉스키친 : 난 싫어', 20142000);
insert into board(star, subject, u_id) values(3, '보니타 : 닭만 먹어라', 20142000);

select * from restaurant where type='한식';
select * from restaurant where type='분식';
select * from restaurant where type='일식';
select * from restaurant where type='양식';

select * from restaurant where type='한식' or type='분식';
select * from restaurant where type='한식' or type='일식';
select * from restaurant where type='한식' or type='양식';
select * from restaurant where type='분식' or type='일식';
select * from restaurant where type='분식' or type='양식';
select * from restaurant where type='일식' or type='양식';

select * from restaurant where r_name='마루';
select * from restaurant where r_name='황돈이';
select * from restaurant where r_name='오뚜기식당';

select * from restaurant where r_name='고래떡볶이';
select * from restaurant where r_name='봉구스밥버거';
select * from restaurant where r_name='몽떡';

select * from restaurant where r_name='봉스키친';
select * from restaurant where r_name='하카타';
select * from restaurant where r_name='스시킴';

select * from restaurant where r_name='보니타';
select * from restaurant where r_name='더쿡';
select * from restaurant where r_name='솔트앤페퍼';

select restaurant.r_name, .m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='마루';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='황돈이';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='오뚜기식당';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='고래떡볶이';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='봉구스밥버거';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='봉스키친';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='몽떡';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='하카타';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='스시킴';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='보니타';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='더쿡';
select restaurant.r_name, menu.m_name, menu.price from menu join restaurant on menu.r_no=restaurant.r_no where restaurant.r_name='솔트앤페퍼';

select * from board where subject like '%%';
