create table member(
    num number(5) primary key,          -- ȸ�� ������ȣ
    userid varchar2(15),                -- ȸ�� ���̵�
    pwd varchar2(20),                   -- ȸ�� ��й�ȣ
    name varchar2(10),                  -- ȸ�� �̸�
    sex number(1) default 0,            -- ����
    tel varchar2(13),                   -- ����ȭ(�ʼ����� �ƴ�)
    phone varchar2(13),                 -- �޴���ȭ��ȣ(�ʼ�)
    email varchar2(20),                 -- �̸����ּ�
    address varchar2(100)               -- ���ּ�
);

desc member;
select * from member;
create sequence member_seq start with 1 increment by 1;

create table board1(                     -- ����� ������û
    num number(5) primary key,           -- �Խñ� ������ȣ
    title varchar2(50),                  -- �Խñ� ����
    pass varchar2(50),                   -- �ۼ��� ��й�ȣ
    name varchar2(30),                   -- �ۼ��� �̸�
    phone varchar2(13),                  -- �ۼ��� ����ó
    space number(2),                     -- �������� ���
    subject number(2),                   -- ����ϴ� ��������
    pack number(2),                      -- ��Ű��
    time number(2),                      -- �����ޱ⸦ ����ϴ� �ð�
    readcount number(4) default 0,       --��ȸ��
    writedate date default sysdate       --�ۼ�����
);
desc board1;
create sequence board1_seq start with 1 increment by 1;

create table board2(           --������ �ı�
    num number(5) primary key, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board2;

create sequence board2_seq start with 1 increment by 1;

insert into board3(num,name,pass,title,content)
values(board3_seq.nextval,'���','1234','�׽�Ʈ','�����׽�Ʈ');

commit;
rollback;

create table board3(           --�������� �Խ���
    num number(5) primary key, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board3;
create sequence board3_seq start with 1 increment by 1;

create table board4(           --����� ����Ǹ� �Խ���
    num number(5) primary key not null, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
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