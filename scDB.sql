create table member(
    num number(5) primary key,          -- 회원 고유번호
    userid varchar2(15),                -- 회원 아이디
    pwd varchar2(20),                   -- 회원 비밀번호
    name varchar2(10),                  -- 회원 이름
    sex number(1) default 0,            -- 성별
    tel varchar2(13),                   -- 집전화(필수사항 아님)
    phone varchar2(13),                 -- 휴대전화번호(필수)
    email varchar2(20),                 -- 이메일주소
    address varchar2(100)               -- 집주소
);

desc member;
select * from member;
create sequence member_seq start with 1 increment by 1;

create table board1(                     -- 스쿠버 교육신청
    num number(5) primary key,           -- 게시글 교육번호
    title varchar2(50),                  -- 게시글 제목
    pass varchar2(50),                   -- 작성자 비밀번호
    name varchar2(30),                   -- 작성자 이름
    phone varchar2(13),                  -- 작성자 연락처
    space number(2),                     -- 교육받을 장소
    subject number(2),                   -- 희망하는 교육과정
    pack number(2),                      -- 패키지
    time number(2),                      -- 교육받기를 희망하는 시간
    readcount number(4) default 0,       --조회수
    writedate date default sysdate       --작성일자
);
desc board1;
create sequence board1_seq start with 1 increment by 1;

create table board2(           --수강생 후기
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board2;

create sequence board2_seq start with 1 increment by 1;

insert into board3(num,name,pass,title,content)
values(board3_seq.nextval,'운영자','1234','테스트','내용테스트');

commit;
rollback;

create table board3(           --공지사항 게시판
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board3;
create sequence board3_seq start with 1 increment by 1;

create table board4(           --스쿠버 장비판매 게시판
    num number(5) primary key not null, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);
select * from board4;
create sequence board4_seq start with 1 increment by 1;
drop sequence board4_seq;
drop table board2;
drop table board4;
drop table board5;
drop table board7;
alter table board3 rename to board2;
alter table board6 rename to board3;
alter table board8 rename to board4;