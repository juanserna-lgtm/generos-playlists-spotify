-- 1. Total de filas y canciones distintas
SELECT COUNT(*) AS total_filas,
       COUNT(DISTINCT track_id) AS canciones_distintas
FROM spotify_limpio;

-- 2. Canciones por género
SELECT playlist_genre, COUNT(*) AS canciones
FROM spotify_limpio
GROUP BY playlist_genre
ORDER BY canciones DESC;

-- 3. Popularidad promedio por género
SELECT playlist_genre, ROUND(AVG(track_popularity), 2) AS popularidad_promedio
FROM spotify_limpio
GROUP BY playlist_genre
ORDER BY popularidad_promedio DESC;

-- 4. Top 3 artistas por género
WITH artistas AS (
  SELECT playlist_genre, track_artist,
    ROUND(AVG(track_popularity), 2) AS popularidad_promedio,
    COUNT(DISTINCT track_id) AS canciones_distintas
  FROM spotify_limpio
  GROUP BY playlist_genre, track_artist
  HAVING COUNT(DISTINCT track_id) >= 3
),
ranking AS (
  SELECT *,
    ROW_NUMBER() OVER (
      PARTITION BY playlist_genre
      ORDER BY popularidad_promedio DESC
    ) AS lugar
  FROM artistas
)
SELECT playlist_genre, track_artist, popularidad_promedio, canciones_distintas
FROM ranking
WHERE lugar <= 3
ORDER BY playlist_genre, lugar;

