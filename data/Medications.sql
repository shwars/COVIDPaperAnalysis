SELECT DISTINCT e.text, ARRAY (SELECT VALUE l.id FROM l IN e.links WHERE l.dataSource='UMLS')[0] AS umls_id
FROM papers p JOIN e in p.entities
WHERE e.category = 'MedicationName'
