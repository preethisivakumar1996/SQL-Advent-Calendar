SELECT name, birthday 
FROM family_members
WHERE strftime('%m',birthday) = '12' AND strftime('%Y',birthday) = '2024';
