
CREATE TABLE A
(TOT_PRICE DECIMAL(12,2),
UNITS INTEGER);

CREATE TABLE B
(DOLLAR_EQUIV NUMERIC(5, 2),
POUND_EQUIV NUMERIC(8,2));

CREATE VIEW C (UNIT_PRICE, PRICE, UNITS)
AS SELECT (TOT_PRICE * DOLLAR_EQUIV) / (UNITS * POUND_EQUIV), TOT_PRICE * DOLLAR_EQUIV, UNITS * POUND_EQUIV FROM A, B;

INSERT INTO A VALUES (1411.5, 4000);
INSERT INTO B VALUES (1.00, 2.20);

select * from C;

drop view C;
drop table B;
drop table A;