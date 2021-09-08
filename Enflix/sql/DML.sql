insert into payment values(9537, '3', 'generic');
insert into payment values(7183, '12', 'generic');
insert into payment values(3236, '6', 'premium');

insert into users values('곽형림', 'gudfla', 26, '010-1111-1111', 9537, 'person1@naver.com');
insert into users values('정은진', 'dmswls', 18, '010-2222-2222', 7183, 'person2@naver.com');
insert into users values('최해림', 'gofla', 11, '010-3333-3333', 3236, 'person3@naver.com');

insert into movie values('모가디슈', 'movie', '류승완', 15, 'generic');
insert into movie values('D.P.', 'movie', '한준희', 15, 'generic');
insert into movie values('짱구는 못말려', 'movie', '쿄고쿠 타카히코', 0, 'generic');
insert into movie values('해리포터와 마법사의 돌', 'movie', '크리스 콜럼버스', 0, 'premium');
insert into movie values('대탈출', 'eunjin', '정은진', 12, 'generic');
insert into movie values('바다', 'eunjin', '정은진', 0, 'generic');
insert into movie values('회오리', 'eunjin', '정은진', 0, 'premium');
insert into movie values('만지작', 'eunjin', '정은진', 15, 'generic');
insert into movie values('길고양이 놀아주기', 'haerim', '최해림', 0, 'generic');
insert into movie values('고양이 꾹꾹이', 'haerim', '최해림', 0, 'premium');
insert into movie values('육회', 'haerim', '최해림', 19, 'generic');
insert into movie values('갈매기', 'haerim', '최해림', 0, 'generic');

COMMIT;
