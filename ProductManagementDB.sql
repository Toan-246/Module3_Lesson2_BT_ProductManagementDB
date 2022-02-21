show
databases;
create
database QuanLyBanHang;
use
QuanLyBanHang;
CREATE TABLE customers
(
    cID   INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cName VARCHAR(50),
    cAge  INT CHECK (cAge >= 0)
);
create table Orders
(
    oID         int not null auto_increment primary key,
    cID         int,
    oDate       datetime,
    oTotalPrice float,
    foreign key (cID) references customers (cID)
);
create table products
(
    pID    int not null auto_increment primary key,
    pName  varchar(50),
    pPrice float check ( pPrice > 0 )
);
create table orderDetails
(
    pID   int,
    oID   int,
    odQTY int check ( odQTY > 0 ),
    primary key (pID, oID),
    foreign key (pID) references products (pID),
    foreign key (oID) references Orders (oID)
);