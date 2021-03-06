USE [master]
GO
/****** Object:  Database [SE1425_PRJ321]    Script Date: 7/5/2021 1:12:14 PM ******/
CREATE DATABASE [SE1425_PRJ321]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SE1425_PRJ321', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SE1425_PRJ321.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SE1425_PRJ321_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SE1425_PRJ321_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SE1425_PRJ321] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SE1425_PRJ321].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SE1425_PRJ321] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET ARITHABORT OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SE1425_PRJ321] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SE1425_PRJ321] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SE1425_PRJ321] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SE1425_PRJ321] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SE1425_PRJ321] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SE1425_PRJ321] SET  MULTI_USER 
GO
ALTER DATABASE [SE1425_PRJ321] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SE1425_PRJ321] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SE1425_PRJ321] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SE1425_PRJ321] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SE1425_PRJ321] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SE1425_PRJ321] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SE1425_PRJ321', N'ON'
GO
ALTER DATABASE [SE1425_PRJ321] SET QUERY_STORE = OFF
GO
USE [SE1425_PRJ321]
GO
/****** Object:  Table [dbo].[HE141062_Authority]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_Authority](
	[id] [int] NOT NULL,
	[name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Authority] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HE141062_Category]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](150) NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HE141062_FeedBack]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_FeedBack](
	[email] [nvarchar](150) NOT NULL,
	[name] [nvarchar](150) NULL,
	[phone] [nvarchar](24) NULL,
	[tile] [nvarchar](150) NULL,
	[contentFB] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HE141062_FeedBack_a_product]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_FeedBack_a_product](
	[email] [nvarchar](150) NOT NULL,
	[name] [nvarchar](150) NULL,
	[phone] [nvarchar](24) NULL,
	[tile] [nvarchar](150) NULL,
	[contentFB] [nvarchar](max) NULL,
	[ProductID] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HE141062_OrderDetails]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_OrderDetails](
	[orderID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[amount] [decimal](18, 0) NOT NULL,
	[urlProduct] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HE141062_Orders]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_Orders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[userMail] [nvarchar](150) NULL,
	[nameReceiver] [nvarchar](150) NOT NULL,
	[phone] [nvarchar](24) NULL,
	[address] [nvarchar](150) NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[status] [nvarchar](150) NULL,
	[note] [nvarchar](1000) NULL,
	[totalMoney] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HE141062_Product]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[CategoryID] [int] NOT NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[Url] [nvarchar](150) NULL,
 CONSTRAINT [PK_Product1] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HE141062_ProductDescription]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_ProductDescription](
	[manhinh] [nvarchar](150) NULL,
	[camerasau] [nvarchar](150) NULL,
	[cameratruoc] [nvarchar](150) NULL,
	[cpu] [nvarchar](150) NULL,
	[ram] [nvarchar](150) NULL,
	[bonhotrong] [nvarchar](150) NULL,
	[sim] [nvarchar](150) NULL,
	[sanxuattai] [nvarchar](150) NULL,
	[heieuhanh] [nvarchar](150) NULL,
	[chongnuoc] [nvarchar](150) NULL,
	[ProductID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HE141062_UserAccount]    Script Date: 7/5/2021 1:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HE141062_UserAccount](
	[userName] [nvarchar](150) NULL,
	[userPassword] [nvarchar](150) NULL,
	[phone] [nvarchar](24) NULL,
	[email] [nvarchar](150) NOT NULL,
	[authority] [int] NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HE141062_Authority] ([id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[HE141062_Authority] ([id], [name]) VALUES (2, N'Customer')
GO
INSERT [dbo].[HE141062_Category] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Điện Thoại', NULL)
INSERT [dbo].[HE141062_Category] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Máy Tính', NULL)
INSERT [dbo].[HE141062_Category] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Thiết Bị Điện Tử', NULL)
GO
INSERT [dbo].[HE141062_FeedBack] ([email], [name], [phone], [tile], [contentFB]) VALUES (N'trongson@gmail.com', N'danggiangdzai', N'0988025083', N'good shop', N'good')
INSERT [dbo].[HE141062_FeedBack] ([email], [name], [phone], [tile], [contentFB]) VALUES (N'trongson@gmail.com', N'danggiangdzai', N'0336664445', N'good shop', N'nhiệt tình')
GO
INSERT [dbo].[HE141062_FeedBack_a_product] ([email], [name], [phone], [tile], [contentFB], [ProductID]) VALUES (N'trongson@gmail.com', N'danggiang', N'0336664445', N'ok', N'ok', 6)
INSERT [dbo].[HE141062_FeedBack_a_product] ([email], [name], [phone], [tile], [contentFB], [ProductID]) VALUES (N'trongson@gmail.com', N'danggiang', N'0336664445', N'ok', N'he', 6)
INSERT [dbo].[HE141062_FeedBack_a_product] ([email], [name], [phone], [tile], [contentFB], [ProductID]) VALUES (N'trongson@gmail.com', N'danggiang', N'0336664445', N'ok', N'gfdfs', 11)
INSERT [dbo].[HE141062_FeedBack_a_product] ([email], [name], [phone], [tile], [contentFB], [ProductID]) VALUES (N'trongson@gmail.com', N'danggiang', N'0336664445', N'ok', N'dsgd', 12)
INSERT [dbo].[HE141062_FeedBack_a_product] ([email], [name], [phone], [tile], [contentFB], [ProductID]) VALUES (N'trongson@gmail.com', N'danggiang', N'0336664445', N'ok', N'hdfhdg', 6)
GO
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (3, 6, 1, CAST(6900000 AS Decimal(18, 0)), N'images/imgProduct/oppo-a92.png')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (4, 6, 21, CAST(144900000 AS Decimal(18, 0)), N'images/imgProduct/oppo-a92.png')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (5, 9, 1, CAST(75000 AS Decimal(18, 0)), N'images/imgProduct/cap-type-c-1m-ava-ds449-tb-xanh-la-ava-600x600.jpg')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (6, 7, 1, CAST(150000 AS Decimal(18, 0)), N'images/imgProduct/adapter-sac-type-c-20w-cho-iphone-ipad-apple-mhje3-ava-600x600.png')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (7, 9, 1, CAST(75000 AS Decimal(18, 0)), N'images/imgProduct/cap-type-c-1m-ava-ds449-tb-xanh-la-ava-600x600.jpg')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (7, 7, 1, CAST(150000 AS Decimal(18, 0)), N'images/imgProduct/adapter-sac-type-c-20w-cho-iphone-ipad-apple-mhje3-ava-600x600.png')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (8, 7, 1, CAST(150000 AS Decimal(18, 0)), N'images/imgProduct/adapter-sac-type-c-20w-cho-iphone-ipad-apple-mhje3-ava-600x600.png')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (9, 7, 1, CAST(150000 AS Decimal(18, 0)), N'images/imgProduct/adapter-sac-type-c-20w-cho-iphone-ipad-apple-mhje3-ava-600x600.png')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (10, 11, 5, CAST(2000000 AS Decimal(18, 0)), N'images/imgProduct/desk-693x628.png')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (11, 7, 6, CAST(900000 AS Decimal(18, 0)), N'images/imgProduct/adapter-sac-type-c-20w-cho-iphone-ipad-apple-mhje3-ava-600x600.png')
INSERT [dbo].[HE141062_OrderDetails] ([orderID], [productID], [quantity], [amount], [urlProduct]) VALUES (11, 9, 2, CAST(150000 AS Decimal(18, 0)), N'images/imgProduct/cap-type-c-1m-ava-ds449-tb-xanh-la-ava-600x600.jpg')
GO
SET IDENTITY_INSERT [dbo].[HE141062_Orders] ON 

INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (3, N'trongson@gmail.com', N'van huy', N'336664445', N'thanh đa', CAST(N'2021-03-11T00:00:00.000' AS DateTime), N'Đặt hàng thành công', N'không', CAST(6900000 AS Decimal(18, 0)))
INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (4, N'trongson@gmail.com', N'van huy', N'336664445', N'thanh đa', CAST(N'2021-03-12T00:00:00.000' AS DateTime), N'Đặt hàng thành công', N'không', CAST(144900000 AS Decimal(18, 0)))
INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (5, N'trongson@gmail.com', N'dang giang', N'336664445', N'thanh đa', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'Đơn Hàng Bị Hủy', N'không', CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (6, N'trongson@gmail.com', N'dang giang', N'336664445', N'thanh đa', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'Đơn Hàng Bị Hủy', N'không', CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (7, N'vanhuy@gmail.com', N'van huy', N'988025083', N'thanh đa', CAST(N'2021-03-14T00:00:00.000' AS DateTime), N'Đặt hàng thành công', N'không', CAST(225000 AS Decimal(18, 0)))
INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (8, N'giangntdhe141062@fpt.edu.vn', N'van huy', N'336664445', N'thanh đa', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'Đơn Hàng Bị Hủy', N'không', CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (9, N'giangntdhe141062@fpt.edu.vn', N'van huy', N'336664445', N'thanh đa', CAST(N'2021-03-17T00:00:00.000' AS DateTime), N'Đơn Hàng Bị Hủy', N'không', CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (10, N'vuthanhtrung@gmail.com', N'van huy', N'336664445', N'thanh đa', CAST(N'2021-03-23T00:00:00.000' AS DateTime), N'Đơn Hàng Bị Hủy', N'KHÔNG', CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[HE141062_Orders] ([orderID], [userMail], [nameReceiver], [phone], [address], [orderDate], [status], [note], [totalMoney]) VALUES (11, N'giangntdhe141062@fpt.edu.vn', N'van huy', N'336664445', N'thanh đa', CAST(N'2021-03-31T00:00:00.000' AS DateTime), N'Đơn Hàng Bị Hủy', N'không', CAST(1050000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[HE141062_Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[HE141062_Product] ON 

INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (6, N'Oppo A92', 1, CAST(6900000 AS Decimal(18, 0)), 22, 22, N'images/imgProduct/oppo-a92.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (7, N'Sac Iphone, Ipad', 3, CAST(150000 AS Decimal(18, 0)), 11, 1, N'images/imgProduct/adapter-sac-type-c-20w-cho-iphone-ipad-apple-mhje3-ava-600x600.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (9, N'Cáp TypeC 1m', 3, CAST(75000 AS Decimal(18, 0)), 11, 1, N'images/imgProduct/cap-type-c-1m-ava-ds449-tb-xanh-la-ava-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (10, N'Mi Band 5', 3, CAST(600000 AS Decimal(18, 0)), 15, 0, N'images/imgProduct/mi-band-5-thum-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (11, N'Đồng Hồ', 3, CAST(400000 AS Decimal(18, 0)), 11, 0, N'images/imgProduct/desk-693x628.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (12, N'LapTop HP', 2, CAST(21000000 AS Decimal(18, 0)), 25, 0, N'images/imgProduct/hp-pavilion-x360-dw0060tu-i3-195m8pa-225695-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (13, N'Đồng Hồ huami', 3, CAST(250000 AS Decimal(18, 0)), 15, 0, N'images/imgProduct/huami-amazfit-gtr-42mm-275520-035505-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (14, N'Iphone 11 ', 1, CAST(19000000 AS Decimal(18, 0)), 23, 0, N'images/imgProduct/iphone-11-red-2-400x460-400x460.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (16, N'Laptop Lenovo', 2, CAST(20000000 AS Decimal(18, 0)), 16, 0, N'images/imgProduct/lenovo-ideapad-s145-81w8001xvn-a4-216292-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (17, N'Đồng Hồ Xiaomi', 3, CAST(600000 AS Decimal(18, 0)), 20, 0, N'images/imgProduct/mi-band-5-thum-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (19, N'RealMe 7', 1, CAST(5000000 AS Decimal(18, 0)), 20, 0, N'images/imgProduct/realme-7-043120-113149-400x460.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (20, N'SamSung A21s', 1, CAST(4000000 AS Decimal(18, 0)), 15, 0, N'images/imgProduct/samsung-galaxy-a21s-055620-045627-400x460.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (21, N'Samsung Watch', 3, CAST(500000 AS Decimal(18, 0)), 15, 0, N'images/imgProduct/samsung-galaxy-watch-3-45mm-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (22, N'Samsung Watch active2', 3, CAST(400000 AS Decimal(18, 0)), 12, 0, N'images/imgProduct/samsung-galaxy-watch-active-2-44-mm-day-da-thum-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (23, N'Vivo Y12s', 1, CAST(5000000 AS Decimal(18, 0)), 20, 0, N'images/imgProduct/vivo-y12s-162620-112603-400x400.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (24, N'Xiaomi- Redmi-9', 1, CAST(4500000 AS Decimal(18, 0)), 40, 0, N'images/imgProduct/xiaomi-redmi-9-114620-094649-400x460.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (57, N'Điện thoại Samsung Galaxy Note 10+', 1, CAST(16490000 AS Decimal(18, 0)), 20, 0, N'images/imgProduct/samsung-galaxy-note-10-plus-den-400x460-400x460.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (58, N'Điện thoại Realme C15', 1, CAST(4190000 AS Decimal(18, 0)), 21, 0, N'images/imgProduct/realme-c15-400-400x400.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (59, N'Điện thoại Xiaomi Mi 10T Pro 5G', 1, CAST(12990000 AS Decimal(18, 0)), 22, 0, N'images/imgProduct/xiaomi-mi-10t-pro-300320-070336-400x460.png')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (60, N'Pin sạc dự phòng Polymer', 3, CAST(455000 AS Decimal(18, 0)), 22, 0, N'images/imgProduct/sac-du-phong-polymer-10000mah-xmobile-atela-10-add-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (62, N'Asus VivoBook Gaming F571GT', 2, CAST(21790000 AS Decimal(18, 0)), 22, 0, N'images/imgProduct/asus-vivobook-gaming-f571gt-i5-al851t-226255-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (63, N'Laptop Asus VivoBook X509JP', 2, CAST(17190000 AS Decimal(18, 0)), 22, 0, N'images/imgProduct/asus-vivobook-x509jp-i5-ej023t-2gb-221617-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (64, N'Laptop Asus ZenBook UX425EA', 2, CAST(22990000 AS Decimal(18, 0)), 40, 0, N'images/imgProduct/asus-zenbook-ux425ea-i5-bm069t-293920-103940-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (65, N'Laptop Dell Vostro 3491', 2, CAST(10990000 AS Decimal(18, 0)), 22, 0, N'images/imgProduct/dell-vostro-3491-i3-70223127-103120-103142-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (66, N'Laptop Asus VivoBook X441MA', 2, CAST(6690000 AS Decimal(18, 0)), 31, 0, N'images/imgProduct/asus-x441ma-ga024t11-191993-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (67, N'Laptop Apple MacBook Air 2017', 2, CAST(20990000 AS Decimal(18, 0)), 31, 0, N'images/imgProduct/apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (68, N'Laptop Asus VivoBook A412FA ', 2, CAST(13090000 AS Decimal(18, 0)), 32, 0, N'images/imgProduct/asus-vivobook-a412fa-i3-ek1179t-223980-1-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (69, N'Laptop Lenovo IdeaPad S340', 2, CAST(14990000 AS Decimal(18, 0)), 33, 0, N'images/imgProduct/lenovo-ideapad-s340-14iil-i5-1035g1-8gb-512gb-win1-8-214708-2-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (72, N'sạc xe hơi', 3, CAST(80000 AS Decimal(18, 0)), 12, 0, N'images/imgProduct/sac-xe-hoi-2-cong-type-c-pd-18w-qc-xmobile-sn-454-ava-600x600.jpg')
INSERT [dbo].[HE141062_Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Url]) VALUES (73, N'iphone12', 1, CAST(30000000 AS Decimal(18, 0)), 10, 0, N'images/imgProduct/iphone12_5 (1).jpg')
SET IDENTITY_INSERT [dbo].[HE141062_Product] OFF
GO
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	Dynamic AMOLED, 6.8", Quad HD+ (2K+)', N'	Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D', N'	10 MP', N'	Exynos 9825 8 nhân', N'	12 GB', N'	256 GB', N' 2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'Trung Quốc', N'	Android 9 (Pie)', N'Không', 57)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	TFT LCD, 6.6', N'	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'17 MP', N'	Snapdragon 665 8 nhân', N'	8 GB', N'	128 GB', N'2 Nano SIM, Hỗ trợ 4G', N'Trung Quốc', N'Android 11', N'Đang cập nhật', 6)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Trung Quốc', N'Đang cập nhật', N'Đang cập nhật', 7)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'15.6 inch, Full HD (1920 x 1080), 120Hz', N'không', N'	10 MP', N'	Intel Core i5 Coffee Lake, 9300H, 2.40 GHz', N'	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz', N'Intel Optane 32GB (H10), SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA', N'không', N'Trung Quốc', N'	Android 10', N'Không', 62)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Trung Quốc', N'Đang cập nhật', N'Đang cập nhật', 9)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'AMOLED ', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Trung Quốc', N'Đang cập nhật', N'Đang cập nhật', 10)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Không', N'Đang cập nhật', N'Đang cập nhật', 11)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	14 inch, Full HD (1920 x 1080)', N'Đang cập nhật', N'Có', N'	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', N'	8 GB, DDR4 (1 khe), 2666 MHz', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'	Windows 10 Home SL', N'Đang cập nhật', 12)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Việt Nam', N'Đang cập nhật', N'Đang cập nhật', 13)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	IPS LCD, 6.1', N'	2 camera 12 MP', N'	12 MP', N'	Apple A13 Bionic 6 nhân', N'4 GB', N'	256 GB', N'1 Nano SIM & 1 eSIM, Hỗ trợ 4G', N'Mỹ', N'	iOS 13', N'Đang cập nhật', 14)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'AMOLED ', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Trung Quốc', N'Đang cập nhật', N'Đang cập nhật', 17)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'14 inch, Full HD (1920 x 1080)', N'Đang cập nhật', N'Không', N'	Intel Core i3 Ice Lake, 1005G1, 1.20 GHz', N'	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz', N'SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA', N'Không', N'Trung Quốc', N'	Windows 10 Home SL', N'Đang cập nhật', 16)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'vietnam', N'Đang cập nhật', N'Đang cập nhật', 73)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'AMOLED ', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Trung Quốc', N'Đang cập nhật', N'Đang cập nhật', 21)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	IPS LCD, 6.5", Full HD+', N'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', N'	16 MP', N'	MediaTek Helio G95 8 nhân', N'8 GB', N'	128 GB', N'
2 Nano SIM, Hỗ trợ 4G', N'Trung Quốc', N'	Android 10', N'Đang cập nhật', 19)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	TFT LCD, 6.5", HD+', N'	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', N'	13 MP', N'	Exynos 850 8 nhân', N'	6 GB', N'	64 GB', N'2 Nano SIM, Hỗ trợ 4G', N'Trung Quốc', N'	Android 10', N'Đang cập nhật', 20)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'AMOLED ', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', N'Trung Quốc', N'Đang cập nhật', N'Đang cập nhật', 22)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	15.6 inch, Full HD (1920 x 1080)', N'không', N'	10 MP', N'	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz', N'8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz', N'SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA', N'không', N'Trung Quốc', N'	Windows 10 Home SL', N'Không', 63)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'IPS LCD, 6.51", HD+', N'Chính 13 MP & Phụ 2 MP', N'8 MP', N'MediaTek Helio P35 8 nhân', N'3 GB', N'	32 GB', N'2 Nano SIM, Hỗ trợ 4G', N'Trung Quốc', N'	Android 10', N'Đang cập nhật', 23)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	IPS LCD, 6.53", Full HD+', N'Chính 13 MP & Phụ 8 MP, 5 MP, 2 MP', N'	8 MP', N'MediaTek Helio G80 8 nhân', N'4 GB', N'64 GB', N'2 Nano SIM, Hỗ trợ 4G', N'Trung Quốc', N'	Android 10', N'Đang cập nhật', 24)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'14 inch, Full HD (1920 x 1080)', N'không', N'	10 MP', N'	Intel Core i3 Ice Lake, 1005G1, 1.20 GHz', N'	4 GB, DDR4 (2 khe), 2666 MHz', N'	SSD 256GB NVMe PCIe', N'không', N'Trung Quốc', N'	Windows 10 Home SL', N'Không', 65)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'14 inch, HD (1366 x 768)', N'không', N'	10 MP', N'Laptop Asus VivoBook X441MA', N'4 GB, DDR4 (1 khe), 2133 MHz', N'	HDD: 1 TB SATA3', N'không', N'Trung Quốc', N'	Windows 10 Home SL', N'Không', 66)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'	13.3 inch, WXGA+(1440 x 900)', N'không', N'	10 MP', N'Intel Core i5 Broadwell, 1.80 GHz', N'	8 GB, DDR3L(On board), 1600 MHz', N'	SSD: 128 GB', N'không', N'Trung Quốc', N'Mac OS', N'Không', 67)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'IPS LCD, 6.5', N'	Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D', N'20MP', N'	Snapdragon 460 8 nhân', N'8GB', N'	64 GB', N' 2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'Trung Quốc', N'	Android 10', N'Không', 59)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'không', N'không', N'không', N'không', N'không', N'không', N'không', N'Trung Quốc', N'không', N'Không', 60)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'14 inch, Full HD (1920 x 1080)', N'không', N'	10 MP', N'	Intel Core i5 Tiger Lake, 1135G7, 2.40 GHz', N'	8 GB, LPDDR4X (On board), 4266 MHz', N'	SSD 512 GB M.2 PCIe', N'không', N'Trung Quốc', N'	Windows 10 Home SL', N'Không', 64)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'IPS LCD, 6.5", HD+', N'Chính 13 & Phụ 8 MP, 2 MP, 2 MP', N'8 MP', N'	Snapdragon 460 8 nhân', N'	4 GB', N'	64 GB', N' 2 Nano SIM, Hỗ trợ 4G', N'Trung Quốc', N'	Android 10', N'Không', 58)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'14 inch, Full HD (1920 x 1080)', N'không', N'	10 MP', N'	Intel Core i3 Comet Lake, 10110U, 2.10 GHz', N'	4 GB, DDR4 (On board +1 khe), 2666 MHz', N'	Intel Optane 32GB (H10), SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA', N'không', N'Trung Quốc', N'	Windows 10 Home SL', N'Không', 68)
INSERT [dbo].[HE141062_ProductDescription] ([manhinh], [camerasau], [cameratruoc], [cpu], [ram], [bonhotrong], [sim], [sanxuattai], [heieuhanh], [chongnuoc], [ProductID]) VALUES (N'14 inch, Full HD (1920 x 1080)', N'không', N'	10 MP', N'	Intel Core i5 Coffee Lake, 9300H, 2.40 GHz', N'	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz', N'	256 GB', N'không', N'Trung Quốc', N'	Windows 10 Home SL', N'Không', 69)
GO
INSERT [dbo].[HE141062_UserAccount] ([userName], [userPassword], [phone], [email], [authority]) VALUES (N'longhkhe', N'$2a$12$/ne8JGuEcgOTbbERzEGiEeUfPqhiq8tP0MNbpiqGceQ7wXvYN.15G', NULL, N'alabuba10@gmail.com', 1)
INSERT [dbo].[HE141062_UserAccount] ([userName], [userPassword], [phone], [email], [authority]) VALUES (N'longhkheho', N'$2a$12$SFEj62c7DXJ8shWWyzTikeeb62uaFAsIgXUlAXcSrDDDweslvXNne', NULL, N'alabuba1000@gmail.com', 2)
INSERT [dbo].[HE141062_UserAccount] ([userName], [userPassword], [phone], [email], [authority]) VALUES (N'danggiang', N'$2a$12$s0HCs1K4LzrS6ZzprfYcnOFDkjUBd4Esyr5k2rEqY1mTAcJas5suu', N'0336664445', N'giangntdhe141062@fpt.edu.vn', 2)
INSERT [dbo].[HE141062_UserAccount] ([userName], [userPassword], [phone], [email], [authority]) VALUES (N'longhk', N'123321', NULL, N'longhk@gmail.com', 1)
INSERT [dbo].[HE141062_UserAccount] ([userName], [userPassword], [phone], [email], [authority]) VALUES (N'danggiangDZ', N'123321', N'0336664444', N'trongson@gmail.com', 2)
INSERT [dbo].[HE141062_UserAccount] ([userName], [userPassword], [phone], [email], [authority]) VALUES (N'van huy', N'$2a$12$HozPztBq/7gt0vkcNAo.hO3Zo4RIRBaagwSfSV/uiQIZpUmKT2hqK', NULL, N'vanhuy@gmail.com', 1)
INSERT [dbo].[HE141062_UserAccount] ([userName], [userPassword], [phone], [email], [authority]) VALUES (N'trung vu', N'$2a$12$KRNqGZFKQ/7lSlczpLVmxOJqROHd0q8V7YhIvtQdxaepKtZRlBhbu', NULL, N'vuthanhtrung@gmail.com', 2)
GO
ALTER TABLE [dbo].[HE141062_FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_UserAccount] FOREIGN KEY([email])
REFERENCES [dbo].[HE141062_UserAccount] ([email])
GO
ALTER TABLE [dbo].[HE141062_FeedBack] CHECK CONSTRAINT [FK_FeedBack_UserAccount]
GO
ALTER TABLE [dbo].[HE141062_FeedBack_a_product]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_a_product_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[HE141062_Product] ([ProductID])
GO
ALTER TABLE [dbo].[HE141062_FeedBack_a_product] CHECK CONSTRAINT [FK_FeedBack_a_product_Product]
GO
ALTER TABLE [dbo].[HE141062_FeedBack_a_product]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_a_product_UserAccount] FOREIGN KEY([email])
REFERENCES [dbo].[HE141062_UserAccount] ([email])
GO
ALTER TABLE [dbo].[HE141062_FeedBack_a_product] CHECK CONSTRAINT [FK_FeedBack_a_product_UserAccount]
GO
ALTER TABLE [dbo].[HE141062_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([orderID])
REFERENCES [dbo].[HE141062_Orders] ([orderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HE141062_OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[HE141062_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[HE141062_Product] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HE141062_OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[HE141062_Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_UserAccount1] FOREIGN KEY([userMail])
REFERENCES [dbo].[HE141062_UserAccount] ([email])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HE141062_Orders] CHECK CONSTRAINT [FK_Orders_UserAccount1]
GO
ALTER TABLE [dbo].[HE141062_Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[HE141062_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[HE141062_Product] CHECK CONSTRAINT [FK_Product_Category1]
GO
ALTER TABLE [dbo].[HE141062_ProductDescription]  WITH CHECK ADD  CONSTRAINT [FK_ProductDescription_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[HE141062_Product] ([ProductID])
GO
ALTER TABLE [dbo].[HE141062_ProductDescription] CHECK CONSTRAINT [FK_ProductDescription_Product]
GO
ALTER TABLE [dbo].[HE141062_UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_Authority1] FOREIGN KEY([authority])
REFERENCES [dbo].[HE141062_Authority] ([id])
GO
ALTER TABLE [dbo].[HE141062_UserAccount] CHECK CONSTRAINT [FK_UserAccount_Authority1]
GO
USE [master]
GO
ALTER DATABASE [SE1425_PRJ321] SET  READ_WRITE 
GO
