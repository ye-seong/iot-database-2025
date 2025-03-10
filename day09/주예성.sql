-- 1번
select email, mobile, names, addr 
  from membertbl;

-- 2번
select names as '도서명'
	 , author as '저자'
     , ISBN
     , price as '정가'
  from bookstbl
 order by ISBN ASC;

-- 3번
select names as '비대여자명'
     , levels as '등급'
     , addr as '주소'
     , rentaldate as '대여일'
  from membertbl as m
left join rentaltbl as r
on m.idx = r.memberIdx
where rentaldate is null
order by levels ASC;

-- 4번
select COALESCE(d.names, '--합계--') as '장르'
     , CONCAT(FORMAT(sum(price),0),'원') as '총합계금액'
  from divtbl as d, bookstbl as b
 where d.division = b.division
 group by d.names with rollup;


