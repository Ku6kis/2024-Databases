-- The employee database has a following table:

-- Employee
-- id : INT
-- name : VARCHAR
-- email : VARCHAR
-- supervisor : VARCHAR
-- office : VARCHAR
-- city : VARCHAR

-- Example data:
-- |id |name        |email              |supervisor    |office   |city
-- ------------------------------------------------------------------------------
-- |1  |Andy Smith  |andy@company.com   |Jill Jackson  |B-11     |New York
-- |2  |Rudy Black  |rudy@company.com   |John Doe      |A-22     |San Francisco

-- Normalize the table into the 3rd normal form by dividing columns and tables into smaller ones.
-- Define new tables like the example above. No need to write CREATE statements.
-- Add some example data to your table(s).

-- Employee table:
-- |id |name         |email              |
-- --------------------------------------|
-- |1  |Andy Smith   |andy@company.com   |
-- |2  |Rudy Black   |rudy@company.com   |
-- |3  |Santa Claus  |santa@company.com  |
-- |4  |Han Solo     |solo@company.com   |
-- |5  |James Bond   |james@company.com  |
-- |6  |Patrik Laine |patrik@company.com |


-- Office table
-- |code  |city          |
-- ----------------------|
-- |B-11  |New York      |
-- |A-22  |San Francisco |
-- |C-44  |Kansas        |

-- Employee office table
-- |employee_id |office_code |
-- --------------------------|
-- |1           |B-11        |
-- |2           |A-22        |
-- |3           |B-11        |
-- |4           |A-22        |
-- |5           |C-44        |
-- |6           |C-44        |

-- Supervisor table:
-- |employee_id |supervisor_id |
-- ----------------------------|
-- |1           |3             |
-- |2           |4             |
-- |3           |NULL          |
-- |4           |NULL          |
-- |5           |NULL          |
-- |6           |5             |