CREATE TABLE [dbo].[Users] (
    [UserName]  NVARCHAR (50) NOT NULL,
    [FirstName] NVARCHAR (50) NOT NULL,
    [LastName]  NVARCHAR (50) NOT NULL,
    [Password]  NVARCHAR (50) NOT NULL,
    [Email]     NVARCHAR (50) NOT NULL,
    [Gender]    NVARCHAR (50) NOT NULL,
    [Age]       INT           NOT NULL,
    [FavArtist] NVARCHAR (50) NOT NULL,
    [FavGenre]  NVARCHAR (50) NOT NULL,
    [Admin]     BIT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([UserName] ASC)
);

