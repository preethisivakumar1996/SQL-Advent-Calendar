-- You are preparing holiday gifts for your family. 
-- Who in the family_members table are celebrating their birthdays in December 2024? 
-- List their name and birthday.

SELECT name, birthday 
FROM family_members
WHERE strftime('%m',birthday) = '12' AND strftime('%Y',birthday) = '2024';
