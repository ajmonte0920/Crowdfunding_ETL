-- First Query

SELECT
	campaign.outcome,
	category.category
FROM
	campaign
INNER JOIN
	category ON (category.category_id=campaign.category_id);


-- Second Query

SELECT
	backers_count,
	pledged,
	currency
FROM
	campaign
WHERE currency='USD';


-- Third Query

SELECT
	campaign.outcome,
	category.category,
	campaign.goal,
	campaign.currency
FROM
	campaign
LEFT JOIN
	category ON category.category_id = campaign.category_id
WHERE
	campaign.currency = 'USD'
	AND category.category IN ('theater', 'film & video', 'music', 'technology')
	AND campaign.outcome IN ('successful', 'failed');


-- Fourth Query

SELECT
	contacts.email,
	campaign.outcome
FROM
	campaign
INNER JOIN
	contacts ON contacts.contact_id=campaign.contact_id;

