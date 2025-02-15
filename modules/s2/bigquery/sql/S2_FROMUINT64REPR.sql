----------------------------
-- Copyright (C) 2021 CARTO
----------------------------

CREATE OR REPLACE FUNCTION `@@BQ_PREFIX@@carto.S2_FROMUINT64REPR`
(uid STRING)
RETURNS INT64
AS (
IF
(CAST(uid AS BIGNUMERIC) > 9223372036854775807,
  CAST(CAST(uid AS BIGNUMERIC)-CAST('18446744073709551616' AS BIGNUMERIC)AS INT64),
  CAST(uid AS INT64)));

