CREATE TABLE [dbo].[UserDataTbl] (
    [UserId]          INT            IDENTITY (1, 1) NOT NULL,
    [UserName]        NVARCHAR (MAX) NULL,
    [Password]        NVARCHAR (MAX) NULL,
    [ConfirmPassword] NVARCHAR (MAX) NULL,
    [FullName]        NVARCHAR (MAX) NULL,
    [UserType]        NVARCHAR (MAX) NULL,
    [EmailAddress]    NVARCHAR (MAX) NULL,
    [PhoneNumber]     NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

