CREATE TABLE Customer (
    CustomerID SMALLINT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PrimaryEmailAddress VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE AlternateEmails (
    AlternateEmailID SMALLINT,
    CustomerID INT,
    EmailAddress VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    PaymentStatus VARCHAR(50),
    OrderTotal DECIMAL(18,2),
    OrderDate DATETIME
);

CREATE TABLE Conversations (
    ConversationID INT,
    CustomerID SMALLINT
);

CREATE TABLE ConversationMessages (
    ConversationID INT,
    SupportAgent VARCHAR(100),
    MessageSender VARCHAR(100),
    Message VARCHAR(MAX),
    Timestamp DATETIME
);
