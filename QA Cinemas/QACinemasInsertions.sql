USE mydb;


INSERT INTO actor (F_Name,L_Name,DOB)
	VALUES ('red','blue',19921010),('green','blue',19921010),('pink','crimson',19921010),('red','ranger',19921010),('cyan','purple',19921010),('gold','brown',19921010);

INSERT INTO bbfc_ratings (BBFC_ID,BBFC_Rating)
	VALUES (1,'u'),(2,'pg'),(3,'12A'),(4,'15'),(5,'18');
    
INSERT INTO cinema (Cinema_ID,Location)
	VALUES (1,'England'),(2,'Scotland');

INSERT INTO customer_account (Account_ID,Name,Email)
	VALUES (1,'barrymoor','bm@bm.com'),(2,'barrymoor2','bm2@bm.com'),(3,'barrymoor3','bm3@bm.com'),(4,'barrymoor4','bm4@bm.com'),(5,'barrymoor5','bm5@bm.com'),(6,'barrymoor6','bm6@bm.com'),(7,'barrymoor7','bm7@bm.com');
    
INSERT INTO directors (F_Name,L_Name)
	VALUES ('Roland','Isles'),('Robert','Hunt');
    
INSERT INTO genre (Genre_ID,Genre_Name)
	VALUES (1,'Horror'),(2,'Romance'),(3,'Action'),(4,'Adventure');
    
INSERT INTO movie (Movie_Id,Title,Release_Date,Directors_F_Name,Directors_L_Name,bbfc_ratings_BBFC_ID)
	VALUES (1,'THE HORROR',19920101,'Roland','Isles',1),(2,'THE ROMANCE',19820101,'Robert','Hunt',2),(3,'THE ACTION',19920201,'Roland','Isles',3),(4,'THE ADVENTURE',19920301,'Roland','Isles',4),(5,'THE GEORGE',19920401,'Roland','Isles',1),(6,'THE OPPORTUNITY',19920501,'Roland','Isles',2),(7,'THE PACIFIC OCEAN',19920601,'Roland','Isles',3),(8,'THEHEART',19920701,'Roland','Isles',4),(9,'THE MATT',19920801,'Roland','Isles',1);
    
INSERT INTO movie_actors (movie_Movie_ID,actor_F_Name,actor_L_Name)
	VALUES (1,'red','ranger'),(1,'pink','crimson'),(2,'green','blue'),(2,'red','blue'),(2,'cyan','purple'),(3,'gold','brown'),(4,'gold','brown'),(4,'cyan','purple'),(5,'red','blue'),(6,'cyan','purple'),(6,'gold','brown'),(7,'red','blue'),(8,'red','ranger'),(9,'red','ranger');
    
    

    
    
    
    