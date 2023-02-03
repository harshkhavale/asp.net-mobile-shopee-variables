CREATE TABLE [dbo].[ProductDeliveryTbl] (
    [DeliveryId]      INT            IDENTITY (1, 1) NOT NULL,
    [ProductId]       INT            NULL,
    [DateTime]        DATETIME       NULL,
    [UserName]        NVARCHAR (MAX) NULL,
    [CustomerAddress] NVARCHAR (MAX) NULL,
    [CustomerPinCode] NVARCHAR (MAX) NULL,
    [CustomerMoNo]    NVARCHAR (MAX) NULL,
    [CustomerName]    NVARCHAR (MAX) NULL,
    [PaymentMode]     NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([DeliveryId] ASC)
);

