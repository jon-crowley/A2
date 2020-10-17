DELETE FROM `Relational_Model_Assignment`.`addresses`
WHERE addresses.person_id = (select persons.id from persons where persons.firstname = 'Alice') and addresses.primary = 1 ;

DELETE FROM `Relational_Model_Assignment`.`widgets`
WHERE widgets.page_id = (select pages.id from pages where pages.title = 'Contact') and widgets.order = (select max(widgets.order) from widgets,(select pages.id from pages where pages.title = 'Contact') p where widgets.page_id = p.id) ;

DELETE FROM `Relational_Model_Assignment`.`widgets`
WHERE widgets.page_id = (select pages.id from pages where pages.website_id = (select websites.id from websites where websites.name = 'CNET'));

DELETE FROM `Relational_Model_Assignment`.`pages`
WHERE pages.id = (select pages.id from pages where(select max(pages.id) from pages, (select websites.id from websites where websites.name = 'Wikipedia') w where pages.website_id = w.id));

DELETE FROM `Relational_Model_Assignment`.`website_roles`
WHERE website_roles.website_id = (select websites.id from websites where websites.name = 'CNET');

DELETE FROM `Relational_Model_Assignment`.`page_roles`
WHERE page_roles.website_id = (select websites.id from websites where websites.name = 'CNET');


DELETE FROM `Relational_Model_Assignment`.`pages`

WHERE pages.website_id = (select websites.id from websites where websites.name = 'CNET');

DELETE FROM `Relational_Model_Assignment`.`websites`
WHERE websites.id = (select websites.id from websites where websites.name = 'CNET') ;

