INSERT INTO users (name) VALUES
('Alex'),
('Jordan'),
('Sam'),
('Taylor'),
('Chris');

INSERT INTO movies (title) VALUES
('Zootopia 2'),
('The Muppets Movie'),
('Iron Lung'),
('Barbie'),
('Taylor Swift: The Eras Tour');

INSERT INTO ratings (user_id, movie_id, rating) VALUES
(1, 1, 5), (1, 2, 4), (1, 4, 5),
(2, 1, 4), (2, 3, 3), (2, 5, 5),
(3, 2, 5), (3, 4, 4),
(4, 1, 3), (4, 5, 4),
(5, 2, 4), (5, 4, 5), (5, 5, 5);

SELECT
  u.name,
  m.title,
  r.rating
FROM ratings r
JOIN users u ON r.user_id = u.user_id
JOIN movies m ON r.movie_id = m.movie_id
ORDER BY u.name;