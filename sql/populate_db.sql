INSERT INTO worker 
	(name, birthday, level, salary) 
VALUES 
	('Adams', '1980-05-03', 'Trainee', 550),
	('Baker', '1999-01-25', 'Trainee', 600),
	('Clark', '2005-11-06', 'Trainee', 600),
	('Davis', '1979-08-06', 'Trainee', 612),
	('Evans', '2005-11-06', 'Junior', 1200),
	('Frank', '2002-01-15', 'Trainee', 400),
	('Ghosh', '1982-05-16', 'Middle', 2500),
	('Hills', '1992-03-24', 'Middle', 2500),
	('Irwin', '1990-08-11', 'Senior', 7200),
	('Jones', '2000-01-28', 'Senior', 7200)
;


INSERT INTO client 
	(name)  
VALUES 
	('Sneezy'), ('Sleepy'), ('Dopey'), ('Doc'), ('Bashful')
;

INSERT INTO project
	(client_id, start_date, finish_date)
VALUES
	(SELECT id FROM client WHERE name = 'Sneezy', '2022-01-01', '2022-05-21'),
	(SELECT id FROM client WHERE name = 'Sleepy', '2022-05-10', '2023-12-31'),
	(SELECT id FROM client WHERE name = 'Sleepy', '2022-01-01', '2022-12-31'),
	(SELECT id FROM client WHERE name = 'Dopey', '2019-05-16', '2025-01-01'),
	(SELECT id FROM client WHERE name = 'Dopey', '2022-10-03', '2023-10-01'),
	(SELECT id FROM client WHERE name = 'Doc', '2019-05-16', '2025-01-01'),
	(SELECT id FROM client WHERE name = 'Doc', '2025-01-02', '2025-12-31'),
	(SELECT id FROM client WHERE name = 'Doc', '2026-01-01', '2026-03-01'),
	(SELECT id FROM client WHERE name = 'Bashful', '2020-12-01', '2021-12-31'),
	(SELECT id FROM client WHERE name = 'Bashful', '2021-04-11', '2022-06-11'),
	(SELECT id FROM client WHERE name = 'Bashful', '2021-04-01', '2022-06-30')
;


SET @MaxWorkerCount = 5;
SET @MinWorkerCount = 1;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 0) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 1) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 2) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 3) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 4) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 5) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 6) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 7) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 8) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;

INSERT INTO project_worker
	SELECT (SELECT id FROM project LIMIT 1 OFFSET 9) as p_id, id FROM worker ORDER BY RAND() LIMIT (select RAND()*(@MaxWorkerCount- @MinWorkerCount)+@MinWorkerCount)
;
