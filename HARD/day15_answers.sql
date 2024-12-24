-- A family reunion is being planned, and the organizer wants to identify the three family members with the most children. 
-- Write a query to calculate the total number of children for each parent and rank them. 
-- Include the parent’s name and their total number of children in the result.
-- #######################################################################################################################
------------------------------------------------------ Solution Code------------------------------------------------------
-- CTE using WITH Rank_Them AS ( 
WITH Rank_Them AS ( 
    -- Selects the parent's name, parent_id, and the count of children 
    SELECT family_members.name,
           parent_child_relationships.parent_id, 
           COUNT(parent_child_relationships.child_id) AS children_count,
           -- Assigns a rank to each parent based on the number of children, ordered in descending order
           RANK() OVER(ORDER BY COUNT(parent_child_relationships.child_id) DESC) AS Rank             

    -- Joins the family_members table with the parent_child_relationships table based on parent_id
    FROM family_members
    JOIN parent_child_relationships 
        ON family_members.member_id = parent_child_relationships.parent_id 

    -- Groups the results by each parent to count the number of children per parent
    GROUP BY family_members.member_id )

-- Selects the name and children count from the Rank_Them CTE
SELECT name, children_count  
FROM Rank_Them
ORDER BY Rank ASC  -- Orders the results by Rank in ascending order to get the parents with the most children at the top
LIMIT 3; -- Limits the output to only the top 3 parents with the most children
