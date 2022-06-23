CREATE DATABASE my_database8;
Create table tblve(
phimid int,
gheid int,
ngay_chieu date,
trang_thai nvarchar(20),
kchinhve int primary key,
foreign key (phimid) references tblphim(phimid),
    foreign key (gheid) references tblghe(gheid)

);
Create table tblghe(
gheid int  primary key,
phongid int,
so_ghe varchar(10),
    foreign key (phongid) references tblphong(phong)
);
Create table tblphim(
phimid int  primary key,
ten_phim varchar(300),
loai_phim varchar(300),
thoi_giam int
);
Create table tblphong(
phong int  primary key,
ten_phong varchar(300),
trang_thai nvarchar(300)
);

DROP TABLE my_database8.tblphim;

select my_database8.tblphim. *, my_database8.tblve.ngay_chieu
from my_database8.tblphim join my_database8. tblve on my_database8.tblphim. phimid= my_database8.tblve.phimid
order by my_database8. tblve.ngay_chieu;

select my_database8.tblphim.* 
from my_database8.tblphim
order by my_database8.tblphim.thoi_giam desc
limit 1;

select my_database8.tblphim.* 
from my_database8.tblphim
order by my_database8.tblphim.thoi_giam 
limit 2;

select my_database8.tblghe.* 
from my_database8.tblghe
where so_ghe like "%a%";

-- sua:
alter table tblphong
change column trang_thai trang_thai nvarchar(25);

update my_database8.tblphong set trang_thai=(
case
when trang_thai=0 then 'dang sua'
when trang_thai=1 then 'dang su dung'
else  'Unknow'
end )
where phong>0;

select my_database8.tblphim.ten_phim
from my_database8.tblphim
having length( my_database8.tblphim.ten_phim) between 15 and 25;

select( concat (my_database8.tblphong.ten_phong,my_database8.tblphong.trang_thai)) as`trang thai phong chieu`
from my_database8.tblphong;
 
 Create table  tblRank(
 select my_database8.tblphim.ten_phim, my_database8.tblphim.thoi_giam
 from my_database8.tblphim
order by my_database8.tblphim. ten_phim);

ALTER TABLE my_database8. tblPhim
  ADD  Mo_ta  nvarchar(100);
 
UPDATE my_database8.tblPhim
SET mo_ta='day la bo phim the loai' and my_database8.tblPhim.loai_phim
where phimid>0;

select *from my_database8.tblPhim;

ALTER TABLE  my_database8.tblghe
DROP CONSTRAINT phongid ;

DELETE FROM  my_database8.tblghe;


 SELECT CURTIME() today;
select addtime(CURTIME(),'3:11:20:00')





