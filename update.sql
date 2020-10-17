UPDATE `Relational_Model_Assignment`.`phones`

SET
`phone` = 3334445555
WHERE phones.primary = 1 and phones.person_id = (select persons.id from persons where persons.firstname = 'Charlie');

UPDATE `Relational_Model_Assignment`.`widgets`
SET
`order` = 3
WHERE widgets.name = 'head345';

UPDATE `Relational_Model_Assignment`.`widgets`
SET
`order` = 3
WHERE widgets.name = 'image345';

UPDATE `Relational_Model_Assignment`.`pages`
SET
`title` = concat('CNET', pages.title)
WHERE pages.id = (select pages.id from pages, (select websites.id from websites where websites.name = 'CNET') w where pages.website_id = w.id);

UPDATE `Relational_Model_Assignment`.`page_roles`
SET
`page_role` = (select page_roles.page_role from page_roles, (select persons.id from persons where person.firsname = 'Charlie') p where page_roles.developer_id = p.id)
WHERE page_roles.developer_id = (select persons.id from persons where person.firsname = 'Bob');
UPDATE `Relational_Model_Assignment`.`page_roles`
SET
`page_role` = (select page_roles.page_role from page_roles, (select persons.id from persons where person.firsname = 'Bob') p where page_roles.developer_id = p.id)
WHERE page_roles.developer_id = (select persons.id from persons where person.firsname = 'Charlie');





