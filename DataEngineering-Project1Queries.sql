
WITH CustomerAgent AS (
    SELECT CM.SupportAgent, C.CustomerID
    FROM [dbo].[ConversationMessages] AS CM
    RIGHT JOIN [dbo].[Conversations] AS C
      ON CM.ConversationID = C.ConversationID
)

SELECT DISTINCT(CA.SupportAgent), O.PaymentStatus
FROM CustomerAgent AS CA
RIGHT JOIN [dbo].[Orders] AS O
ON CA.CustomerID = O.CustomerID
WHERE O.PaymentStatus = 'Failed' AND CA.SupportAgent != 'NO SUPPORT AGENT'

-----------------------------------------------------------------------------
    
SELECT C.CustomerID, (C.FirstName + ' ' + C.LastName) AS Name, C.PrimaryEmailAddress, (AE.EmailAddress) AS AlternateEmailAddress
FROM [dbo].[AlternateEmails] AS AE
RIGHT JOIN [dbo].[Customer] AS C
ON AE.CustomerID = C.CustomerID
WHERE EmailAddress != 'None'
