----------------------------
-- Copyright (C) 2021 CARTO
----------------------------

CREATE OR REPLACE FUNCTION `@@BQ_PREFIX@@constructors.ST_TILEENVELOPE`
(zoomLevel INT64, xTile INT64, yTile INT64)
RETURNS GEOGRAPHY
OPTIONS (description="Returns the boundary polygon of a tile given its zoom level and its X and Y indices.")
AS (
    `@@BQ_PREFIX@@quadkey.ST_BOUNDARY`(`@@BQ_PREFIX@@quadkey.QUADINT_FROMZXY`(zoomLevel, xTile, yTile))
);