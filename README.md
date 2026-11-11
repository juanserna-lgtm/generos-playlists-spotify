# Géneros y playlists en Spotify

¿Qué géneros concentran más popularidad en Spotify y qué playlists conviene reforzar?

Proyecto de análisis de datos con Python (pandas y NumPy) y Tableau. Es la primera pieza de mi portafolio enfocado en la industria musical y reutiliza mi caso de estudio del Google Data Analytics Capstone.

## Datos

- **Fuente:** TidyTuesday, Spotify Songs (`spotify_songs.csv`)
- **Inicio:** 32,833 filas y 23 columnas
- **Después de limpiar:** 32,828 filas y 28,352 canciones distintas

## Limpieza

- Se quitaron 5 filas con valores vacíos en `track_name`, `track_artist` o `track_album_name`.
- Quedaron 4,476 duplicados por `track_id`: una misma canción puede aparecer en varias playlists.

## Hallazgos

- **Popularidad promedio por género:** pop 47.7, latin 47.0, rap 43.2, rock 41.7, r&b 41.2, edm 34.8.
- **EDM tiene más canciones (6,043), pero la popularidad promedio más baja.**
- **Audio promedio por género (energía):** edm 0.81, rock 0.73, latin 0.71, pop 0.70, rap 0.65, r&b 0.59.
- **Rap es lo más bailable** (danceability 0.72), **latin lo más alegre** (valence 0.61) y **r&b lo menos energético y más acústico**.

**Recomendación:** reforzar las playlists de pop y latin, y revisar la estrategia de EDM: tiene mucho volumen, pero menos popularidad promedio.

## Visualizaciones

Dashboard en Tableau, 4 hojas, titulado "Géneros y playlists en Spotify":

1. Popularidad promedio por género
2. Canciones por género
3. Top 3 artistas por género
4. Audio promedio por género

- Tableau Public: [enlace por publicar]

## Notas

- `track_popularity` es un puntaje de 0 a 100, no el total de reproducciones.
- `playlist_genre` es el género de la playlist, no del artista ni de la canción.

## Enlaces

- Notebook en Kaggle: https://www.kaggle.com/code/juansernarivera/g-neros-y-playlists-en-spotify
- Post en LinkedIn: https://lnkd.in/p/gbaQQumV

## Herramientas

Python, pandas, NumPy, Kaggle y Tableau.
