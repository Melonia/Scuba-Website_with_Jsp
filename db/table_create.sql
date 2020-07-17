create table member(
    num number(5) primary key,		-- 회원 번호
    userid varchar2(15),                -- 회원 아이디
    pwd varchar2(20),                   -- 회원 비밀번호
    name varchar2(10),                  -- 회원 이름
    sex number(1) default 0,            -- 성별
    tel varchar(15),			-- 집전화번호
    phone varchar2(13),                 -- 휴대전화번호(필수)
    email varchar2(20),                 -- 이메일주소
    address varchar2(50)
);

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

create table board2(           --수강생 후기
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);

create table board3(           --공지사항 게시판
    num number(5) primary key, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);

create table board4(           --스쿠버 장비판매 게시판
    num number(5) primary key not null, --게시판 고유번호, 기본키로 설정
    name varchar2(30),         --작성자 이름(회원 정보에서 가져옴)
    pass varchar2(30),         --게시글 비밀번호(회원 비밀번호와 동일해야함)
    title varchar2(50),        --게시글 제목
    content varchar2(1000),    --게시글 내용
    readcount number(4) default 0, --조회수
    writedate date default sysdate --작성일자
);

commit;