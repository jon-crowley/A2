INSERT INTO `Relational_Model_Assignment`.`persons` (`id`, `firstName`, `lastName`, `dob`, `email`, `username`, `password`) VALUES ('12', 'Alice', 'Wonder', '1900-12-10 00:00:00', 'alice@wonder.com', 'alice', 'alice');
INSERT INTO `Relational_Model_Assignment`.`persons` (`id`, `firstName`, `lastName`, `dob`, `email`, `username`, `password`) VALUES ('23', 'Bob', 'Marley', '1900-11-10 00:00:00', 'bob@marley.com', 'bob', 'bob');
INSERT INTO `Relational_Model_Assignment`.`persons` (`id`, `firstName`, `lastName`, `dob`, `email`, `username`, `password`) VALUES ('34', 'Charlie', 'Garcia', '1900-9-10 00:00:00', 'chuch@garcia.com', 'charlie', 'charlie');
INSERT INTO `Relational_Model_Assignment`.`persons` (`id`, `firstName`, `lastName`, `dob`, `email`, `username`, `password`) VALUES ('45', 'Dan', 'Martin', '1900-6-10 00:00:00', 'dan@martin.com', 'dan', 'dan');
INSERT INTO `Relational_Model_Assignment`.`persons` (`id`, `firstName`, `lastName`, `dob`, `email`, `username`, `password`) VALUES ('56', 'Ed', 'Karaz', '1900-5-10 00:00:00', 'ed@kar.com', 'ed', 'ed');

INSERT INTO `Relational_Model_Assignment`.`developers` (`id`, `developerKey`) VALUES ('12', '4321rewq');
INSERT INTO `Relational_Model_Assignment`.`developers` (`id`, `developerKey`) VALUES ('23', '5432trew');
INSERT INTO `Relational_Model_Assignment`.`developers` (`id`, `developerKey`) VALUES ('34', '6543ytre');

INSERT INTO `Relational_Model_Assignment`.`users` (`id`, `userAgreement`) VALUES ('45', '1');
INSERT INTO `Relational_Model_Assignment`.`users` (`id`, `userAgreement`) VALUES ('56', '0');

INSERT INTO `Relational_Model_Assignment`.`websites` (`id`, `name`, `developer_id`, `description`, `visits`) VALUES ('123', 'Facebook', '12', 'an online social media and social networking service', '1234234');
INSERT INTO `Relational_Model_Assignment`.`websites` (`id`, `name`, `developer_id`, `description`, `visits`) VALUES ('234', 'Twitter', '23', 'an online news and social networking service', '4321543');
INSERT INTO `Relational_Model_Assignment`.`websites` (`id`, `name`, `developer_id`, `description`, `visits`) VALUES ('345', 'Wikipedia', '34', 'a free online encyclopedia', '3456654');
INSERT INTO `Relational_Model_Assignment`.`websites` (`id`, `name`, `developer_id`, `description`, `visits`) VALUES ('456', 'CNN', '12', 'an American basic cable and satellite television news channel', '6543345');
INSERT INTO `Relational_Model_Assignment`.`websites` (`id`, `name`, `developer_id`, `description`, `visits`) VALUES ('567', 'CNET', '23', 'an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics', '5433455');
INSERT INTO `Relational_Model_Assignment`.`websites` (`id`, `name`, `developer_id`, `description`, `visits`) VALUES ('678', 'Gizmodo', '34', 'a design, technology, science and science fiction website that also writes articles on politics', '4322345');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '123', '12');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '123', '23');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '123', '34');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '234', '23');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '234', '34');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '234', '12');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '345', '34');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '345', '12');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '345', '23');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '456', '12');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '456', '23');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '456', '34');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '567', '23');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '567', '34');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '567', '12');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('owner', '678', '34');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('editor', '678', '12');
INSERT INTO `Relational_Model_Assignment`.`website_roles` (`role`, `website_id`, `developer_id`) VALUES ('admin', '678', '23');

INSERT INTO `Relational_Model_Assignment`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('123', 'Home', 'Landing page', '123434', '567');
INSERT INTO `Relational_Model_Assignment`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('234', 'About', 'Website description', '234545', '678');
INSERT INTO `Relational_Model_Assignment`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('345', 'Contact', 'Addresses, phones, and contact info', '345656', '345');
INSERT INTO `Relational_Model_Assignment`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('456', 'Preferences', 'Where users can configure their preferences', '456776', '456');
INSERT INTO `Relational_Model_Assignment`.`pages` (`id`, `title`, `description`, `views`, `website_id`) VALUES ('567', 'Profile', 'Users can configure their personal information', '567878', '567');

INSERT INTO `Relational_Model_Assignment`.`widgets` (`id`, `dtype`, `name`, `text`, `order`, `page_id`) VALUES ('123', 'heading', 'head123', 'Welcome', '0', '123');
INSERT INTO `Relational_Model_Assignment`.`widgets` (`id`, `dtype`, `name`, `text`, `order`, `page_id`) VALUES ('234', 'html', 'post234', '<p>Lorem</p>', '0', '234');
INSERT INTO `Relational_Model_Assignment`.`widgets` (`id`, `dtype`, `name`, `text`, `order`, `page_id`) VALUES ('345', 'heading', 'head345', 'Hi', '1', '345');
INSERT INTO `Relational_Model_Assignment`.`widgets` (`id`, `dtype`, `name`, `text`, `order`, `page_id`) VALUES ('456', 'html', 'intro456', '<h1>Hi</h1>', '2', '345');
INSERT INTO `Relational_Model_Assignment`.`widgets` (`id`, `dtype`, `name`, `width`, `order`, `url`, `page_id`) VALUES ('567', 'image', 'image345', '50', '3', '/img/567.png', '345');
INSERT INTO `Relational_Model_Assignment`.`widgets` (`id`, `dtype`, `name`, `width`, `order`, `url`, `page_id`) VALUES ('678', 'yooutube', 'video456', '400', '0', 'https://youtu.be/h67VX51QXiQ', '456');
UPDATE `Relational_Model_Assignment`.`widgets` SET `height` = '100' WHERE (`id` = '567');
UPDATE `Relational_Model_Assignment`.`widgets` SET `height` = '300' WHERE (`id` = '678');

INSERT INTO `Relational_Model_Assignment`.`phones` (`phone`, `primary`, `person_id`) VALUES ('1232343456', '1', '12');
INSERT INTO `Relational_Model_Assignment`.`phones` (`phone`, `primary`, `person_id`) VALUES ('2343454566', '0', '12');
INSERT INTO `Relational_Model_Assignment`.`phones` (`phone`, `primary`, `person_id`) VALUES ('3454565677', '1', '23');
INSERT INTO `Relational_Model_Assignment`.`phones` (`phone`, `primary`, `person_id`) VALUES ('3214325435', '1', '34');
INSERT INTO `Relational_Model_Assignment`.`phones` (`phone`, `primary`, `person_id`) VALUES ('4324325433', '0', '34');
INSERT INTO `Relational_Model_Assignment`.`phones` (`phone`, `primary`, `person_id`) VALUES ('5435436544', '0', '34');
