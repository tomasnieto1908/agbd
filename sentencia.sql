insert into artists(name)
VALUES ("duki");

INSERT INTO albums (Title,ArtistId)
VALUES ("antes de ameri",276);


INSERT INTO tracks (name,AlbumId,MediaTypeId,Milliseconds,UnitPrice)
VALUES ("harakiri",276,2,144000,0),("jefes del sudoeste",276,2,136200,0) , ("1 de enero",276,2,92400,0);


UPDATE tracks SET composer = "duki",bytes = "1230000"
WHERE TrackId = "3504" or  TrackId = "3505" or  TrackId = "3506"




DELETE FROM tracks 
WHERE TrackId = "3504" or  TrackId = "3505" or  TrackId = "3506"


DELETE FROM albums
WHERE AlbumId = "348"


DELETE FROM artists
WHERE name = "duki"