CREATE VIEW `deleveloper_roles_and_privileges` AS
select d.firstName, d.lastName, d.username, d.email, w.name, w.visits, w.updated, wr.role, wp.priviledge, p.title, p.views, p.last_updated, pr.page_role, pp.page_priviledge
from persons d, websites w, website_roles wr, website_priviledges wp, pages p, page_roles pr, page_priviledges pp
where d.id = wr.developer_id and w.id = wr.website_id and d.id = wp.developer_id and w.id = wp.website_id and d.id = pr.developer_id and p.id = pr.page_id and d.id = pp.developer_id and p.id = pp.page_id;