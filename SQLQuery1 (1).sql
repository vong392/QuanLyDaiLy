create database tranguyen
go
use tranguyen
create table LoaiDaiLy (
	MaLoaiDaiLy nchar(5) primary key,
	TenLoaiDaiLy varchar(50),
	TienNoToiDa money
);
create table Quan (
	MaQuan varchar(3) primary key,
	TenQuan varchar(50),
	SoDaiLyToiDa int
);
create table DaiLy (
	MaDaiLy varchar(5) primary key,
	TenDaiLy varchar(30),
	MaLoaiDaiLy nchar(5),
	DienThoai int,
	DiaChi char(50),
	MaQuan varchar(3),
	NgayTiepNhan smalldatetime,
	Email varchar(20),
	TienNo money
	Foreign key (MaLoaiDaiLy) references LoaiDaiLy(MaLoaiDaiLy),
	Foreign key (MaQuan) references Quan(MaQuan)
);

create table PhieuXuat (
	MaPhieuXuat varchar(5) primary key,
	MaDaiLy varchar(5),
	NgayLapPhieu smalldatetime,
	TongTriGia money,
	Foreign key (MaDaiLy) references DaiLy(MaDaiLy)
);
create table MatHang (
	MaMatHang varchar(5) primary key,
	TenMatHang varchar(30),
	DonViTinh varchar(10),
	DonGia money,
	SoLuongTon int
);

create table ChiTietPhieuXuat (
	MaChiTietPhieuXuat varchar(5) primary key,
	MaPhieuXuat varchar(5),
	MaMatHang varchar(5),
	DonViTinh varchar(10),
	SoLuongXuat int,
	DonGia money,
	ThanhTien money,
	Foreign key (MaPhieuXuat) references PhieuXuat(MaPhieuXuat),
	Foreign key (MaMatHang) references MatHang(MaMatHang)
);
create table PhieuThu (
	MaPhieuThu varchar(5) primary key,
	MaDaiLy varchar(5),
	NgayThuTien smalldatetime,
	SoTienThu money,
	Foreign key (MaDaiLy) references DaiLy(MaDaiLy)
);
create table DoanhSo (
	MaDaiLy varchar(5) not null,
	Thang int not null,
	SoPhieuXuat int,
	TongTriGia money,
	TyLe float
	Primary key(MaDaiLy, Thang),
	Foreign key (MaDaiLy) references DaiLy(MaDaiLy)
);
create table CongNo (
	MaDaiLy varchar(5) not null,
	Thang int not null,
	NoDau money,
	PhatSinh money,
	NoCuoi money,
	Primary key(MaDaiLy, Thang),
	Foreign key (MaDaiLy) references DaiLy(MaDaiLy)
);

