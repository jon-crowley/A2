CREATE DEFINER = CURRENT_USER TRIGGER `Relational_Model_Assignment`.`page_roles_AFTER_INSERT` AFTER INSERT ON `page_roles` FOR EACH ROW
BEGIN
IF NEW.role = 'admin' OR NEW.role = 'owner' THEN
	INSERT INTO page_priviledges VALUES (null, 'create', NEW.page_id, New.developer_id);
    INSERT INTO page_priviledges VALUES (null, 'update', NEW.page_id, New.developer_id);
    INSERT INTO page_priviledges VALUES (null, 'delete', NEW.page_id, New.developer_id);
    INSERT INTO page_priviledges VALUES (null, 'read', NEW.page_id, New.developer_id);
END IF;
IF NEW.role = 'writer' THEN
	INSERT INTO page_priviledges VALUES (null, 'create', NEW.page_id, New.developer_id);
    INSERT INTO page_priviledges VALUES (null, 'update', page_id, New.developer_id);
    INSERT INTO page_priviledges VALUES (null, 'read', NEW.page_id, New.developer_id);
END IF;
IF NEW.role = 'editor' THEN
    INSERT INTO page_priviledges VALUES (null, 'update', NEW.page_id, New.developer_id);
    INSERT INTO page_priviledges VALUES (null, 'read', NEW.page_id, New.developer_id);
END IF;
IF NEW.role = 'reviewer' THEN
    INSERT INTO page_priviledges VALUES (null, 'read', NEW.page_id, New.developer_id);
END IF;
END
