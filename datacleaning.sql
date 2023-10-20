use  socialbuzz;
show tables;


-- 1. Content Table

-- Drop the URL column which is not going to use in the analysis

ALTER TABLE content
DROP COLUMN URL;
ALTER TABLE content
DROP COLUMN MyUnknownColumn;

-- in category column, some rows has "" 

UPDATE content
SET category = TRIM(BOTH '"' FROM category);

-- column name change Type to Content type

ALTER TABLE content
RENAME COLUMN Type TO Content_Type;

-- 2. Reactions Type Table

-- column name change 
ALTER TABLE reactiontypes
RENAME COLUMN Type TO Reaction_Type;

ALTER TABLE reactiontypes
DROP COLUMN MyUnknownColumn;

-- 3. Reactions 

-- column name change 
ALTER TABLE reactions
RENAME COLUMN Type TO Reaction_Type;

-- Reaction types column has blanks

DELETE FROM reactions
WHERE reaction_type IS NULL OR TRIM(reaction_type) = '';

ALTER TABLE reactions
DROP COLUMN User_ID;

ALTER TABLE reactions
DROP COLUMN MyUnknownColumn