create table ToChuc (
	ID varchar(5) primary key,
	SoLoaiDaiLy int,
	SoMatHang int
);
Insert into LoaiDaiLy values ('LDL01', 'Loai 1',10000000); 
Insert into LoaiDaiLy values ('LDL02', 'Loai 2',20000000);
Insert into LoaiDaiLy values ('LDL03', 'Loai 3',30000000); 
Insert into LoaiDaiLy values ('LDL04', 'Loai 4',40000000);
Insert into Quan values ('Q01', 'Quan 1',5); 
Insert into Quan values ('Q02', 'Quan 2',4);
Insert into Quan values ('Q03', 'Quan 3',3);
Insert into Quan values ('Q04', 'Quan 4',6);
Insert into Quan values ('Q05', 'Quan 5',3);
Insert into Quan values ('Q06', 'Quan 6',7);
Insert into Quan values ('Q07', 'Quan 7',8);
Insert into DaiLy values ('DL001', 'Dai Ly Nguyet'	,'LDL01', 0912344321, '111 Moc Hy'	, 'Q01', '01/01/2000', 'Nguyet@gmail.com', 0);
Insert into DaiLy values ('DL002', 'Dai Ly Vien'	,'LDL02', 0916344322, '121 Le Loi'	, 'Q02', '01/01/2001', 'Vien@gmail.com', 0);
Insert into DaiLy values ('DL003', 'Dai Ly Chi'		,'LDL03', 0912644323, '1 Trang Uyen', 'Q03', '01/01/2002', 'Chi@gmail.com', 0);
Insert into DaiLy values ('DL004', 'Dai Ly Da'		,'LDL04', 0912312324, '7 Nguyen Hue', 'Q04', '01/01/2003', 'Da@gmail.com', 0);
Insert into DaiLy values ('DL005', 'Dai Ly Tu'		,'LDL01', 0912344325, '14 Luong vi'	, 'Q05', '01/01/2004', 'Tu@gmail.com', 0);
Insert into DaiLy values ('DL006', 'Dai Ly Cam'		,'LDL02', 0912344326, '11 Yasuo'	, 'Q06', '01/01/2005', 'Cam@gmail.com', 0);
Insert into DaiLy values ('DL007', 'Dai Ly Chi'		,'LDL03', 0912372427, '6 Phu My Hung', 'Q07', '01/01/2006', 'Chi@gmail.com', 0);
Insert into DaiLy values ('DL008', 'Dai Ly Dinh'	,'LDL04', 0912554481, '21 Tran Phu'	, 'Q01', '01/01/2007', 'Dinh@gmail.com', 0);
Insert into DaiLy values ('DL009', 'Dai Ly Nhat'	,'LDL01', 0912344329, '161 Hazard'	, 'Q02', '01/01/2008', 'Nhat@gmail.com', 0);
Insert into DaiLy values ('DL010', 'Dai Ly Kiem'	,'LDL02', 0918634320, '26 Chelsea'	, 'Q03', '01/01/2009', 'Kiem@gmail.com', 0);
Insert into DaiLy values ('DL011', 'Dai Ly Tay'		,'LDL03', 0912348210, '19 Mig-21'	, 'Q04', '01/01/2010', 'Tay@gmail.com', 0);
Insert into DaiLy values ('DL012', 'Dai Ly Lai'		,'LDL04', 0912344721, '113 Chu Tuoc', 'Q05', '01/01/2011', 'Lai@gmail.com', 0);
Insert into DaiLy values ('DL013', 'Dai Ly Thien'	,'LDL01', 0912343922, '13 Nghiet Bo', 'Q06', '01/01/2012', 'Thien@gmail.com', 0);
Insert into DaiLy values ('DL014', 'Dai Ly Ngoai'	,'LDL02', 0912346623, '9 Phu My Hung', 'Q07', '01/01/2013', 'Ngoai@gmail.com', 0);
Insert into DaiLy values ('DL015', 'Dai Ly Phi'		,'LDL03', 0941834424, '123 Ve Doanh', 'Q01', '01/01/2014', 'Phi@gmail.com', 0);
Insert into DaiLy values ('DL016', 'Dai Ly Tien'	,'LDL04', 0923473296, '7 Tieu Mac Ca', 'Q02', '01/01/2015', 'Tien@gmail.com', 0);
Insert into ToChuc values ('ID01', 4, 7);
Insert into MatHang values ('MH001', 'AK-47', 'khau', 10000,null);
Insert into MatHang values ('MH002', 'Bazoka', 'khau', 20000,null);
Insert into MatHang values ('MH003', 'Luu Dan', 'qua', 1000,null);
Insert into MatHang values ('MH004', 'T-14 Armata', 'chiec', 5000000,null);
Insert into MatHang values ('MH005', 'Tu-160 Blackjack', 'chiec', 9000000,null);
Insert into MatHang values ('MH006', 'S-400 Triumf', 'to hop', 100000,null);
Insert into MatHang values ('MH007', 'Molniya 1241.8', 'chiec', 11100000,null);
go

create trigger MaxDLInQuan_update
on Quan
for UPDATE
as 
	if UPDATE(SoDaiLyToiDa)
	Begin
	declare @sodaily int, @sodailytoida int
	set @sodailytoida=(select SoDaiLyToiDa from INSERTED)
	set @sodaily=(select count(distinct MaDaiLy) from DaiLy, INSERTED where DaiLy.MaQuan = INSERTED.MaQuan)
	if (@sodailytoida < @sodaily)
		begin
		print 'so loai dai ly toi da phai >= '+ cast(@sodaily as varchar(4)) + ' (so loai dai ly co san trong database)'
		rollback
		end
	end
go

create trigger MaxDLInQuan_insert
on DaiLy
for INSERT
as
	Begin
	declare @sodaily int, @sodailytoida int
	set @sodailytoida = (select SodaiLyToiDa from INSERTED, Quan where INSERTED.MaQuan=Quan.MaQuan)
	set @sodaily = (select count(distinct DaiLy.MaDaiLy) from DaiLy, INSERTED where DaiLy.MaQuan=INSERTED.MaQuan)
	if (@sodaily+1>@sodailytoida)
		Begin
		print 'so dai ly <= '+ cast(@sodailytoida as varchar(4)) + ' (so dai ly toi da trong quan)'
		rollback 
		End
	End
go

create trigger MaxMatHang_update
on Tochuc
for UPDATE
as 
	if UPDATE(SoMatHang)
	Begin
	declare @somathang int, @somathangtoida int
	set @somathangtoida=(select SoMatHang from INSERTED)
	set @somathang=(select count(distinct MaMatHang) from MatHang)
	if (@somathangtoida < @somathang)
		begin
		print 'so mat hang toi da phai >= '+ cast(@somathang as varchar(4)) + ' (so mat hang co san trong database)'
		rollback
		end
	end
go

create trigger MaxMatHang_insert
on MatHang
for INSERT
as
	Begin
	declare @somathang int, @somathangtoida int
	set @somathangtoida = (select SoMatHang from ToChuc)
	set @somathang=(select count(distinct MaMatHang) from MatHang)
	if (@somathang+1>@somathangtoida)
		Begin
		print 'so mat hang <= '+ cast(@somathangtoida as varchar(4)) + ' (so mat hang toi da)'
		rollback
		End
	End


update ToChuc
set SoMatHang = 1
where ID = 'ID01'

