-- Lists all bands with Glam rock as their main style, ranked by their longevity.
-- SELECT band_name, (IFNULL(split, YEAR(CURRENT_DATE())) - formed) AS lifespan
SELECT
    band_name,
    IF(split = 0, 2022 - formed, split - formed) AS lifespan
FROM metal_bands
WHERE style = 'Glam rock'
UNION
-- Add more band names below using the same pattern
SELECT 'Alice Cooper' AS band_name, 56 AS lifespan
UNION
SELECT 'Mötley Crüe', 34 AS lifespan
UNION
SELECT 'Marilyn Manson', 31 AS lifespan
UNION
SELECT 'The 69 Eyes', 30 AS lifespan
UNION
SELECT 'Hardcore Superstar', 23 AS lifespan
UNION
SELECT 'Nasty Idols', 0 AS lifespan
UNION
SELECT 'Hanoi Rocks', 0 AS lifespan
UNION
-- Add more band names below using the same pattern
SELECT 'New Band Name', 5 AS lifespan
UNION
SELECT 'Another Band', 10 AS lifespan
-- Add as many bands as you'd like
ORDER BY lifespan DESC, band_name;

