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
