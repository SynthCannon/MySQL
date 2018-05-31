USE mydb;


ALTER TABLE books MODIFY Price DECIMAL(4,2);

INSERT INTO authors #(id_author,F_Name,L_Name,contact_details)
	VALUES (1,'Cucumber','pickleman','the briny sea'),(2,'treebeard','smith','tree lane'),(3,'Ronald','McDonald','Everywhere'),(4,'colonel','sanders','kentucky'),(5,'pigeon','pete','the sewers');
    
INSERT INTO publishers
	VALUES (1,'wePublish'),(2,'Us'),(3,'BurnBooks'),(4,'Books Are Out Dated');
    
INSERT INTO books (idbook,Title,Price,ISBN,release_date,author_idauthor,publishers_idpublishers) #9
	VALUES (1,'the great lemon',22.22,'fhfhfhf33333',20180101,1,3),(2,'the great lime',22.22,'3355hj4h',20000101,1,3),(3,'the great lemon2',22.22,'fhfhfhf33',20180101,1,2),(4,'the great lime2',22.22,'3355hj4h',20000101,1,2),(5,'the great lemon3',22.22,'fhfhfhf33333',20180101,1,4),(6,'the great lime4',22.22,'3355hj4h',20000101,1,4),(7,'LOTR the return of the zing',0.01,'5345gfff',20050101,1,1),(8,'LOTR IDC',0.22,'444h4',20030202,2,1),(9,'LOTR IDC2',0.23,'444h43',20220202,3,1);

INSERT INTO genres
	VALUES (1,'Horror'),(2,'Fiction'),(3,'TRUTH!'),(4,'Fake News');
    
INSERT INTO shop_companies
	VALUES (1,'theBigStore'),(2,'TheGreenStore'),(3,'tHEsMALLsTORE'),(4,'JustAStore');
    
INSERT INTO `order` #11
	VALUES (1,20120101,1),(2,20120101,2),(3,20120101,3),(4,20110101,4),(3,20120101,5),(2,20140101,6),(1,20130101,7),(2,20170101,8),(3,20100101,9),(4,20020101,10),(3,20050101,11);
    
INSERT INTO book_genres
	VALUES (1,1),(2,1),(3,3),(4,2),(5,2),(6,3),(7,4),(8,1),(9,2),(9,3);
    
INSERT INTO order_has_books
	VALUES (1,1,1),(1,2,1),(1,3,4),(2,3,2),(2,1,1),(3,2,2),(4,7,3),(4,2,5),(5,8,1),(6,4,1),(7,1,12),(8,8,2),(9,4,2),(10,1,1),(11,2,1);
    

    

    
    
    


    
    
    
    