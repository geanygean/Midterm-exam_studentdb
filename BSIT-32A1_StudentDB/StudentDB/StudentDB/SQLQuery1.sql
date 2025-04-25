SELECT 
    s.FirstName + ' ' + s.LastName AS FullName,
    sec.Name AS SectionName,
    subj.Description AS SubjectDescription
FROM 
    StudentSections ss
INNER JOIN 
    Students s ON ss.StudentID = s.ID
INNER JOIN 
    Sections sec ON ss.SectionID = sec.ID
INNER JOIN 
    Subjects subj ON sec.SubjectID = subj.ID;
