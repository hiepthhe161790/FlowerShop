
USE [master]
GO
/****** Object:  Database [PRJFlower]    Script Date: 7/10/2023 6:01:14 PM ******/
CREATE DATABASE [PRJFlower]
 CONTAINMENT = NONE
GO
ALTER DATABASE [PRJFlower] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJFlower].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJFlower] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJFlower] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJFlower] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJFlower] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJFlower] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJFlower] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJFlower] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJFlower] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJFlower] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJFlower] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJFlower] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJFlower] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJFlower] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJFlower] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJFlower] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJFlower] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJFlower] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJFlower] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJFlower] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJFlower] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJFlower] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJFlower] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJFlower] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJFlower] SET  MULTI_USER 
GO
ALTER DATABASE [PRJFlower] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJFlower] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJFlower] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJFlower] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJFlower] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJFlower] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJFlower', N'ON'
GO
ALTER DATABASE [PRJFlower] SET QUERY_STORE = OFF
GO
USE [PRJFlower]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountId] [int] IDENTITY(1,1) NOT NULL,
	[accountEmail] [nvarchar](200) NULL,
	[accountPassword] [nvarchar](200) NULL,
	[roleId] [int] NULL,
	[accountDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountContact]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountContact](
	[accountContactId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[accountContactAddress] [nvarchar](200) NULL,
	[accountContactName] [nvarchar](200) NULL,
	[accountContactMobile] [nvarchar](200) NULL,
	[accountContactDefault] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountDetail]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountDetail](
	[accountDetailId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[accountDetailName] [nvarchar](200) NULL,
	[accountDetailAvatar] [nvarchar](500) NULL,
	[accountDetailDob] [date] NULL,
	[accountDetailDoc] [date] NULL,
 CONSTRAINT [PK__AccountD__A0EB5AE9B967181A] PRIMARY KEY CLUSTERED 
(
	[accountDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](200) NULL,
	[categoryIcon] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[colorId] [int] IDENTITY(1,1) NOT NULL,
	[colorValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[colorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[orderCreateDate] [date] NULL,
	[orderExpectedDate] [date] NULL,
	[orderDoneDate] [date] NULL,
	[orderNameContact] [nvarchar](200) NULL,
	[orderPhoneContact] [nvarchar](200) NULL,
	[orderAddressContact] [nvarchar](200) NULL,
	[orderStatusId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NULL,
	[productId] [int] NULL,
	[orderDetailProductImg] [nvarchar](500) NULL,
	[orderDetailProductName] [nvarchar](200) NULL,
	[orderDetailPriceProduct] [int] NULL,
	[orderDetailColorValue] [nvarchar](200) NULL,
	[orderDetailQuantity] [int] NULL,
 CONSTRAINT [PK__OrderDet__E4FEDE4AA5B79524] PRIMARY KEY CLUSTERED 
(
	[orderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[orderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[orderStatusName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](200) NULL,
	[productImg] [nvarchar](200) NULL,
	[productPrice] [int] NULL,
	[productDescription] [nvarchar](1000) NULL,
	[categoryId] [int] NULL,
	[productIsFeatured] [bit] NULL,
	[productIsRecent] [bit] NULL,
	[productDeleted] [bit] NULL,
	[URL] [nvarchar](1000) NULL,
 CONSTRAINT [PK__Product__2D10D16AAE70013D] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColor]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColor](
	[ProductColorId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ColorId] [int] NULL,
	[active] [bit] NULL,
 CONSTRAINT [PK_ProductColor] PRIMARY KEY CLUSTERED 
(
	[ProductColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImgDetail]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImgDetail](
	[productImgDetailId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[productImgDetailPath] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[productImgDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/10/2023 6:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (1, N'quoc', N'sdasd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (2, N'quyquoc2002@gmail.com', N'Shironeko02', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (3, N'linhnvhe170399@fpt.edu.vn', N'12345', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (4, N'quyquoc2002@gmail.com', N'123456', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (5, N'Linh Linh', N'123456', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (6, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (7, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (8, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (9, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (10, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (11, N'quocpqhe163061@fpt.edu.vn', N'123456789', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (12, N'quocpqhe163061@fpt.edu.vn', N'123456789', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (13, N'quocpqhe163061@fpt.edu.vn', N'0987654321', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (14, N'admin@gmail.com', N'admin', 1, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountContact] ON 

INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (1, 3, N'Tuan cuongâ', N'Quoc', N'0911092002', 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (2, 3, N'Fenikaaaa', N'HuyTQ', N'0912345678', 1)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (4, 4, N'asdasd', N'sada', N'sadasd', 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (5, 4, N'dasdasd', N'asdasdad', N'asdasd', 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (6, 3, N'Hoàng Nam', N'Quốc', N'0912345678', 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (7, 3, N'TC', N'Quốc', N'0911092002', 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (8, 3, N'Ở đâu đó', N'Linh', N'0942342341', 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (9, 3, N'đâsad', N'TÙn', N'0123123122', 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (10, 3, N'ádsa', N'dsadasdsad', N'0123123122', 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (11, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (12, 4, NULL, N'Quoc', NULL, 0)
INSERT [dbo].[AccountContact] ([accountContactId], [accountId], [accountContactAddress], [accountContactName], [accountContactMobile], [accountContactDefault]) VALUES (13, 3, N'dsffssdfsdfsdfds', N'huy', N'0123456789', 0)
SET IDENTITY_INSERT [dbo].[AccountContact] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountDetail] ON 

INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailAvatar], [accountDetailDob], [accountDetailDoc]) VALUES (3, 3, N'Linhgg', NULL, NULL, CAST(N'2023-05-21' AS Date))
INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailAvatar], [accountDetailDob], [accountDetailDoc]) VALUES (4, 4, N'Linh Linh', NULL, NULL, CAST(N'2023-05-23' AS Date))
INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailAvatar], [accountDetailDob], [accountDetailDoc]) VALUES (5, 11, N'Quoc HUY', NULL, NULL, CAST(N'2023-05-28' AS Date))
INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailAvatar], [accountDetailDob], [accountDetailDoc]) VALUES (6, 12, NULL, NULL, NULL, CAST(N'2023-05-28' AS Date))
INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailAvatar], [accountDetailDob], [accountDetailDoc]) VALUES (7, 13, N'Huy Quocccccccccccccccccc', NULL, NULL, CAST(N'2023-05-28' AS Date))
SET IDENTITY_INSERT [dbo].[AccountDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryId], [categoryName], [categoryIcon]) VALUES (1, N'Artificial Flowers', N'assets/img/flowers.png')
INSERT [dbo].[Category] ([categoryId], [categoryName], [categoryIcon]) VALUES (2, N'Decorative flowers', N'assets/img/vecteezy_rose-flower-bouquet-watercolor-for-valentine_9667949_714.png')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([colorId], [colorValue]) VALUES (1, N'Red ')
INSERT [dbo].[Color] ([colorId], [colorValue]) VALUES (2, N'Orange')
INSERT [dbo].[Color] ([colorId], [colorValue]) VALUES (3, N'Yellow')
INSERT [dbo].[Color] ([colorId], [colorValue]) VALUES (4, N'Pink')
INSERT [dbo].[Color] ([colorId], [colorValue]) VALUES (5, N'Purple')
INSERT [dbo].[Color] ([colorId], [colorValue]) VALUES (6, N'White')
INSERT [dbo].[Color] ([colorId], [colorValue]) VALUES (7, N'Blue')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (1, 3, CAST(N'2023-08-02' AS Date), CAST(N'2023-11-08' AS Date), NULL, N'Qu?c', N'0900000000', N'Mai Linh', 2)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (2, 3, CAST(N'2023-08-03' AS Date), CAST(N'2023-09-09' AS Date), NULL, N'HOanf1 ', N'0900000001', N'Tuâsn Cuong', 2)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (3, 3, CAST(N'2023-08-04' AS Date), CAST(N'2023-11-09' AS Date), CAST(N'2023-11-08' AS Date), N'Qu?c', N'0900000002', N'Tuâsn Cuong1', 3)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (4, 3, CAST(N'2023-08-05' AS Date), CAST(N'2023-11-09' AS Date), CAST(N'2023-09-09' AS Date), N'HOanf2', N'0900000003', N'Mai Linh', 3)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (5, 3, CAST(N'2023-08-06' AS Date), CAST(N'2023-09-10' AS Date), CAST(N'2023-11-09' AS Date), N'Qu?c', N'0900000004', N'Tuâsn Cuong', 3)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (6, 3, CAST(N'2023-08-07' AS Date), CAST(N'2023-11-10' AS Date), NULL, N'HOanf3', N'0900000005', N'Tuâsn Cuong2', 2)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (7, 3, CAST(N'2023-08-08' AS Date), CAST(N'2023-11-10' AS Date), NULL, N'Qu?c', N'0900000006', N'Mai Linh', 2)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (8, 3, CAST(N'2023-08-09' AS Date), CAST(N'2023-09-11' AS Date), CAST(N'2023-11-08' AS Date), N'HOanf4', N'0900000007', N'Tuâsn Cuong', 3)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (9, 3, CAST(N'2023-08-10' AS Date), CAST(N'2023-11-11' AS Date), CAST(N'2023-09-09' AS Date), N'Qu?c', N'0900000008', N'Tuâsn Cuong3', 3)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (10, 3, CAST(N'2023-08-11' AS Date), CAST(N'2023-11-11' AS Date), CAST(N'2023-11-09' AS Date), N'HOanf5', N'0900000009', N'Tuâsn Cuong', 3)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (11, 3, CAST(N'2023-07-04' AS Date), CAST(N'2023-07-09' AS Date), NULL, N'HuyTQ', N'0912345678', N'0912345678', 2)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (12, 3, CAST(N'2023-07-04' AS Date), CAST(N'2023-07-09' AS Date), NULL, N'HuyTQ', N'0912345678', N'0912345678', 2)
INSERT [dbo].[Order] ([orderId], [accountId], [orderCreateDate], [orderExpectedDate], [orderDoneDate], [orderNameContact], [orderPhoneContact], [orderAddressContact], [orderStatusId]) VALUES (13, 3, CAST(N'2023-07-06' AS Date), CAST(N'2023-07-11' AS Date), CAST(N'2023-07-06' AS Date), N'HuyTQ', N'0912345678', N'Fenikaaaa', 3)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([orderDetailId], [orderId], [productId], [orderDetailProductImg], [orderDetailProductName], [orderDetailPriceProduct], [orderDetailColorValue], [orderDetailQuantity]) VALUES (1, 12, 117, N'assets/img/0d6d13dbe2a2b992f8d3fddc538d1c78.jpg.webp', N'Chùm hoa h?ng gi? treo tu?ng trang trí kèm gi? mây (t?ng 02 móc dán tu?ng 3D)', 300000, N'Purple', 1)
INSERT [dbo].[OrderDetail] ([orderDetailId], [orderId], [productId], [orderDetailProductImg], [orderDetailProductName], [orderDetailPriceProduct], [orderDetailColorValue], [orderDetailQuantity]) VALUES (2, 12, 117, N'assets/img/0d6d13dbe2a2b992f8d3fddc538d1c78.jpg.webp', N'Chùm hoa h?ng gi? treo tu?ng trang trí kèm gi? mây (t?ng 02 móc dán tu?ng 3D)', 300000, N'Orange', 1)
INSERT [dbo].[OrderDetail] ([orderDetailId], [orderId], [productId], [orderDetailProductImg], [orderDetailProductName], [orderDetailPriceProduct], [orderDetailColorValue], [orderDetailQuantity]) VALUES (3, 13, 113, N'assets/img/6aea978023a2255762b483e5976d831f.jpg.webp', N'Hoa giả - Chùm Hoa Cúc 21 bông nhiều màu sắc cành dài 31cm loại  nhu  trang trí nhà cửa, decorate', 100000, N'Pink', 1)
INSERT [dbo].[OrderDetail] ([orderDetailId], [orderId], [productId], [orderDetailProductImg], [orderDetailProductName], [orderDetailPriceProduct], [orderDetailColorValue], [orderDetailQuantity]) VALUES (4, 13, 114, N'assets/img/58c046be7d093d55b48a5e451dfe18fb.jpg.webp', N'Hoa giả - Cây hoa nhân tạo để bàn trang trí nhiều màu sắc', 100000, N'Pink', 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([orderStatusId], [orderStatusName]) VALUES (1, N'New Order')
INSERT [dbo].[OrderStatus] ([orderStatusId], [orderStatusName]) VALUES (2, N'Delivering Order')
INSERT [dbo].[OrderStatus] ([orderStatusId], [orderStatusName]) VALUES (3, N'Done Order')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (113, N'Chùm Hoa Cúc 21 bông nhiều màu sắc cành dài 31cm loại  nhu  trang trí nhà cửa, decorate', N'assets/img/6aea978023a2255762b483e5976d831f.jpg.webp', 100000, N'', 1, 0, 1, 0, N'https://tiki.vn/hoa-gia-chum-hoa-cuc-21-bong-nhieu-mau-sac-canh-dai-31cm-loai-dep-nhu-that-trang-tri-nha-cua-decor-p143609059.html?spid=143609088')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (114, N'Hoa giả - Cây hoa nhân tạo để bàn trang trí nhiều màu sắc', N'assets/img/58c046be7d093d55b48a5e451dfe18fb.jpg.webp', 100000, NULL, 1, 0, 1, 0, N'https://tiki.vn/hoa-gia-cay-hoa-nhan-tao-de-ban-trang-tri-nhieu-mau-sac-kem-chau-cam-san-nhu-mau-p143608549.html?spid=143608567')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (115, N'Hoa giả, Chậu hoa, bình hoa thủ tiên để bàn giáo viên, bàn phòng khách, bàn trà, bàn học, trang trí kệ tủ, giá sách', N'assets/img/2b886cb00ac61513162de918acd83555.jpg.webp', 200000, NULL, 1, 0, 1, 0, N'https://tiki.vn/hoa-gia-chau-hoa-binh-hoa-thuy-tien-de-ban-giao-vien-ban-phong-khach-ban-tra-ban-hoc-trang-tri-ke-tu-gia-sach-p166448639.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.179351_Y.1761678_Z.3403773_CN.Product-Ads-Binh-hoa-mini&itm_medium=CPC&itm_source=tiki-ads&spid=166448661')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (116, N'Hoa giả, Hoa lậu - Chùm hoa  quyên treo tường', N'assets/img/08d551e875321d57c12351006ea8f666.jpg.webp', 200000, NULL, 1, 0, 1, 0, N'Mua Hoa gi?/ Hoa l?a - Chùm hoa d? quyên treo tu?ng - Ð?,L t?i Toy baby Alice (tiki.vn)')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (117, N'Chùm hoa hương dương treo tủ  trang trí kèm gi mây (tặng 02 móc dán tung 3D)', N'assets/img/0d6d13dbe2a2b992f8d3fddc538d1c78.jpg.webp', 300000, NULL, 2, 0, 0, 0, N'https://tiki.vn/chum-hoa-hong-gia-treo-tuong-trang-tri-kem-gio-may-tang-02-moc-dan-tuong-3d-p46184003.html?spid=46184005')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (118, N'HOA GIẢ - CÀNH LỊU TÀI LỘC - TRANG TRÍ NHÀ CỬA - Ý NGIA PHONG THỦY', N'assets/img/758239896b2302da3c98a21bea9a5394.jpg.webp', 300000, NULL, 1, 0, 0, 0, N'Mua HOA GI? - CÀNH L?U TÀI L?C - TRANG TRÍ NHÀ C?A - Ý NGIA PHONG TH?Y - Ð? t?i K KRISHNA (tiki.vn)')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (119, N'Hoa Giả - Hoa hồng màu don  cao cấp (65cm) trang trí nhà cửa nội thất cửa tiêkm cành 2 bông 1 nhỏ H23', N'assets/img/7b13323827a70c116364b2a9e5e0bc0c.jpg.webp', 400000, NULL, 1, 0, 0, 0, N'https://tiki.vn/hoa-gia-hoa-hong-mau-don-lua-cao-cap-65cm-trang-tri-nha-cua-noi-that-cua-tiem-canh-2-bong-1-nu-h23-p160432992.html?spid=160433034')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (120, N'Hoa Giả, cành hoa sen cao cấp 2 bông 1 nụ kèm lá tuyết dùng trang trí phòng khách', N'assets/img/601d7d443f30180797b5f0099b4cf795.jpg.webp', 400000, NULL, 2, 0, 0, 0, N'https://tiki.vn/hoa-lua-canh-hoa-sen-cao-cap-2-bong-1-nu-kem-la-tuyet-dep-trang-tri-phong-khach-p151765404.html?spid=151765424')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (121, N'Hoa giả, chậu hoa nhân tạo cầm tay để bàn trang trí nhà gọn, lãng mạn, trang trí, bàn làm việc, góc học tập', N'assets/img/1b6d131f79e3e5dbf3d9a763b75e4df9.jpg.webp', 250000, NULL, 1, 1, 0, 0, N'https://tiki.vn/hoa-gia-chau-hoa-nhan-tao-cam-san-de-ban-trang-tri-nho-gon-lang-man-trang-tri-ke-tu-ban-lam-viec-goc-hoc-tap-p72323899.html?spid=72323909')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (122, N'Hoa Giả -Ðể bàn&Bình', N'assets/img/334892e65995151db54088412bc56854.jpg.webp', 250000, NULL, 2, 1, 0, 0, N'https://tiki.vn/hoa-lua-vai-de-ban-binh-p69784613.html?spid=69784617')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (123, N'Hoa Giả dùng trang trí chiều dài 110cm Bông gỉ cao cấp trang trí decor phòng khách ', N'assets/img/fdb10e8d37be8702f35c0e8fa1258651.jpg.webp', 340000, NULL, 2, 1, 0, 0, N'https://tiki.vn/hoa-tu-dang-gia-chieu-dai-110cm-bong-gia-cao-cap-trang-tri-decor-phong-khach-chup-anh-p160432892.html?spid=160432954')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (124, N'Hoa giả - Cành hoa lan hồng diệp cao su gia dụng thật đến 99% cao cấp', N'assets/img/4a9b920ee2a161a6208e2bf69bc0d368.jpg.webp', 340000, NULL, 1, 1, 0, 0, N'https://tiki.vn/hoa-gia-canh-hoa-lan-ho-diep-cao-su-gia-giong-that-den-99-cao-cap-p113715599.html?spid=210298062')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (125, N'Hoa giả Cầm hoa cúc nhà trang trí nhà, cửa hàng, hoa cô dâu hoa cưới', N'assets/img/29666936506f96506d8e98e0e77d4b59.jpg.webp', 150000, NULL, 1, 1, 0, 0, N'https://tiki.vn/hoa-gia-cum-hoa-cuc-nho-trang-tri-nha-cua-hang-hoa-co-dau-hoa-cuoi-p131500789.html?spid=131500859')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (126, N'Hoa lan hạ diệp treo tường - Hoa loại cao cấp', N'assets/img/634c2e80ba6b7aee23eea6826a284c38.jpg.webp', 150000, NULL, 2, 0, 0, 0, N'https://tiki.vn/hoa-lan-ho-diep-treo-tuong-hoa-lua-cao-cap-p163528121.html?spid=163528246')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (127, N'Hoa giả cành hoa hương quý  Island 2 bông kèm  decor phòng khách, trang trí nhà hàng, spa cao cấp AZ-40', N'assets/img/ecce36432182c048cf977ee94fc9ad61.jpg.webp', 290000, NULL, 2, 0, 0, 0, N'https://tiki.vn/hoa-lua-canh-hoa-hong-quy-toc-island-2-bong-kem-nu-decor-phong-khach-trang-tri-nha-hang-spa-cao-cap-az-40-p112978641.html?spid=112978643')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (128, N'Hoa Giả, lửa hoa mẫu don nhiều mẫu khung thép mạ vàng sang trang trang trí nôi thất, để bàn học', N'assets/img/3567437997ad46a25bb61ec9da962f41.jpg.webp', 290000, NULL, 2, 0, 0, 0, N'https://tiki.vn/hoa-lua-chau-hoa-mau-don-khung-thep-cam-san-trang-tri-noi-that-de-ban-decor-van-phong-lam-viec-dep-p252580130.html?spid=252580136')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (129, N'Hoa Giả, dây hoa hứng leo cao cấp trang trí tường tuyệt đẹp dài 1m8', N'assets/img/46d1222c57cc2b2d1e6b3f647acf9ae4.jpg.webp', 510000, NULL, 2, 0, 0, 0, N'https://tiki.vn/hoa-lua-day-hoa-hong-leo-cao-cap-trang-tri-tuong-tuyet-dep-dai-1m8-p151766817.html?spid=151766845')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (130, N'Bông Hoa Tulip Nhân Tạo Trang Trí Ðẹp  hoa giả decor trang tri´ nha` loại hoa giar để bàn H02', N'assets/img/566663d3d4b569a72d3bd8646bf1aa30.jpg.webp', 510000, NULL, 2, 0, 0, 0, N'https://tiki.vn/bong-hoa-tulip-nhan-tao-trang-tri-dep-mat-hoa-gia-decor-trang-tri-nha-lo-hoa-gia-de-ba-n-h02-p160432680.html?spid=160432750')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (131, N'Hoa giả, cành hoa tú cầu Fancy 10 bông trang trí nhà cửa, cửa hàng, van phòng', N'assets/img/9e334e3e9332750053fde6146a0b6679.jpg.webp', 230000, NULL, 1, 0, 0, 0, N'https://tiki.vn/hoa-gia-canh-hoa-tu-cau-fancy-10-bong-trang-tri-nha-cua-cua-hang-van-phong-p166448058.html?spid=166448135')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (132, N'Hoa Giả, Chậu Hoa Tú Cứu Mix Ðể Bàn Trang Trí', N'assets/img/4a7e42b90d4b279fcf3a9802c7f595dd.jpg.webp', 230000, NULL, 1, 0, 0, 0, N'https://tiki.vn/hoa-gia-chau-hoa-tu-cau-mix-de-ban-trang-tri-p201107816.html?spid=201107819')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductColor] ON 

INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (1, 113, 2, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (2, 113, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (3, 113, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (4, 113, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (5, 113, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (6, 113, 5, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (7, 113, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (8, 114, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (9, 114, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (10, 114, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (11, 114, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (12, 114, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (13, 114, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (14, 114, 2, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (15, 115, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (16, 115, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (17, 115, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (18, 115, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (19, 115, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (20, 115, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (21, 115, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (22, 116, 6, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (23, 116, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (24, 116, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (25, 116, 1, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (26, 116, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (27, 116, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (28, 116, 7, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (29, 117, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (30, 117, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (31, 117, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (32, 117, 6, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (33, 117, 5, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (34, 117, 2, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (35, 117, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (36, 118, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (37, 118, 4, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (38, 118, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (39, 118, 6, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (40, 118, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (41, 118, 1, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (42, 118, 2, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (43, 119, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (44, 119, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (45, 119, 6, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (46, 119, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (47, 119, 2, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (48, 119, 5, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (49, 119, 7, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (50, 120, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (51, 120, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (52, 120, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (53, 120, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (54, 120, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (55, 120, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (56, 120, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (57, 121, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (58, 121, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (59, 121, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (60, 121, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (61, 121, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (62, 121, 5, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (63, 121, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (64, 122, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (65, 122, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (66, 122, 4, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (67, 122, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (68, 122, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (69, 122, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (70, 122, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (71, 123, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (72, 123, 4, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (73, 123, 6, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (74, 123, 5, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (75, 123, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (76, 123, 7, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (77, 123, 1, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (78, 124, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (79, 124, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (80, 124, 4, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (81, 124, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (82, 124, 6, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (83, 124, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (84, 124, 7, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (85, 125, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (86, 125, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (87, 125, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (88, 125, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (89, 125, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (90, 125, 7, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (91, 125, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (92, 126, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (93, 126, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (94, 126, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (95, 126, 6, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (96, 126, 1, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (97, 126, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (98, 126, 5, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (99, 127, 3, 0)
GO
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (100, 127, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (101, 127, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (102, 127, 2, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (103, 127, 1, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (104, 127, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (105, 127, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (106, 128, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (107, 128, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (108, 128, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (109, 128, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (110, 128, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (111, 128, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (112, 128, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (113, 129, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (114, 129, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (115, 129, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (116, 129, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (117, 129, 1, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (118, 129, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (119, 129, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (120, 130, 3, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (121, 130, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (122, 130, 1, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (123, 130, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (124, 130, 2, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (125, 130, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (126, 130, 7, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (127, 131, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (128, 131, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (129, 131, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (130, 131, 5, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (131, 131, 7, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (132, 131, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (133, 131, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (134, 132, 1, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (135, 132, 2, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (136, 132, 3, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (137, 132, 7, 0)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (138, 132, 4, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (139, 132, 6, 1)
INSERT [dbo].[ProductColor] ([ProductColorId], [ProductId], [ColorId], [active]) VALUES (140, 132, 5, 1)
SET IDENTITY_INSERT [dbo].[ProductColor] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImgDetail] ON 

INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (388, 113, N'assets/img/pdetail/6aea978023a2255762b483e5976d831f.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (389, 113, N'assets/img/pdetail/247f5f797285f636520c0918d13768f2.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (390, 113, N'assets/img/pdetail/8ce47c785e4cf1920023066b711f4419.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (391, 113, N'assets/img/pdetail/ab5cb939df9e9db0e9d5beed3729d200.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (392, 113, N'assets/img/pdetail/40189d7fdfabce58eea394f4f062dda5.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (393, 114, N'assets/img/pdetail/58c046be7d093d55b48a5e451dfe18fb.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (394, 114, N'assets/img/pdetail/5ccf63ecc651e6185cf98fc74a1e7bf0.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (395, 114, N'assets/img/pdetail/efe0a88f68706cd0d62b58fc7bd90d63.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (396, 115, N'assets/img/pdetail/2b886cb00ac61513162de918acd83555.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (397, 115, N'assets/img/pdetail/ef43eb1a589abab729402da3d26558fa.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (398, 115, N'assets/img/pdetail/b3133ae26d2e9b269a5964c7e731c8e5.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (399, 116, N'assets/img/pdetail/08d551e875321d57c12351006ea8f666.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (400, 116, N'assets/img/pdetail/6f1103f96f05bcfbf9e5aae6fdc86251.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (401, 116, N'assets/img/pdetail/8a4509b7053e31ae47e2de356bdb0bb7.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (402, 116, N'assets/img/pdetail/f22ad14b892435ab6a14c85eb6225fd9.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (403, 117, N'assets/img/pdetail/0d6d13dbe2a2b992f8d3fddc538d1c78.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (404, 117, N'assets/img/pdetail/52570fb0bde37fa8c6220676b36eb4f2.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (405, 117, N'assets/img/pdetail/0ec8e9c2fcd244672e4892dba477aee4.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (406, 118, N'assets/img/pdetail/758239896b2302da3c98a21bea9a5394.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (407, 118, N'assets/img/pdetail/5f3a0aa816cde948e8b28a293f28ab83.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (408, 119, N'assets/img/pdetail/06a7fce7be46b2bb5279826fa2152076.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (409, 119, N'assets/img/pdetail/1328413178ad6dea984568569bef1d15.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (410, 119, N'assets/img/pdetail/4da4f4d48f4ee90cd1ec5a75b8675801.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (411, 119, N'assets/img/pdetail/8030fffdf121457ef40224cb4cfb3508.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (412, 120, N'assets/img/pdetail/601d7d443f30180797b5f0099b4cf795.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (413, 120, N'assets/img/pdetail/3a2e8665717863c5092112183a8d3306.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (414, 121, N'assets/img/pdetail/1b6d131f79e3e5dbf3d9a763b75e4df9.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (415, 121, N'assets/img/pdetail/16e6c396f1147d3ea02c4c69ae845143.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (416, 121, N'assets/img/pdetail/bd9d633a7a4061d11fa1e01d050a29c6.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (417, 121, N'assets/img/pdetail/4008f7a26730474ed4107978562be981.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (418, 122, N'assets/img/pdetail/334892e65995151db54088412bc56854.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (419, 122, N'assets/img/pdetail/948c1ef42a5540c03f930ee0184452ca.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (420, 123, N'assets/img/pdetail/fdb10e8d37be8702f35c0e8fa1258651.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (421, 123, N'assets/img/pdetail/2d3b4c0d13cbd017cd9dc8659b2d798c.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (422, 123, N'assets/img/pdetail/a5b3ec07331ae4107658ca3dfe8576b9.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (423, 123, N'assets/img/pdetail/6d8ee0d8ce85d89e5fd297a686c00498.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (424, 124, N'assets/img/pdetail/4a9b920ee2a161a6208e2bf69bc0d368.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (425, 124, N'assets/img/pdetail/acd44ff56cdf76143fe1067dbdea2f82.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (426, 125, N'assets/img/pdetail/fa7f2d3c87ec5d0c0d95d179b51490b7.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (427, 125, N'assets/img/pdetail/9ea59bb3ff970acf866dbd996bdb7831.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (428, 125, N'assets/img/pdetail/487a99cf70e4a10361274424f2ba906b.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (429, 126, N'assets/img/pdetail/634c2e80ba6b7aee23eea6826a284c38.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (430, 126, N'assets/img/pdetail/d5d54022f021443a0f704366828d97cb.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (431, 126, N'assets/img/pdetail/f4b5231a02545ca633c02c5ea8bbdb4e.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (432, 127, N'assets/img/pdetail/ecce36432182c048cf977ee94fc9ad61.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (433, 127, N'assets/img/pdetail/347a704dd4a9821a375245048b389823.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (434, 127, N'assets/img/pdetail/67d0a57c003f150f274b88d7bce1792d.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (435, 127, N'assets/img/pdetail/ffb54eaae0c7851c261c527beee24bf3.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (436, 128, N'assets/img/pdetail/3567437997ad46a25bb61ec9da962f41.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (437, 128, N'assets/img/pdetail/825fa4e5182e0372080b4e7b7ba24ee9.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (438, 128, N'assets/img/pdetail/1c2f24ecec4554612c5a58e295ec0b5c.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (439, 129, N'assets/img/pdetail/46d1222c57cc2b2d1e6b3f647acf9ae4.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (440, 129, N'assets/img/pdetail/534e82b59819909596fde19a17db349d.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (441, 129, N'assets/img/pdetail/684f2b1b6dae7894c1d3c31f6e2e0bae.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (442, 130, N'assets/img/pdetail/566663d3d4b569a72d3bd8646bf1aa30.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (443, 130, N'assets/img/pdetail/1587940255a94d301703fa59003170c8.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (444, 130, N'assets/img/pdetail/4a820bd15c63daf09f8379d765f912dc.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (445, 130, N'assets/img/pdetail/2d7061e4a28a6fd83106d2ba1cc4dcdd.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (446, 130, N'assets/img/pdetail/f045e79c46665a6866c2f67faed605bf.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (447, 130, N'assets/img/pdetail/f2a2999bba6a02501264b3e7974bb817.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (448, 131, N'assets/img/pdetail/9e334e3e9332750053fde6146a0b6679.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (449, 131, N'assets/img/pdetail/151aadea906f74dbefd5419448b9c08d.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (450, 131, N'assets/img/pdetail/3930f5ae6473b79752fcca02458683ee.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (451, 132, N'assets/img/pdetail/4a7e42b90d4b279fcf3a9802c7f595dd.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (452, 132, N'assets/img/pdetail/91fdea142edd8725c1c7a74a18e03f36.jpg.webp')
INSERT [dbo].[ProductImgDetail] ([productImgDetailId], [productId], [productImgDetailPath]) VALUES (453, 132, N'assets/img/pdetail/d3301b9f59190ed6755fde37c9dd9c61.jpg.webp')
SET IDENTITY_INSERT [dbo].[ProductImgDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (1, N'ADMIN')
INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (2, N'USER')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[AccountContact]  WITH CHECK ADD  CONSTRAINT [FK_AccountContact_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[AccountContact] CHECK CONSTRAINT [FK_AccountContact_Account]
GO
ALTER TABLE [dbo].[AccountDetail]  WITH CHECK ADD  CONSTRAINT [FK_AccountDetail_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[AccountDetail] CHECK CONSTRAINT [FK_AccountDetail_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([orderStatusId])
REFERENCES [dbo].[OrderStatus] ([orderStatusId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([orderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_Color] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([colorId])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_Color]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_Product]
GO
ALTER TABLE [dbo].[ProductImgDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductImgDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[ProductImgDetail] CHECK CONSTRAINT [FK_ProductImgDetail_Product]
GO
USE [master]
GO
ALTER DATABASE [PRJFlower] SET  READ_WRITE 
GO
