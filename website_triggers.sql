CREATE DEFINER = CURRENT_USER TRIGGER `Relational_Model_Assignment`.`website_roles_AFTER_INSERT` AFTER INSERT ON `website_roles` FOR EACH ROW
BEGIN
IF NEW.role = 'admin' OR NEW.role = 'owner' THEN
	INSERT INTO website_priviledges VALUES (null, 'create', NEW.website_id, New.developer_id);
    INSERT INTO website_priviledges VALUES (null, 'update', NEW.website_id, New.developer_id);
    INSERT INTO website_priviledges VALUES (null, 'delete', NEW.website_id, New.developer_id);
    INSERT INTO website_priviledges VALUES (null, 'read', NEW.website_id, New.developer_id);
END IF;
IF NEW.role = 'writer' THEN
	INSERT INTO website_priviledges VALUES (null, 'create', NEW.website_id, New.developer_id);
    INSERT INTO website_priviledges VALUES (null, 'update', NEW.website_id, New.developer_id);
    INSERT INTO website_priviledges VALUES (null, 'read', NEW.website_id, New.developer_id);
END IF;
IF NEW.role = 'editor' THEN
    INSERT INTO website_priviledges VALUES (null, 'update', NEW.website_id, New.developer_id);
    INSERT INTO website_priviledges VALUES (null, 'read', NEW.website_id, New.developer_id);
END IF;
IF NEW.role = 'reviewer' THEN
    INSERT INTO website_priviledges VALUES (null, 'read', NEW.website_id, New.developer_id);
END IF;
END
