/* MATH */
SELECT 2 + 2;
SELECT 9 - 1;
SELECT 3 * 4;
SELECT 11 / 6;
-- To remove the fractional point, you need to use the DIV operator as follows:
SELECT 11 DIV 6;
SELECT 11 % 6;
SELECT 11.0 / 6;
SELECT CAST(11 AS decimal(3,1)) / 6;
/* Expopnents, Roots, Fatorials */
SELECT POW(3,4);
SELECT sqrt(10);

SELECT 7 + 8 * 9;
SELECT (7 + 8) * 9;

DROP FUNCTION IF EXISTS factorial;
DELIMITER //

CREATE FUNCTION factorial(n INT)
RETURNS BIGINT
DETERMINISTIC
NO SQL
SQL SECURITY INVOKER
BEGIN
  DECLARE fact BIGINT DEFAULT 1;

  IF n <= 0 THEN
    RETURN 1;
  END IF;

  REPEAT
    SET fact = fact * n;
    SET n = n - 1;
  UNTIL n <= 1
  END REPEAT;

  RETURN fact;
END //
DELIMITER ;

SELECT factorial(3);
SELECT factorial(8);
