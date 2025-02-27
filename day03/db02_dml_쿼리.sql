-- INSERT
-- 3-44 Book테이블에 '스포츠 의학' 도서를 추가하세요. 한솔의학서적에서 출간했고, 90,000원입니다.
INSERT INTO Book (bookid, bookname, publisher, price)
VALUES (11, '스포츠 의학', '한솔의학서적', 90000);

SELECT * FROM Book;

-- 컬럼명 생략
INSERT INTO Book VALUES (12, '스타워즈 아트북', '디즈니', 1500000);

INSERT INTO Book VALUES (12, '어벤져스 스토리', '디즈니', 1500000);

-- 다중 데이터 입력
INSERT INTO Book (bookid, bookname, publisher, price)
VALUES (13, '기타교본 1', '지미 핸드릭스', 12000),
	   (14, '기타교본 2', '지미 핸드릭스', 12000),
       (15, '기타교본 3', '지미 핸드릭스', 15000);
       
-- 3-46 imported_book에 있는 데이터를 Book 테이블에 데이터를 모두 삽입하시오.
-- 한 테잉블에 있는 많은 데이터를 다른 테이블로 복사하는 데 가장 효과적인 방법
INSERT INTO Imported_Book (bookid, bookname, publisher, price)
SELECT bookid, bookname, publisher, price
  FROM Imported_Book;
  
-- 추가. 테이블의 숫자형 타입으로 된 PK값이 자동으로 증가하도록 만들고 사용하려면...
CREATE TABLE NewBook (
	bookid    integer primary key auto_increment, -- auto_increment 는 숫자 자동증가 조건
    bookname  varchar(50) not null,
    publisher varchar(50) not null,
    price     int         null -- null은 생략가능
    );
    
-- 자동증가에는 pk 컬럼을 사용하지 않음!
INSERT INTO NewBook (bookname, publisher, price)
VALUES ('알라딘 아트북', '디즈니', 100000);

select * from NewBook;