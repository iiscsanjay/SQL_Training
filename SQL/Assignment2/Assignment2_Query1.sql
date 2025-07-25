use ap;

SELECT CONCAT(vendor_contact_last_name,", ", vendor_contact_first_name)  AS "full_name" 
FROM vendors
WHERE LEFT(vendor_contact_last_name,1) = 'A' or 
	  LEFT(vendor_contact_last_name,1) = 'B' or 
      LEFT(vendor_contact_last_name,1) = 'C' or 
      LEFT(vendor_contact_last_name,1) = 'E'
ORDER BY vendor_contact_last_name, vendor_contact_first_name;


SELECT CONCAT(vendor_contact_last_name,", ", vendor_contact_first_name)  AS "full_name" 
FROM vendors
WHERE SUBSTRING(vendor_contact_last_name,1,1) = 'A' or 
	  SUBSTRING(vendor_contact_last_name,1,1) = 'B' or 
      SUBSTRING(vendor_contact_last_name,1,1) = 'C' or 
      SUBSTRING(vendor_contact_last_name,1,1) = 'E'
ORDER BY vendor_contact_last_name, vendor_contact_first_name;


SELECT CONCAT(vendor_contact_last_name,", ", vendor_contact_first_name)  AS "full_name" 
FROM vendors
WHERE LEFT(vendor_contact_last_name,1) IN ('A','B','C','E') 
ORDER BY vendor_contact_last_name, vendor_contact_first_name;


SELECT CONCAT(vendor_contact_last_name,", ", vendor_contact_first_name)  AS "full_name" 
FROM vendors
WHERE SUBSTRING(vendor_contact_last_name,1,1) IN ('A','B','C','E') 
ORDER BY vendor_contact_last_name, vendor_contact_first_name;


SELECT  CONCAT( vendor_contact_last_name, ",", " ", vendor_contact_first_name  ) AS full_name 
FROM vendors
WHERE vendor_contact_last_name like 'A%' or vendor_contact_last_name like 'B%' 
or vendor_contact_last_name like 'C%' or vendor_contact_last_name like 'E%'
ORDER BY vendor_contact_last_name asc,vendor_contact_first_name asc;

