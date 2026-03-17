# no primary key, may have duplicate rows
# author_id and viewer_id: same person
# find authors that viewed >= their own articles

SELECT 
    DISTINCT(author_id) AS id
FROM 
    Views
WHERE 
    author_id = viewer_id
ORDER BY 
    id 