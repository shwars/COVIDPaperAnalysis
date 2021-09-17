SELECT DISTINCT e.text, e.isNegated, p.title, p.publish_time,
  ARRAY (SELECT VALUE l.id FROM l IN e.links WHERE l.dataSource='UMLS')[0] AS umls_id
FROM papers p
JOIN e IN p.entities
WHERE e.category = 'MedicationName'