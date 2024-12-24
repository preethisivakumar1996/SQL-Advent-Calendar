-- A family reunion is being planned, and the organizer wants to identify the three family members with the most children. 
-- Write a query to calculate the total number of children for each parent and rank them. 
-- Include the parent’s name and their total number of children in the result.

WITH Rank_Them AS (
    Select family_members.name,
    parent_child_relationships.parent_id, 
    COUNT(parent_child_relationships.child_id) AS children_count, 
RANK() OVER(ORDER BY COUNT(parent_child_relationships.child_id) DESC) AS Rank
FROM family_members
JOIN parent_child_relationships ON family_members.member_id = parent_child_relationships.parent_id
GROUP BY family_members.member_id)

Select name, children_count
FROM Rank_Them
ORDER by Rank DESC
limit 3;
