-- Active: 1762223728139@@127.0.0.1@3306
SELECT * FROM songs;
DROP TABLE songs;
PRAGMA table_info('songs');

CREATE TABLE songs (
  id INTEGER PRIMARY KEY,
  title TEXT,
  artist TEXT,
  album TEXT,
  genre TEXT,
  duration INTEGER
);

INSERT INTO songs (
  title, artist, album, genre, duration
)
VALUES(
  'New Title', 'Artist 1', 'Album 1', 'Pop', 200
);

INSERT INTO songs (
  title, artist, album, genre, duration
)
VALUES
  ('New Title 3', 'Artist 3', 'Album 3', 'Pop', 200),
  ('New Title 4', 'Artist 4', 'Album 4', 'Pop', 200),
  ('New Title 5', 'Artist 5', 'Album 5', 'Pop', 200);
  ;

UPDATE songs
SET title = 'song 1'
WHERE id = 1;