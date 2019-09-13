# SQL task

1.  get all statuses, not repeating, alphabetically ordered

SELECT DISTINCT status FROM tasks ORDER BY status

2.  get the count of all tasks in each project, order by tasks count descending

SELECT projects.id, COUNT(tasks) AS task_count FROM tasks RIGHT JOIN projects ON tasks.project_id = projects.id
GROUP BY projects.id ORDER BY task_count DESC

3.  get the count of all tasks in each project, order by projects names

SELECT projects.name, COUNT(tasks) AS task_count FROM tasks RIGHT JOIN projects ON task.project_id=projects.id
GROUP BY projects.id ORDER BY task_count

4. get the tasks for all projects having the name beginning with “N” letter

SELECT projects.name, task.name FROM tasks INNER JOIN rpojects ON tasks.project_id=projects.id WHERE tasks.name LIKE 'N%'

5. get the list of project names having more than 10 tasks in status ‘completed’. Order by 
project_id

SELECt  projects.name FROM tasks RIGTH JOIN projects ON tasks.projects_id = projects.id WHERE tasks.status = 'completed'
GROUP BY projects.id HAVING COUNT(tasks)>10 ORDER BY projects.id
