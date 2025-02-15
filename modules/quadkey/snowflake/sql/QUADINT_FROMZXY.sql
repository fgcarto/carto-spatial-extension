----------------------------
-- Copyright (C) 2021 CARTO
----------------------------

CREATE OR REPLACE SECURE FUNCTION QUADINT_FROMZXY
(z INT, x INT, y INT)
RETURNS BIGINT
IMMUTABLE
AS $$
    BITOR(BITOR(BITAND(Z, 31), BITSHIFTLEFT(X, 5)), BITSHIFTLEFT(Y, Z + 5))
$$;