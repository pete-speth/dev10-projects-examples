CREATE DATABASE MovieCatalogue;
USE MovieCatalogue;

CREATE TABLE Movie
(
	MovieID INT NOT NULL AUTO_INCREMENT,
    GenreID INT NOT NULL,
    DirectorID INT NULL,
    RatingID INT NULL,
    Title VARCHAR(128) NOT NULL,
    ReleaseDate DATE NULL,
    
    PRIMARY KEY (MovieID)
);

CREATE TABLE Genre
(
	GenreID INT NOT NULL AUTO_INCREMENT,
    GenreName VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (GenreID)
);

CREATE TABLE Director
(
	DirectorID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDate DATE NULL,
    
    PRIMARY KEY (DirectorID)
);

CREATE TABLE Rating
(
	RatingID INT NOT NULL AUTO_INCREMENT,
    RatingName CHAR(5) NOT NULL,
    
    PRIMARY KEY (RatingID)
);

CREATE TABLE Actor
(
	ActorID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDate DATE NULL,
    
    PRIMARY KEY (ActorID)
);

CREATE TABLE CastMembers
(
	CastMemberID INT NOT NULL AUTO_INCREMENT,
    ActorID INT NOT NULL,
    MovieID INT NOT NULL,
    Role VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (CastMemberID)
);

ALTER TABLE Movie
ADD CONSTRAINT fk_Movie_Genre
FOREIGN KEY (GenreID) REFERENCES Genre(GenreID);

ALTER TABLE Movie
ADD CONSTRAINT fk_Movie_Director
FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID);

ALTER TABLE Movie
ADD CONSTRAINT fk_Movie_Rating
FOREIGN KEY (RatingID) REFERENCES Rating(RatingID);

ALTER TABLE CastMembers
ADD CONSTRAINT fk_CastMembers_Actor
FOREIGN KEY (ActorID) REFERENCES Actor(ActorID);

ALTER TABLE CastMembers
ADD CONSTRAINT fk_CastMembers_Movie
FOREIGN KEY (MovieID) REFERENCES Movie(MovieID);