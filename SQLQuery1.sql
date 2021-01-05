/*Display the Client Table Data*/
SELECT * FROM Client;

/*Display the Contact Table Data*/
SELECT * FROM Contact;

/*Output Records with the Name of the People and Their Contact Information*/
SELECT Client.FirstName, Client.LastName, Contact.Type, Contact.Info 
FROM Contact INNER JOIN Client 
ON Client.Id = Contact.ClientId;

/*Display the List of All People with No Contact Information*/
SELECT Client.FirstName, Client.LastName 
FROM Contact FULL OUTER JOIN Client 
ON Client.Id = Contact.ClientId
WHERE Contact.Type IS NULL AND Contact.Info IS NULL;